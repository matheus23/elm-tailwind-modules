// code gen stuff

// this is a map of declarations and values that either aren't supported by elm-css,
// or there is not a super straight-forward conversion, or I'm too lazy. Keep this list as small as possible
const notSupported = {
  display: ["flow-root", "inline-grid", "grid"],
  "box-shadow": "*", // the values in Tailwind don't easily map to the mult-param version in elm
  "background-position": "*",
  clip: "*", // rect looks more complicated at the moment than I want to deal with
  flex: "*", //the order of flex3 doesn't match directly. Will need better parsing
  "align-content": "*", // couldn't see an align-content. Punting
  "align-self": ["auto"], // not supported https://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css#alignSelf
  "justify-content": ["space-evenly"],
  "font-family": "*",
};

function elmBodyCss(elmModuleName, classes) {
  return (
    elmHeaderCss(elmModuleName, classes) +
    elmBody({ type: "Css.Style" }, classes)
  );
}

function elmHeaderExports(classes) {
  let tmp = Array.from(classes.values()).map((v) => v.elmName);

  tmp.sort();
  return tmp.join("\n    , ");
}

function elmHeaderCss(elmModuleName, classes) {
  l = elmHeaderExports(classes);

  return `module ${elmModuleName} exposing
    ( ${l}
    )

import Css 
import Css.Media

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
  return `

${elm.elmName} : ${config.type}
${elm.elmName} =
    Css.batch [
      ${mediaQueryContainer(
        elm.mediaQuery,
        pseudoSelectorContainer(
          elm.pseudoSelector,
          elm.declarations.map((d) => convertDeclaration(d)).join(", \n      ")
        )
      )}
    ]
`;
}

/**
 *  wrap a Css declaration with a media query wrapper
 */
function mediaQueryContainer(mediaQuery, declarationString) {
  if (mediaQuery) {
    return `Css.Media.withMediaQuery ["${mediaQuery}"] [
        ${declarationString}
      ]`;
  } else {
    return declarationString;
  }
}

/**
 * wrap a CSS declaration with a pseudo selector (e.g. focus)
 */
function pseudoSelectorContainer(pseudoSelector, declarationString) {
  if (pseudoSelector) {
    return `Css.${pseudoSelector} [
        ${declarationString}
      ]`;
  } else {
    return declarationString;
  }
}

function convertDeclaration(declaration) {
  let elmCssFunctionName;
  let elmCssFunctionUnit;
  // console.log("convertDeclaration -> declaration", declaration);
  const isCustomProperty = declaration.prop.startsWith("--");

  const valueSeparateUnits = declaration.value.split(" ");

  // filtering these out in index.js for now, but the start of support
  if (isCustomProperty) {
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
    if (isCamelizable(declaration.prop)) {
      elmCssFunctionName = camelize(declaration.prop);
    }

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
    !["opacity", "flex-shrink", "flex-grow", "flex", "order"].includes(
      declarationProp
    )
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

    return `(Css.${unit} ${numericalVal})`;
  }
}
// parse, clean up stuff

function camelize(s) {
  // a value that has a direct replacement in elm-css. eg: flex-wrap: nowrap needs noWrap
  const overrideList = { nowrap: "noWrap" };
  let camelized = s.replace(/-./g, (x) => x.toUpperCase()[1]);

  return overrideList[s] || camelized;
}

function isCamelizable(prop) {
  const camelizable = [
    "margin",
    "margin-top",
    "margin-bottom",
    "margin-left",
    "margin-right",
    "padding",
    "padding-top",
    "padding-bottom",
    "padding-left",
    "padding-right",
    "background-attachment",
    "background-color",
    "background-position",
    "background-repeat",
    "background-size",
    "text-decoration",
    "border-color",
    "font-weight",
    "color",
    "opacity",
    "border-bottom-right-radius",
    "border-bottom-left-radius",
    "border-top-left-radius",
    "border-top-right-radius",
    "border-radius",
    "height",
    "width",
    "font-size",
    "text-align",
    "display",
    "max-width",
    "overflow",
    "border-width",
    "position",
    "table-layout",
    "table-fixed",
    "flex",
    "flex-direction",
    "flex-wrap",
    "flex-grow",
    "flex-shrink",
    "align-items",
    "align-content",
    "align-self",
    "justify-content",
    "order",
  ];

  return camelizable.indexOf(prop) > -1;
}

function fixClass(cls) {
  // remove the dot
  cls = cls.replace(/^(\.)/, "");
  // make other dots safe
  cls = cls.replace(/\\\./g, ".");
  // remove > anything
  cls = cls.replace(/\s?>\s?.*/, "");
  // remove pseudo-elements (::)
  cls = cls.replace(/::.*$/, "");
  // remove pseudo-classes (:)
  cls = cls.replace(
    /(:(active|after|before|checked|disabled|focus|focus-within|hover|visited|nth-child\((even|odd)\)|(first|last)-child))+$/,
    ""
  );
  // make / safe for elm
  cls = cls.replace(/\\\//g, "/");
  // make \/ safe for elm
  cls = cls.replace(/\\([/])/g, "\\\\$1");
  // make \: safe for elm
  cls = cls.replace(/\\([:])/g, "$1");
  return cls;
}

function toElmName(cls, opts) {
  opts = opts || defaultOpts;
  var elm = cls;
  // handle negative with prefix
  if (opts.prefix) {
    let re_neg_with_prefix = new RegExp(`(${opts.prefix})-([a-z])`);
    elm = elm.replace(re_neg_with_prefix, "$1neg_$2");
  }
  // handle negative at start of string
  elm = elm.replace(/^-([a-z])/, "_neg_$1");
  // handle negative with variant
  elm = elm.replace(/:-([a-z])/, "__neg_$1");
  // replace dashes now we have sorted the negative stuff
  elm = elm.replace(/-/g, "_");
  // replace :
  elm = elm.replace(/:/g, "__");
  // handle fractions
  elm = elm.replace(/\//g, "over");
  // clean up
  elm = elm.replace(/\\__/g, "_");
  elm = elm.replace(/^_/g, "");
  // handle :nth-child(even), etc
  elm = elm.replace(/_nth_child\(.+\)/, "");
  elm = elm.replace(/_(last|first)_child/, "");
  // replace any other dots
  if (opts.nameStyle === "camel") {
    elm = elm.replace(/\./g, "Dot");
  } else {
    elm = elm.replace(/\./g, "_dot_");
  }
  // convert to camel case
  if (opts.nameStyle === "camel") {
    elm = elm.replace(/(_+\w)/g, (g) => g.replace(/_/g, "").toUpperCase());
  }
  return elm;
}

// options stuff

const defaultOpts = {
  elmFile: "src/TW.elm",
  elmModuleName: "TW",
  prefix: "",
  nameStyle: "snake",
  formats: {
    /*
    string: {
      elmFile: "src/TW/String.elm",
      elmModuleName: "TW.String"
    },
    svg: {
      elmFile: "src/TW/Svg.elm",
      elmModuleName: "TW.Svg",
    }
  */
  },
};

function cleanOpts(opts) {
  opts = { ...defaultOpts, ...opts };
  opts.formats = { ...opts.formats };

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
exports.defaultOpts = defaultOpts;
exports.elmFunction = elmFunction;
exports.fixClass = fixClass;
exports.formats = formats;
exports.toElmName = toElmName;
