import { toElmName, fixClass } from "./helpers";
import * as CssWhat from "css-what";
import deepEqual from "deep-equal";
import * as postcss from "postcss";
import {
    CssProperty,
    LogFunction,
    GroupedDeclarations,
    isBasicSubselectorType,
    isPseudoElementSelector,
    isPseudoSelector,
    Keyframe,
    NamingOptions,
    PropertiesBySelector,
    RecognizedDeclaration,
    Subselector,
    SubselectorRest,
    UnrecognizedDeclaration
} from "./types";


const cssWhatErrors = [
    "Unmatched selector: ",
    "Expected name, found ",
    "Empty sub-selector",
    "Malformed attribute selector: ",
    "Unmatched quotes in :",
    "Missing closing parenthesis in :",
    "Parenthesis not matched",
    "Empty sub-selector",
]

export function groupDeclarationBlocksByClass(
    postCssRoot: postcss.Root,
    resolvedColors: [string, string][],
    logFunction: LogFunction,
    namingOptions: NamingOptions,
): GroupedDeclarations {
    const recognized = new Map();
    const colorParameterized = new Map();
    const unrecognized: UnrecognizedDeclaration[] = [];
    const keyframes = new Map();

    const defaultRecognized = (originalClassName: string): RecognizedDeclaration => ({
        propertiesBySelector: [],
        originalRules: [],
        originalClassName,
    });

    postCssRoot.each(child => {

        switch (child.type) {

            case "comment":
                // We don't care about comments
                return;


            case "decl":
                logFunction("Encountered declaration immediately below the postcss root. This shouldn't happen. Ignoring " + child.toString());
                return;


            case "atrule":
                if (child.name === "media") {
                    const mediaQuery = child.params;
                    child.walkRules(rule => handleRule(mediaQuery, rule));
                    return;
                }

                if (child.name === "keyframes") {
                    const animationName = child.params;
                    let keyframeFrames: Keyframe[] = [];

                    child.walkRules(rule => {
                        try {
                            keyframeFrames.push({
                                percentage: parseKeyframePercentage(rule.selector),
                                properties: collectProperties(rule),
                            })
                        } catch (e) {
                            if (e.message.startsWith("Couldn't parse")) {
                                logFunction(e.message);
                                return;
                            }
                            throw e;
                        }
                    });

                    keyframes.set(animationName, keyframeFrames);
                    // We don't need the keyframe to be there in the global styles anymore, it will automatically get inserted by elm-css
                    child.remove();
                    return;
                }

                if (child.name.endsWith("keyframes")) {
                    // We already cover cases like @-webkit-keyframes with the code above.
                    return;
                }

                logFunction("Encountered unknown @-rule: " + child.name);
                return;


            case "rule":
                handleRule(null, child);
                return;

        }
    });

    function handleRule(mediaQuery: string | null, rule: postcss.Rule): void {

        // parse the selectors

        let selectors: CssWhat.Selector[][];
        try {
            selectors = CssWhat.parse(rule.selector);
        } catch (e) {
            if (cssWhatErrors.some(msg => e.message.startsWith(msg))) {
                unrecognized.push({
                    selector: rule.selector,
                    properties: collectProperties(rule),
                    mediaQuery: mediaQuery,
                });
                return;
            }
            throw e;
        }

        // Ensure we understand all individual selectors
        // If not, we'll try to put them into globalStyles

        const parts = selectors.map(stripClassSelector);
        try {
            parts.forEach(part => {
                if (part.class == null) {
                    throw "Has unrecognized";
                }
            });
        } catch (e) {
            if (e === "Has unrecognized") {
                unrecognized.push({
                    selector: rule.selector,
                    properties: collectProperties(rule),
                    mediaQuery: mediaQuery,
                });
                return;
            }
            throw e;
        }

        // Ensure we support all the subselector types

        let subselectors: Subselector[];
        try {
            subselectors = parts.map(part => ({
                mediaQuery,
                rest: recognizeSelectorRest(part.rest),
            }))
        } catch (e) {
            if (e.message.startsWith("Unsupported type")) {
                unrecognized.push({
                    selector: rule.selector,
                    properties: collectProperties(rule),
                    mediaQuery: mediaQuery,
                });
                return;
            }
            throw e;
        }

        parts.forEach((part, index) => {
            // create a valid elm identifier from the classname
            const elmDeclName = toElmName(fixClass(part.class), namingOptions);

            const subselector = subselectors[index];

            // concat properties to possibly existing property lists
            const item = recognized.get(elmDeclName) || defaultRecognized(part.class);
            recognized.set(elmDeclName, {
                propertiesBySelector: addToSelectorList(
                    item.propertiesBySelector,
                    [subselector],
                    collectProperties(rule),
                ),
                originalRules: [
                    ...item.originalRules,
                    mediaQuery == null ? rule : rule.parent,
                ],
                originalClassName: part.class,
            });
        });

        // We can now remove the rule. It's included in the elm code.
        // The css generated by postcss will only include whatever can't be expressed in
        // elm in a better way (e.g. global styles or global styles which aren't supported
        // in elm-css, yet; for example @font-face rules).
        rule.remove();
    }

    for (const [elmDeclName, declaration] of recognized) {
        const parameterizedName = isParameterizable(elmDeclName, resolvedColors);

        if (parameterizedName === false) {
            continue;
        }

        recognized.delete(elmDeclName);

        if (parameterizedName === null) {
            continue;
        }

        colorParameterized.set(parameterizedName, declaration);
    }

    return { recognized, colorParameterized, unrecognized, keyframes };
}

