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

                const subselectorFunction = subselectorFunctionFromType(subselector.rest.type);

                return [
                    `Css.Media.withMediaQuery [ ${elmString(subselector.mediaQuery)} ]\n` +
                    elmList(3, [
                        subselectorFunction + "\n" +
                        elmList(4, [
                            `Css.Global.selector ${elmString(subselector.rest.rest)}\n` +
                            elmList(5, properties.map(convertDeclaration))
                        ])
                    ])
                ];
            } else {
                if (subselector.rest.type === "plain") {
                    // We've got these covered in "plainProperties"
                    return [];
                }

                const subselectorFunction = subselectorFunctionFromType(subselector.rest.type);

                return [
                    subselectorFunction + "\n" +
                    elmList(3, [
                        `Css.Global.selector ${elmString(subselector.rest.rest)}\n` +
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
        case "descendant": return "Css.Global.descendants";
        case "adjacent": return "Css.Global.adjacentSiblings";
        case "sibling": return "Css.Global.generalSiblings";
        default: throw new Error("unrecognized subselector type " + t);
    }
}

// ELM CODEGEN

function elmString(content) {
    return `"${content.replace(/\\/g, "\\\\").replace(/"/g, '\\"')}"`;
}

function elmList(indentation, elements) {
    const indent = " ".repeat(Math.max(0, indentation * 4));
    if (elements.length === 0) {
        return indent + "[]";
    }
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
