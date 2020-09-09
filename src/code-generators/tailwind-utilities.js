// PUBLIC INTERFACE

export function formats({ elmFile, elmModuleName }) {
    return [{ elmFile, elmModuleName, elmBodyFn: elmBodyCss }]
}



// PRIVATE INTERFACE


function elmBodyCss({ elmModuleName }, blocksByClass) {
    return (
        elmHeaderCss(elmModuleName) +
        elmBody(blocksByClass)
    );
}

function elmHeaderCss(elmModuleName) {
    return `module ${elmModuleName} exposing (..)

import Css
import Css.Media
import Css.Global
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
${convertDeclarationBlock(propertiesBlock)}
`;
}

function convertDeclaration(propertiesBlock) {
    return `Css.property ${elmString(propertiesBlock.prop)} ${elmString(propertiesBlock.value)}`;
}

function convertDeclarationBlock(propertiesBlock) {
    const plainProperties = findPlainProperties(propertiesBlock).map(convertDeclaration);
    const subselectors = propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.mediaQuery != null) {
                if (subselector.rest.type === "plain") {
                    return [
                        `Css.Media.withMediaQuery [ ${elmString(subselector.mediaQuery)} ]\n` +
                        elmList(3, properties.map(convertDeclaration))
                    ];
                }
                // TODO Never had the case, yet
                console.log("mediaquery with non-plain rest", subselector);
                return [];
            } else {
                if (subselector.rest.type === "plain") {
                    // We've got these covered in "plainProperties"
                    return [];
                }

                const subselectorFunction = subselectorFunctionFromType(subselector.rest.type);

                return [
                    subselectorFunction + "\n" +
                    elmList(3, [`Css.Global.selector ${elmString(subselector.rest.rest)}\n` +
                        elmList(4, properties.map(convertDeclaration))
                    ])
                ];
            }
        })
    );

    if (plainProperties.length === 1 && subselectors.length === 0) {
        return "    " + plainProperties[0];
    }

    return (
        `    Css.batch\n` +
        elmList(2, plainProperties.concat(Array.from(subselectors).reverse()))
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
        case "decendant": return "Css.Global.decendants";
        case "adjacent": return "Css.Global.adjacentSiblings";
        case "sibling": return "Css.Global.generalSiblings";
        default: throw new Error("unrecognized subselector type " + t);
    }
}

// ELM CODEGEN

function elmString(content) {
    return `"${content.replace(/"/g, '\\"')}"`;
}

function elmList(indentation, elements) {
    const indent = " ".repeat(Math.max(0, indentation * 4));
    let str = "";
    let idx = 0;
    elements.forEach(elem => {
        str += indent;
        str += idx === 0 ? "[ " : ", ";
        str += elem;
        str += "\n";
        idx++;
    });
    str += indent;
    str += "]";
    return str;
}
