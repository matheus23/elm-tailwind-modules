// PUBLIC INTERFACE


export function generateElmModule(moduleName, blocksByClass) {
    return (
        elmHeaderCss(moduleName) +
        elmBody(blocksByClass)
    );
}



// PRIVATE INTERFACE


function elmHeaderCss(moduleName) {
    return `module ${moduleName} exposing (..)

import Css
import Css.Global
import Css.Media
`;
}

function elmBody(blocksByClass) {
    let body = "";
    for (let [elmClassName, propertiesBlock] of blocksByClass) {
        body = body + elmFunction(elmClassName, propertiesBlock);
    }
    return body;
}

function elmFunction(elmClassName, propertiesBlock) {
    return `

${elmClassName} : Css.Style
${elmClassName} =
${convertDeclarationBlock(propertiesBlock)(1)}
`;
}

function convertDeclaration(propertiesBlock) {
    return indentation => `Css.property ${elmString(propertiesBlock.prop)} ${elmString(propertiesBlock.value)}`;
}

function convertProperties({ type, rest }, convertedProperties) {
    if (type === "plain") {
        return convertedProperties;
    }

    if (type === "pseudo") {
        return convertPseudoProperties(rest, convertedProperties);
    }

    const subselectorFunction = subselectorFunctionFromType(type);
    const subselectorTransformed = elmFunctionCall(
        subselectorFunction,
        elmList([
            elmFunctionCall(
                `Css.Global.selector ${elmString(rest)}`,
                elmList(convertedProperties)
            )
        ])
    );
    return [subselectorTransformed];
}

function convertPseudoProperties(selectorList, convertedProperties) {
    if (selectorList.length === 0) {
        return convertedProperties;
    }

    const selector = selectorList[0];
    const functionName = pseudoselectorFunction(selector.type);

    return [
        elmFunctionCall(
            `${functionName} ${elmString(selector.name)}`,
            elmList(
                convertPseudoProperties(
                    selectorList.splice(1),
                    convertedProperties
                )
            )
        )
    ];
}

function convertMediaQueryWrap(mediaQuery, propertiesExpressions) {
    if (mediaQuery == null) {
        return propertiesExpressions;
    }

    return [
        elmFunctionCall(
            `Css.Media.withMediaQuery [ ${elmString(mediaQuery)} ]`,
            elmList(propertiesExpressions)
        )
    ]
}

function convertDeclarationBlock(propertiesBlock) {
    const plainProperties = findPlainProperties(propertiesBlock).map(convertDeclaration);
    const subselectors = propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.rest.type === "plain" && subselector.mediaQuery == null) {
                // We've got these covered in "plainProperties"
                return [];
            }

            return convertMediaQueryWrap(
                subselector.mediaQuery,
                convertProperties(
                    subselector.rest,
                    properties.map(convertDeclaration)
                )
            );
        })
    );

    if (plainProperties.length === 1 && subselectors.length === 0) {
        return indented(plainProperties[0]);
    }

    return indented(
        elmFunctionCall(
            `Css.batch`,
            elmList(plainProperties.concat(Array.from(subselectors).reverse()))
        )
    );
}

function findPlainProperties(propertiesBlock) {
    return propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.rest.type === "plain" && subselector.mediaQuery == null) {
                return properties;
            }
            return [];
        })
    );
}

function subselectorFunctionFromType(t) {
    switch (t) {
        case "child": return "Css.Global.children";
        case "descendant": return "Css.Global.descendants";
        case "adjacent": return "Css.Global.adjacentSiblings";
        case "sibling": return "Css.Global.generalSiblings";
        default: throw new Error("unrecognized subselector type " + t);
    }
}

function pseudoselectorFunction(t) {
    switch (t) {
        case "pseudo": return "Css.pseudoClass";
        case "pseudo-element": return "Css.pseudoElement";
        default: throw new Error("unrecognized pseudoselector type " + t);
    }
}

// ELM CODEGEN

function elmString(content) {
    return `"${content.replace(/\\/g, "\\\\").replace(/"/g, '\\"')}"`;
}

const elmFunctionCall = (firstLine, nextLine) => indentation => firstLine + "\n" + nextLine(indentation + 1)

const elmList = elements => indentation => {
    const indent = " ".repeat(Math.max(0, indentation * 4));
    if (elements.length === 0) {
        return indent + "[]";
    }
    let str = "";
    let idx = 0;
    elements.forEach(elem => {
        str += indent;
        str += idx === 0 ? "[ " : ", ";
        str += elem(indentation);
        str += "\n";
        idx++;
    });
    str += indent;
    str += "]";
    return str;
}

const indented = str => indentation => " ".repeat(Math.max(0, indentation * 4)) + str(indentation);
