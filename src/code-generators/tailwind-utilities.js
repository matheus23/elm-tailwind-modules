import * as generate from "./generate.js";

// PUBLIC INTERFACE


export function generateElmModule(moduleName, blocksByClass) {
    return (
        elmHeaderCss(moduleName) +
        elmUnrecognizedToFunctions(blocksByClass.unrecognized) +
        elmRecognizedToFunctions(blocksByClass.recognized)
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

function elmUnrecognizedToFunctions(unrecognizedBlocks) {
    return `

globalStyles : List Css.Global.Snippet
globalStyles =
${convertUnrecognizeds(unrecognizedBlocks)(1)}
`;
}

function convertUnrecognizeds(unrecognizeds) {
    return generate.elmList(
        unrecognizeds.flatMap(({ selector, properties, mediaQuery }) => {
            return convertMediaQueryWrap(mediaQuery, `Css.Global.mediaQuery`, [
                generate.elmFunctionCall(
                    `Css.Global.selector ${generate.elmString(selector)}`,
                    generate.elmList(properties.map(convertDeclaration))
                )
            ])
        })
    );
}

function elmRecognizedToFunctions(recognizedBlocksByClass) {
    let body = "";
    for (let [elmClassName, propertiesBlock] of recognizedBlocksByClass) {
        body = body + elmRecognizedFunction(elmClassName, propertiesBlock);
    }
    return body;
}

function elmRecognizedFunction(elmClassName, propertiesBlock) {
    return `

${elmClassName} : Css.Style
${elmClassName} =
${convertDeclarationBlock(propertiesBlock)(1)}
`;
}

function convertDeclaration(propertiesBlock) {
    return indentation => `Css.property ${generate.elmString(propertiesBlock.prop)} ${generate.elmString(propertiesBlock.value)}`;
}

function convertProperties({ type, rest }, convertedProperties) {
    if (type === "plain") {
        return convertedProperties;
    }

    if (type === "pseudo") {
        return convertPseudoProperties(rest, convertedProperties);
    }

    const subselectorFunction = subselectorFunctionFromType(type);
    const subselectorTransformed = generate.elmFunctionCall(
        subselectorFunction,
        generate.elmList([
            generate.elmFunctionCall(
                `Css.Global.selector ${generate.elmString(rest)}`,
                generate.elmList(convertedProperties)
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
        generate.elmFunctionCall(
            `${functionName} ${generate.elmString(selector.name)}`,
            generate.elmList(
                convertPseudoProperties(
                    selectorList.splice(1),
                    convertedProperties
                )
            )
        )
    ];
}

function convertMediaQueryWrap(mediaQuery, functionName, propertiesExpressions) {
    if (mediaQuery == null) {
        return propertiesExpressions;
    }

    return [
        generate.elmFunctionCall(
            `${functionName} [ ${generate.elmString(mediaQuery)} ]`,
            generate.elmList(propertiesExpressions)
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
                `Css.Media.withMediaQuery`,
                convertProperties(
                    subselector.rest,
                    properties.map(convertDeclaration)
                )
            );
        })
    );

    if (plainProperties.length === 1 && subselectors.length === 0) {
        return generate.indented(plainProperties[0]);
    }

    return generate.indented(
        generate.elmFunctionCall(
            `Css.batch`,
            generate.elmList(plainProperties.concat(Array.from(subselectors).reverse()))
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
