import { toElmName, fixClass } from "./helpers.js";
import CssWhat from "css-what";

export function groupDeclarationBlocksByClass(postCssRoot) {
    let rules = [];

    postCssRoot.walkRules(rule => {
        rules.push(rule);
    });

    const recognized = new Map();
    const unrecognized = [];

    const defaultRecognized = {
        properties: [],
        advancedSelector: undefined,
        mediaQueries: [],
    };

    rules.forEach(rule => {
        let selector;
        try {
            selector = CssWhat.parse(rule.selector);
        } catch (e) {
            unrecognized.push(rule);
            return;
        }

        const parts = selector.map(stripClassSelector);
        const partClasses = parts.map(part => part.class);

        const allEqual = arr => arr.every(v => v === arr[0])

        if (partClasses.some(className => className == null) || !allEqual(partClasses)) {
            unrecognized.push(rule);
            return;
        }

        const className = parts[0].class;
        const elmDeclName = toElmName(fixClass(className));

        const { properties, mediaQueries } = collectProperties(rule);

        const key = String(rule.selector);
        const advancedSelector = key.substring(key.indexOf(" ")).replace(key, "").trim() || undefined

        // Modify entry, if exists
        const itemBefore = recognized.get(elmDeclName) || defaultRecognized;
        recognized.set(elmDeclName, {
            properties: itemBefore.properties.concat(properties),
            advancedSelector,
            mediaQueries: itemBefore.mediaQueries.concat(mediaQueries),
        });
    });

    return { recognized, unrecognized };
}

function collectProperties(rule) {
    let properties = [];
    rule.walkDecls(declaration => {
        properties.push({
            prop: declaration.prop,
            value: declaration.value,
        });
    });

    if (rule.parent.type === "atrule") {
        // we've got a media query
        return {
            properties: [],
            mediaQueries: [{
                query: rule.parent.params,
                properties,
            }],
        };
    }

    return {
        properties,
        mediaQueries: [],
    };
}

function stripClassSelector(selectorPart) {
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
