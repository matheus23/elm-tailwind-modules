import { toElmName, fixClass, splitOn } from "./helpers.js";
import deepEqual from "deep-equal";
import * as parsel from "../parsel/parsel.js"

export function groupDeclarationBlocksByClass(postCssRoot) {
    let rules = [];

    postCssRoot.walkRules(rule => {
        rules.push(rule);
    });

    const recognized = new Map();
    const unrecognized = [];

    const defaultRecognized = () => ({
        propertiesBySelector: [],
    });

    rules.forEach(rule => {


        // parse the selector

        let selectorList;
        try {
            selectorList = splitOn(parsel.tokenize(rule.selector), token => token.type === "comma");
        } catch (e) {
            unrecognized.push(rule);
            return;
        }


        // make sure all selector parts start with the same class

        const parts = selectorList
            .filter(selector => selector.length > 0)
            .map(stripClassSelector);
        const partClasses = parts.map(part => part.class);

        const allEqual = arr => arr.every(v => v === arr[0])

        if (partClasses.some(className => className == null) || !allEqual(partClasses)) {
            unrecognized.push(rule);
            return;
        }

        const className = parts[0].class;
        // create a valid elm identifier from the classname
        const elmDeclName = toElmName(fixClass(className));



        // collect all properties defined in this rule

        const properties = collectProperties(rule);


        // find out what subselector this affects
        let subselectors;
        try {
            subselectors = parts.map(part => ({
                mediaQuery: recognizeMediaQuery(rule),
                rest: recognizeSelectorRest(rule.selector, part.rest),
            }));
        } catch (e) {
            unrecognized.push(rule);
            return;
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

function addToSelectorList(propertiesBySelector, subselectors, properties) {
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

function recognizeMediaQuery(rule) {
    if (rule.parent.type === "atrule") {
        return rule.parent.params;
    }
    return null;
}

function recognizeSelectorRest(selectorSrc, selector) {
    if (selector.length === 0) {
        return { type: "plain" };
    }

    if (selector[0].type !== "combinator") {
        throw new Error(`Unsupported selector combination`, selector);
    }

    const rest = toSource(selectorSrc, selector.slice(1));
    switch (selector[0].content) {
        case " ": return { type: "decendant", rest };
        case ">": return { type: "child", rest };
        case "+": return { type: "adjacent", rest };
        case "~": return { type: "sibling", rest };
    }

    throw new Error(`Unsupported type: ${type}`);
}

function collectProperties(rule) {
    let properties = [];
    rule.walkDecls(declaration => {
        properties.push({
            prop: declaration.prop,
            value: declaration.value,
        });
    });
    return properties;
}

function stripClassSelector(selectorPart) {
    const first = selectorPart[0];
    const rest = selectorPart.slice(1);

    if (first.type !== "class") {
        return { class: null, rest: selectorPart };
    }

    return {
        class: first.name,
        rest,
    };
}

function toSource(selectorSrc, selector) {
    if (selector.length === 0) {
        return "";
    }
    const first = selector[0];
    const last = selector[selector.length - 1];
    return selectorSrc.substring(first.pos[0], last.pos[1]);
}
