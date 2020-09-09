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
    const properties = propertiesBlock.properties.map(convertDeclaration);

    if (propertiesBlock.advancedSelector) {
        // super rudamentary just for first pass to get space utilities workin
        let initialGlobalSelector =
            propertiesBlock.advancedSelector[0] === ">" ? "children" : undefined;

        const selector = propertiesBlock.advancedSelector.substr(1).trim();
        return `    Css.batch
        [ Css.Global.${initialGlobalSelector}
            [ Css.Global.selector "${selector}"
${elmList(4, properties)}
            ]
        ]`;
    }


    if (propertiesBlock.properties.length === 1) {
        return `    ${properties[0]}`;
    } else {
        return `    Css.batch
${elmList(2, properties)}`;
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
