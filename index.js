const fs = require("fs");
const path = require("path");
let postcss = require("postcss");
const { execSync } = require("child_process");
const { promisify } = require("util");
const mkdir = promisify(fs.mkdir);
const helpers = require("./helpers.js");
const breakpointGeneration = require("./code-generators/breakpoints");
const tailwindUtilityGeneration = require("./code-generators/tailwind-utilities");

module.exports = postcss.plugin("postcss-elm-tailwind", (opts) => {
  let rawDeclarations = [];
  return (root, result) => {
    const mediaQueryDefinitions = new Map();
    root.walkRules(/^\..*$/, (rule) => {
      rule.walkDecls((d) => {
        let mediaQuery;

        // Get the media from the current declaration and also save off
        // it's definition into the separate map
        if (d.parent && d.parent.parent && d.parent.parent.name === "media") {
          mediaQuery = d.parent.parent.params;
          breakpointName = d.parent.selector.match(/\.([a-zA-Z0-9]*)\\/);
          if (breakpointName) {
            mediaQueryDefinitions.set(
              breakpointName[1],
              d.parent.parent.params
            );
          }
        }

        rawDeclarations.push({
          selector: d.parent.selector,
          prop: d.prop,
          value: d.value,
          mediaQuery: mediaQuery,
        });
      });
    });

    // remove the declarations with media queries as now we are not generating functions for them
    let classes = fromDeclarationListToMap(
      rawDeclarations.filter((d) => !d.mediaQuery)
    );

    const breakpointsFormats = breakpointGeneration
      .formats(breakpointGeneration.cleanOpts({}))
      .map(({ elmFile, elmModuleName, elmBodyFn }) => {
        return writeFile(
          elmFile,
          elmBodyFn(elmModuleName, mediaQueryDefinitions)
        );
      });
    const formats = tailwindUtilityGeneration
      .formats(tailwindUtilityGeneration.cleanOpts({}))
      .map(({ elmFile, elmModuleName, elmBodyFn }) =>
        writeFile(elmFile, elmBodyFn(elmModuleName, classes))
      );
    return tap(Promise.all([...formats, ...breakpointsFormats]), (p) =>
      p.then((files) => {
        // run elm-format on the output file for good measure
        execSync(`elm-format --yes ${files.join(" ")}`);
        console.log("Saved", files);
      })
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

function fromDeclarationListToMap(rawDeclarations) {
  const classes = new Map();

  let declarations = groupBy(rawDeclarations, "selector");

  // put back into a real map for handling through the helper functions.
  // this can be done way better
  for (const [key, value] of Object.entries(declarations)) {
    let className = helpers.fixClass(key);
    let pseudoSelector = getPseudoSelector(key);
    let processedDeclarations = processDeclarations(value);
    // only add if we didn't filter out all unsupported declarations
    if (processedDeclarations.length > 0) {
      classes.set(key, {
        cleanedClassName: className,
        elmName: helpers.toElmName(className),
        pseudoSelector: pseudoSelector,
        declarations: processedDeclarations,
        // clumsy way to do this. Since we group by selector, we can just get the media query from the first child
        mediaQuery: processedDeclarations[0].mediaQuery,
      });
    }
  }

  return classes;
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
  );
}
function getPseudoSelector(selector) {
  if (selector.indexOf(":hover") > -1) {
    return "hover";
  } else if (selector.indexOf(":focus") > -1) {
    return "focus";
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
