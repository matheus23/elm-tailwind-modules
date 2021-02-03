import { toElmName, fixClass } from "./helpers";
import * as CssWhat from "css-what";
import deepEqual from "deep-equal";
import * as postcss from "postcss";
import {
    CssProperty,
    DebugFunction,
    GroupedDeclarations,
    isBasicSubselectorType,
    isPseudoElementSelector,
    isPseudoSelector,
    Keyframe,
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

export function groupDeclarationBlocksByClass(postCssRoot: postcss.Root, debugFunction: DebugFunction): GroupedDeclarations {
    const recognized = new Map();
    const unrecognized: UnrecognizedDeclaration[] = [];
    const keyframes = new Map();

    const defaultRecognized = (): RecognizedDeclaration => ({
        propertiesBySelector: [],
    });

    postCssRoot.each(child => {

        switch (child.type) {

            case "comment":
                // We don't care about comments
                return;


            case "decl":
                debugFunction("Encountered declaration immediately below the postcss root. This shouldn't happen. Ignoring " + child.toString());
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
                                debugFunction(e.message);
                                return;
                            }
                            throw e;
                        }
                    });

                    keyframes.set(animationName, keyframeFrames);
                    return;
                }

                if (child.name.endsWith("keyframes")) {
                    // We already cover cases like @-webkit-keyframes with the code above.
                    return;
                }

                debugFunction("Encountered unknown @-rule: " + child.name);
                return;


            case "rule":
                handleRule(null, child);
                return;

        }
    });

    function handleRule(mediaQuery: string, rule: postcss.Rule): void {

        // parse the selector

        let selector: CssWhat.Selector[][];
        try {
            selector = CssWhat.parse(rule.selector);
        } catch (e) {
            if (cssWhatErrors.some(msg => e.message.startsWith(msg))) {
                const debug = (message: string) => debugFunction("Something went wrong with a selector that couldn't be parsed\n" + message);
                handleUnrecognized(unrecognized, rule, mediaQuery, debug);
                return;
            }
            throw e;
        }


        // make sure all selector parts start with the same class

        const parts = selector.map(stripClassSelector);
        const partClasses = parts.map(part => part.class);

        const allEqual = <A>(arr: A[]): boolean => arr.every(v => v === arr[0])

        if (partClasses.some(className => className == null) || !allEqual(partClasses)) {
            const debug = (message: string) => debugFunction("Something went wrong with a rule with unrelated selectors\n" + message);
            handleUnrecognized(unrecognized, rule, mediaQuery, debug);
            return;
        }

        const className = parts[0].class;
        // create a valid elm identifier from the classname
        const elmDeclName = toElmName(fixClass(className));



        // collect all properties defined in this rule

        const properties = collectProperties(rule);


        // find out what subselector this affects
        let subselectors: Subselector[];
        try {
            subselectors = parts.map(part => ({
                mediaQuery: mediaQuery,
                rest: recognizeSelectorRest(part.rest),
            }));
        } catch (e) {
            if (e.message.startsWith("Unsupported type")) {
                const debug = (message: string) => debugFunction("Something went wrong with an unsupported subselector type\n" + message);
                handleUnrecognized(unrecognized, rule, mediaQuery, debug);
                return;
            }
            throw e;
        }


        // concat properties to possibly existing property lists
        const item = recognized.get(elmDeclName) || defaultRecognized();
        recognized.set(elmDeclName, {
            propertiesBySelector: addToSelectorList(
                item.propertiesBySelector,
                subselectors,
                properties,
            ),
        });
    }

    return { recognized, unrecognized, keyframes };
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

function handleUnrecognized(
    unrecognized: UnrecognizedDeclaration[],
    rule: postcss.Rule,
    mediaQuery: string | null,
    debugFunction: DebugFunction
): void {
    unrecognized.push({
        selector: rule.selector,
        properties: collectProperties(rule),
        mediaQuery: mediaQuery,
    });
}
