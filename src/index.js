const fs = require("fs");
const path = require("path");
let postcss = require("postcss");
const { execSync } = require("child_process");
const { promisify } = require("util");
const mkdir = promisify(fs.mkdir);
const breakpointGeneration = require("./code-generators/breakpoints");
const tailwindUtilityGeneration = require("./code-generators/tailwind-utilities");
const parser = require("./parser");

module.exports = postcss.plugin("postcss-elm-tailwind", (opts) => {
  return (root, result) => {
    let rawDeclarations = [];

    // get all the raw declarations by walking the list. No nice way to map from what I can tell
    root.walkRules(/^\..*$/, (rule) => {
      rule.walkDecls((d) => {
        rawDeclarations.push(d);
      });
    });

    let standardizedDeclarationList = parser.toStandardDeclarationList(
      rawDeclarations
    );

    // remove the declarations with media queries and pseudo selectors since we won't generate classes for those
    const classes = parser.fromDeclarationListToGroupedMap(
      standardizedDeclarationList.filter(
        (d) => !d.mediaQuery && !d.pseudoSelector
      )
    );

    // get media query definitions to build Breakpoints module with
    const mediaQueryDefinitions = parser.toMediaQueryDefinitionMap(
      rawDeclarations
    );

    // setup breakpoint code generation promise
    const breakpointsFormats = breakpointGeneration
      .formats(breakpointGeneration.cleanOpts({}))
      .map(({ elmFile, elmModuleName, elmBodyFn }) => {
        return writeFile(
          elmFile,
          elmBodyFn(elmModuleName, mediaQueryDefinitions)
        );
      });

    // setup standard utility code generation promise
    const formats = tailwindUtilityGeneration
      .formats(tailwindUtilityGeneration.cleanOpts({}))
      .map(({ elmFile, elmModuleName, elmBodyFn }) =>
        writeFile(elmFile, elmBodyFn(elmModuleName, classes))
      );

    //execute the code generation and save the output
    return tap(Promise.all([...formats, ...breakpointsFormats]), (p) =>
      p.then((files) => {
        // run elm-format on the output file for good measure
        execSync(`elm-format --yes ${files.join(" ")}`);
        console.log("Saved", files);
      })
    );
  };
});

/**
 * Async helper to write defined file to disk
 */
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

const tap = (v, fn) => {
  fn(v);
  return v;
};
