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
    UnrecognizedDeclaration,
    ParameterizedDeclaration
} from "./types";
import * as color from "./color";


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
    const recognized: Map<string, RecognizedDeclaration> = new Map();
    const colorParameterized: Map<string, ParameterizedDeclaration> = new Map();
    const unrecognized: UnrecognizedDeclaration[] = [];
    const keyframes: Map<string, Keyframe[]> = new Map();

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
        const parameterizedDeclaration = isParameterizable(elmDeclName, declaration, resolvedColors);

        if (parameterizedDeclaration === false) {
            continue;
        }

        recognized.delete(elmDeclName);

        if (parameterizedDeclaration === null) {
            continue;
        }

        const [name, value] = parameterizedDeclaration;
        colorParameterized.set(name, value);
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

function isParameterizable(declarationName: string, declaration: RecognizedDeclaration, resolvedColors: [string, string][]): false | null | [string, ParameterizedDeclaration] {
    // If we don't sort by descending color name length, we have this edge-case:
    // e.g. blue_50 & blue_500 both appear in the regex.
    // bg_blue_500 matches with blue_50, but we want to match blue_500,
    // so we need the longest possible match
    const possibleColorNames = resolvedColors.map(([name, _]) => name).sort((a, b) => b.length - a.length);
    // TODO: Match different ways of capitalizing declaration names (see toElmName helper)
    const regex = new RegExp(String.raw`(.*)_(${possibleColorNames.join('|')}).*$`)

    const matches = declarationName.match(regex);

    if (!matches) {
        return false
    }

    // We don't want to parameterize the opacity-variants of declarations
    // TODO maybe detect this in a different way. (E.g. capture the regex part after the color name?)
    if (declarationName.includes("over")) {
        return null
    }

    const colorByName: Record<string, string> = resolvedColors.reduce((acc, [name, color]) => Object.assign(acc, { [name]: color }), {});

    const colorName = matches[2];
    const resolvedColor = colorByName[colorName];

    if (resolvedColor == null) {
        console.warn("Couldn't find a color with this name", colorName);
    }

    const parsedColor = color.parseColor(resolvedColor);
    const parsedColorRegex = parsedColor != null ? color.colorDetectionRegex(parsedColor) : null;

    let referencesColor = false;

    const parameterizedDeclaration = {
        ...declaration,
        propertiesBySelector: declaration.propertiesBySelector.map(selector => ({
            ...selector,
            properties: selector.properties.map(property => {
                referencesColor = true; // TODO: Actually match
                // Look for resolvedColor
                const matchResolved = property.value.match(resolvedColor)
                if (matchResolved) {
                    const matchStartIdx = matchResolved.index;
                    const matchEndIdx = matchResolved.index + matchResolved[0].length;
                    const valuePrefix = property.value.substring(0, matchStartIdx);
                    const valueSuffix = property.value.substring(matchEndIdx);
                    return {
                        prop: property.prop,
                        valuePrefix,
                        valueSuffix,
                    }
                }

                // Look for parsedColorRegex
                if (parsedColorRegex != null) {
                    const matchParsed = property.value.match(parsedColorRegex)
                    if (matchParsed) {
                        const matchStartIdx = matchParsed.index;
                        const matchEndIdx = matchParsed.index + matchParsed[0].length;
                        const valuePrefix = property.value.substring(0, matchStartIdx);
                        const valueSuffix = property.value.substring(matchEndIdx);
                        return {
                            prop: property.prop,
                            valuePrefix,
                            valueSuffix,
                            opacityVariableName: matchParsed?.groups?.varname
                        }
                    }
                }

                return property
            })
        }))
    };

    if (!referencesColor) {
        return false
    }

    // resolvedColor = "#881337"
    // parsedPrintedColor = "rgb(136 19 55)"

    /*

    .text-rose-900 {
        --tw-text-opacity: 1;
        color: rgb(136 19 55 / var(--tw-text-opacity))
    }

    */

    return [`${matches[1]}WithColor`, parameterizedDeclaration];
}
