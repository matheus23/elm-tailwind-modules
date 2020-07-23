const fs = require("fs");
const path = require("path");
let postcss = require("postcss");
const { promisify } = require("util");
const mkdir = promisify(fs.mkdir);
let h = require("./helpers.js");

let supportedSelectors = {
  marginSelectors: /^\.m[xy]?-.*$/,
  paddingSelectors: /^\.p[xy]?-.*$/,
  backgroundSelectors: /^\.bg-.*$/,
  shadowSelectors: /^\.shadow.*$/,
  hoverVariantSelectors: /^\.hover\\:.*$/,
  mediaQuerySelectors: /^\.lg\\:ml.*$/,
};

//TODO

let roundedSelectors = /^\.rounded.*$/;
let focusVariantSelectors;
let breakpointVariants;

const unsupportedDeclarationsForNow = [];
let classes = new Map();

module.exports = postcss.plugin("postcss-elm-tailwind", (opts) => {
  opts = h.cleanOpts(opts);

  let rawDeclarations = [];
  return (root, result) => {
    Object.values(supportedSelectors).forEach((supportedRegex) => {
      root.walkRules(supportedRegex, (rule) => {
        rule.walkDecls((d) => {
          let mediaQuery;
          if (d.parent && d.parent.parent && d.parent.parent.name === "media") {
            mediaQuery = d.parent.parent.params;
          }

          rawDeclarations.push({
            selector: d.parent.selector,
            prop: d.prop,
            value: d.value,
            mediaQuery: mediaQuery,
          });
        });
      });
    });
    // let declarations = groupBy(rawDeclarations, "mediaQuery");
    let declarations = groupBy(rawDeclarations, "selector");

    // put back into a real map for handling through the helper functions.
    // this can be done way better
    for (const [key, value] of Object.entries(declarations)) {
      let className = h.fixClass(key);
      let pseudoSelector = getPseudoSelector(key);
      let processedDeclarations = processDeclarations(value);
      // only add if we didn't filter out all unsupported declarations
      if (processedDeclarations.length > 0) {
        classes.set(key, {
          cleanedClassName: className,
          elmName: h.toElmName(className),
          pseudoSelector: pseudoSelector,
          declarations: processedDeclarations,
          mediaQuery: processedDeclarations[0].mediaQuery, // clumsy way to do this.
        });
      }
    }

    const formats = h
      .formats(opts)
      .map(({ elmFile, elmModuleName, elmBodyFn }) =>
        writeFile(elmFile, elmBodyFn(elmModuleName, classes))
      );
    return tap(Promise.all(formats), (p) =>
      p.then((files) => console.log("Saved", files))
    );
  };
});

async function writeFile(fname, content) {
  folder = path.dirname(fname);
  await mkdir(folder, { recursive: true });

  return new Promise((resolve, reject) =>
    fs.writeFile(fname, content, (err) => {
      if (err) return reject(err);
      resolve(fname);
    })
  );
}

function processDeclarations(declaration) {
  return (
    declaration
      .map((d) => {
        return { prop: d.prop, value: d.value, mediaQuery: d.mediaQuery };
      })
      // can't support the custom property overrides inside of things like bg-color
      // as we need a var() function in Elm
      .filter(
        (d) => d.prop.indexOf("--") === -1 && d.value.indexOf("--") === -1
      )
      .filter((d) => !unsupportedDeclarationsForNow.includes(d.prop))
  );
}
function getPseudoSelector(selector) {
  if (selector.indexOf(":hover") > -1) {
    return "hover";
  }
}

const tap = (v, fn) => {
  fn(v);
  return v;
};
var groupBy = function (xs, key) {
  return xs.reduce(function (rv, x) {
    (rv[x[key]] = rv[x[key]] || []).push(x);
    return rv;
  }, {});
};