function addToSelectorList(
    propertiesBySelector: PropertiesBySelector[],
    subselectors: Subselector[],
    properties: CssProperty[],
): PropertiesBySelector[] {
    let result = Array.from(propertiesBySelector);

    const index = result.findIndex(elem => deepEqual(elem.subselectors, subselectors));

    if (index >= 0) {
        result[index] = {
            subselectors: subselectors,
            properties: result[index].properties.concat(properties),
        };
        return result;
    }

    result.push({
        subselectors,
        properties,
    });

    return result;
}

type SupportedPseudo = CssWhat.PseudoSelector | CssWhat.PseudoElement;

function everyPartIsSupportedPseudo(selector: CssWhat.Selector[]): selector is SupportedPseudo[] {
    return selector.every(part => isPseudoSelector(part) || isPseudoElementSelector(part));
}

function recognizeSelectorRest(selector: CssWhat.Selector[]): SubselectorRest {
    if (selector.length === 0) {
        return { type: "plain" };
    }

    const type = selector[0].type;
    const rest = CssWhat.stringify([selector.slice(1)]);

    if (isBasicSubselectorType(type)) {
        return { type, rest };
    }

    if (everyPartIsSupportedPseudo(selector)) {
        return {
            type: "pseudo",
            rest: selector.map(
                part => ({ type: part.type, name: part.name })
            )
        };
    }

    throw new Error(`Unsupported type: ${type}`);
}

function collectProperties(rule: postcss.Rule): CssProperty[] {
    let properties: CssProperty[] = [];
    rule.walkDecls(declaration => {
        properties.push({
            prop: declaration.prop,
            value: declaration.value,
        });
    });
    return properties;
}

function parseKeyframePercentage(selector: string): number {
    const trimmed = selector.trim();
    if (trimmed === "from") {
        return 0;
    }
    if (trimmed === "to") {
        return 100;
    }
    if (trimmed.endsWith("%")) {
        const numberPart = trimmed.substring(0, trimmed.length - 1);
        try {
            return parseInt(numberPart);
        } catch (e) {
            throw "Couldn't parse keyframe percentage: " + numberPart;
        }
    }
    throw "Couldn't parse keyframe percentage indicator: " + selector;
}

function stripClassSelector(
    selectorPart: CssWhat.Selector[]
): {
    class: string;
    rest: CssWhat.Selector[];
} {
    if (selectorPart.length === 0) {
        return { class: null, rest: [] };
    }

    const first = selectorPart[0];
    const rest = selectorPart.slice(1);

    if (!(first.type === "attribute" && first.name === "class")) {
        return { class: null, rest: selectorPart };
    }

    return {
        class: first.value,
        rest,
    };
}

function isParameterizable(declarationName: string, resolvedColors: [string, string][]): false | null | string {
    const possibleColorNames = resolvedColors.map(( [name, _] ) => name)
    const regex = new RegExp(String.raw`(.*)_(?:${possibleColorNames.join('|')}).*$`)

    const matches = declarationName.match(regex);

    if (!matches) {
        return false
    }

    // We don't want to parameterize the opacity-variants of declarations
    if (declarationName.includes("over")) {
        return null
    }

    return `${matches[1]}WithColor`;
}
