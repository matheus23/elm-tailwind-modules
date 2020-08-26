// this is a map of declarations and values that either aren't supported by elm-css,
// or there is not a super straight-forward conversion, or I'm too lazy. Keep this list as small as possible
const notSupported = {
    appearance: "*",
    display: ["flow-root", "inline-grid", "grid"],
    "box-shadow": "*", // the values in Tailwind don't easily map to the mult-param version in elm
    "background-position": "*",
    clip: "*", // rect looks more complicated at the moment than I want to deal with
    flex: "*", //the order of flex3 doesn't match directly. Will need better parsing
    "align-content": "*", // couldn't see an align-content. Punting
    "align-self": ["auto"], // not supported https://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css#alignSelf
    "justify-content": ["space-evenly"], // didn't see a value
    "font-family": "*", //font family was easier just to take the string
    content: "*", // no support from what I can tell
    "object-fit": "*",
    "object-position": "*",
    cursor: ["text"],
    clear: "*",
    "stroke-width": "*",
    stroke: "*",
    "transform-origin": "*",
    "word-break": "*",
    "user-select": "*",
    float: "*", // getting lazy
    outline: ["0"], // I think needs an explicit 'none' type
    gap: "*",
    "grid-gap": "*",
    "column-gap": "*",
    "grid-column-gap": "*",
    "row-gap": "*",
    "grid-row-gap": "*",
    "grid-auto-flow": "*",
    "grid-row": "*",
    "grid-row-start": "*",
    "grid-row-end": "*",
    "grid-template-rows": "*",
    "grid-template-columns": "*",
    "grid-column": "*",
    "grid-column-start": "*",
    "grid-column-end": "*",
    "-webkit-overflow-scrolling": "*",
    "-webkit-font-smoothing": "*",
    "-moz-osx-font-smoothing": "*",
    "transition-property": "*",
    "transition-timing-function": "*",
    "transition-duration": "*",
    "transition-delay": "*",
    "animation": "*",
    "overscroll-behavior": "*",
    "overscroll-behavior-y": "*",
    "overscroll-behavior-x": "*"
};



// PUBLIC INTERFACE


export function elmFunction(config, { cls, elm }) {
    let declarationBlock = `
        ${elm.declarations.map((d) => convertDeclaration(d)).join(", \n      ")}
  `;

    // HACK: force a Css.batch surrounding `.container` so that `w-full` and `container` don't
    // equal each other in the `atBreakpoint` function (https://github.com/justinrassier/postcss-elm-css-tailwind/issues/10)
    // any more hacks like this and we need to find a better way
    if (
        elm.declarations.length > 1 ||
        elm.advancedSelector ||
        elm.elmName === "container"
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
