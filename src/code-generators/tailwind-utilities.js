// PUBLIC INTERFACE


export function elmFunction(config, { cls, elm }) {
    let declarationBlock = `
        ${elm.declarations.map((d) => convertDeclaration(d)).join(", \n      ")}
  `;

    if (
        elm.declarations.length > 1 ||
        elm.advancedSelector
    ) {
        declarationBlock = `
    Css.batch [
      ${advancedSelectorContainer(elm.advancedSelector, declarationBlock)}
    ]
    `;
    }
    return `

${elm.elmName} : ${config.type}
${elm.elmName} =
  ${declarationBlock}
`;
}

export function formats({ elmFile, elmModuleName }) {
    return [{ elmFile, elmModuleName, elmBodyFn: elmBodyCss }]
}



// PRIVATE INTERFACE


function elmBodyCss({ elmModuleName }, classes) {
    return (
        elmHeaderCss(elmModuleName, classes) +
        elmBody({ type: "Css.Style" }, classes)
    );
}

function elmHeaderCss(elmModuleName, classes) {
    return `module ${elmModuleName} exposing (..)

import Css 
import Css.Global

`;
}

function elmBody(config, classes) {
    let body = "";
    for (let [cls, elm] of classes) {
        body = body + elmFunction(config, { cls, elm });
    }
    return body;
}

function advancedSelectorContainer(advancedSelector, declarationString) {
    if (advancedSelector) {
        // super rudamentary just for first pass to get space utilities workin
        let initialGlobalSelector =
            advancedSelector[0] === ">" ? "children" : undefined;
        advancedSelector = advancedSelector.substr(1).trim();
        return `Css.Global.${initialGlobalSelector}
     [Css.Global.selector "${advancedSelector}"
      [
        ${declarationString}
      ]
       
     ]
     `;
    } else {
        return declarationString;
    }
}

function elmString(content) {
    return `"${content.replace(/"/g, '\\"')}"`;
}

function convertDeclaration(declaration) {
    return `Css.property ${elmString(declaration.prop)} ${elmString(declaration.value)}`;
}
