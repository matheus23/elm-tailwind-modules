const { fixClass, toElmName } = require("../helpers");
// code gen stuff

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

function elmFunction(config, { cls, elm }) {
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

function convertDeclaration(declaration) {
    let elmCssFunctionName;
    let elmCssFunctionUnit;
    const containsCustomProperty =
        declaration.prop.indexOf("--") > -1 || declaration.value.indexOf("--") > -1;

    const valueSeparateUnits = declaration.value.split(" ");

    // if the prop contains a custom property, we got to punt back to Css.property directly
    if (containsCustomProperty) {
        return `Css.property "${declaration.prop}" "${declaration.value}"`;
    } else if (
        notSupported[declaration.prop] &&
        (notSupported[declaration.prop] === "*" ||
            notSupported[declaration.prop].includes(declaration.value))
    ) {
        // if one or all of the declarations are not supported, drop back to Css.property
        return `Css.property "${declaration.prop}" "${declaration.value.replace(
            /"/g,
            '\\"'
        )}"`;
    } else {
        elmCssFunctionName = camelize(declaration.prop);

        // display: flex so far is the only one that needs to do this. Any more and we will extract
        if (declaration.prop === "display" && declaration.value === "flex") {
            return "Css.displayFlex";
        }

        // if a declaration value had multi word, we need to convert it to a
        // elm function with like backgroundPosition2
        elmCssFunctionName +=
            valueSeparateUnits.length > 1 ? valueSeparateUnits.length.toString() : "";

        elmCssFunctionUnit = valueSeparateUnits
            .map((w) => convertDeclarationValue(declaration.prop, w))
            .join(" ");

        return `Css.${elmCssFunctionName} ${elmCssFunctionUnit}`;
    }
}
function convertDeclarationValue(declarationProp, declarationValue) {
    let numericalVal;
    let unit;
    // 1rem, 1px
    let numberPlusUnit = declarationValue.match(/(-?[\d\.]+)([a-z]*)/);

    // percent
    let percentValue = declarationValue.match(/([-]?[0-9]*\.?[0-9]+)\%/);

    // font-weight: 100
    let intValue = declarationValue.match(/([-]?[0-9]+)$/);

    //opacity: 0.25
    let numValue = declarationValue.match(/([-]?[0-9]*\.[0-9]+)$/);

    // #123455
    let hexValue = declarationValue.match(/#[a-z0-9]*/);

    // careful mucking with the order. There is fall through logic like 0 is an int, but we need it as a px
    if (hexValue) {
        return `(Css.hex "${declarationValue}")`;
    } else if (
        declarationValue === "0" &&
        ![
            "opacity",
            "flex-shrink",
            "flex-grow",
            "flex",
            "order",
            "outline",
            "z-index",
        ].includes(declarationProp)
    ) {
        // plain 0 needs a unit in Elm, so set it to px
        return `(Css.px 0)`;
    } else if (numValue) {
        return `(Css.num ${numValue[1]})`;
    } else if (intValue) {
        return `(Css.int ${intValue[1]})`;
    } else if (!numberPlusUnit) {
        // if a single word value like 'auto' then just use that directly
        return `Css.${camelize(declarationValue)}`;
    } else if (percentValue) {
        return `(Css.pct ${percentValue[1]})`;
    } else {
        numericalVal = numberPlusUnit[1];
        unit = numberPlusUnit[2];

        // quick dirty way to force decimal values to have leading 0
        return `(Css.${unit} ${Number(numericalVal).toString()})`;
    }
}
// parse, clean up stuff

function camelize(s) {
    // a value that has a direct replacement in elm-css. eg: flex-wrap: nowrap needs noWrap
    const overrideList = { nowrap: "noWrap" };
    let camelized = s.replace(/-./g, (x) => x.toUpperCase()[1]);

    return overrideList[s] || camelized;
}

// options stuff

const defaultOpts = {
    elmFile: "Utilities.elm",
    elmModuleName: "Utilities",
};

function cleanOpts(opts) {
    opts = { ...defaultOpts, ...opts };

    opts.elmFile = `${opts.rootOutputDir}/${opts.rootModule}/${opts.elmFile}`;
    opts.elmModuleName = `${opts.rootModule}.${opts.elmModuleName}`;
    return opts;
}

function formats(opts) {
    return [cleanFormat(opts, elmBodyCss)];
}

function cleanFormat({ elmFile, elmModuleName }, elmBodyFn) {
    if (!elmFile) return false;
    if (!elmModuleName) return false;

    return { elmFile, elmModuleName, elmBodyFn };
}

exports.cleanOpts = cleanOpts;
exports.elmFunction = elmFunction;
exports.fixClass = fixClass;
exports.formats = formats;
exports.toElmName = toElmName;
