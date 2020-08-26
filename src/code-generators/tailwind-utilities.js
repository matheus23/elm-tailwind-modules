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
    function convertDeclaration(declaration) {
        return `Css.property ${elmString(declaration.prop)} ${elmString(declaration.value)}`;
    }

    let declarationBlock = `
        ${elm.declarations.map(convertDeclaration).join(", \n      ")}
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

${elm.elmName} : Css.Style
${elm.elmName} =
  ${declarationBlock}
`;
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

// ELM CODEGEN

function elmString(content) {
    return `"${content.replace(/"/g, '\\"')}"`;
}
