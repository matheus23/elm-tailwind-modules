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

    const defaultRecognized = (): RecognizedDeclaration => ({
        propertiesBySelector: [],
    });

    postCssRoot.walkRules(rule => {


        // parse the selector

        let selector: CssWhat.Selector[][];
        try {
            selector = CssWhat.parse(rule.selector);
        } catch (e) {
            if (cssWhatErrors.some(msg => e.message.startsWith(msg))) {
                handleUnrecognized(unrecognized, rule, debugFunction);
                return;
            }
            throw e;
        }


        // make sure all selector parts start with the same class

        const parts = selector.map(stripClassSelector);
        const partClasses = parts.map(part => part.class);

        const allEqual = <A>(arr: A[]): boolean => arr.every(v => v === arr[0])

        if (partClasses.some(className => className == null) || !allEqual(partClasses)) {
            handleUnrecognized(unrecognized, rule, debugFunction);
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
                mediaQuery: recognizeMediaQuery(rule),
                rest: recognizeSelectorRest(part.rest),
            }));
        } catch (e) {
            if (e.message.startsWith("Unsupported type")) {
                handleUnrecognized(unrecognized, rule, debugFunction);
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
    });

    return { recognized, unrecognized };
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

function recognizeMediaQuery(rule: postcss.Rule): string | null {
    const parent = rule.parent;

    if (isAtRule(parent) && parent.name === "media") {
        return parent.params;
    }
    return null;
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

function handleUnrecognized(unrecognized: UnrecognizedDeclaration[], rule: postcss.Rule, debugFunction: DebugFunction): void {
    const parent = rule.parent;

    if (isAtRule(parent) && parent.name !== "media") {
        debugFunction("Couldn't make sense of this rule");
        debugFunction(rule.toString());
        return;
    }

    unrecognized.push({
        selector: rule.selector,
        properties: collectProperties(rule),
        mediaQuery: recognizeMediaQuery(rule),
    });
}

function isAtRule(rule: postcss.Container | postcss.AtRule): rule is postcss.AtRule {
    return rule.type === "atrule";
}
