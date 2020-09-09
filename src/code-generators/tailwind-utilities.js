// PUBLIC INTERFACE

export function formats({ elmFile, elmModuleName }) {
    return [{ elmFile, elmModuleName, elmBodyFn: elmBodyCss }]
}



// PRIVATE INTERFACE


function elmBodyCss({ elmModuleName }, classes) {
    return (
        elmHeaderCss(elmModuleName) +
        elmBody(classes)
    );
}

function elmHeaderCss(elmModuleName) {
    return `module ${elmModuleName} exposing (..)

import Css
import Css.Global
`;
}

function elmBody(classes) {
    let body = "";
    for (let [cls, elm] of classes) {
        body = body + elmFunction({ elm });
    }
    return body;
}

function elmFunction({ elm }) {
    return `

${elm.elmName} : Css.Style
${elm.elmName} =
    ${convertDeclarationBlock(elm)}
`;
}

function convertDeclaration(declaration) {
    return `Css.property ${elmString(declaration.prop)} ${elmString(declaration.value)}`;
}

function convertDeclarationBlock(elm) {
    if (elm.advancedSelector) {
        // super rudamentary just for first pass to get space utilities workin
        let initialGlobalSelector =
            elm.advancedSelector[0] === ">" ? "children" : undefined;

        const selector = elm.advancedSelector.substr(1).trim();
        return `Css.batch
        [ Css.Global.${initialGlobalSelector}
            [ Css.Global.selector "${selector}"
${elmList(16, elm.declarations.map(convertDeclaration))}
            ]
        ]`;
    }
    if (elm.declarations.length === 1) {
        return convertDeclaration(elm.declarations[0]);
    } else {
        return `Css.batch
${elmList(8, elm.declarations.map(convertDeclaration))}`;
    }
}

// ELM CODEGEN

function elmString(content) {
    return `"${content.replace(/"/g, '\\"')}"`;
}

function elmList(indentation, elements) {
    const indent = " ".repeat(Math.max(0, indentation));
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
