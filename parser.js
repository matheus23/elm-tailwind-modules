const helpers = require("./helpers.js");

/**
 * Take a raw postCSS declaration list and convert to the standardized declaration list we need
 * @param {*} postCssDeclarationList
 */
const toStandardDeclarationList = (postCssDeclarationList) => {
  return postCssDeclarationList.map((postCssDecl) => ({
    selector: postCssDecl.parent.selector,
    prop: postCssDecl.prop,
    value: postCssDecl.value,
    mediaQuery: postCssDecl.parent.parent.params,
    pseudoSelector: getPseudoSelector(postCssDecl.parent.selector),
  }));
};

/**
 * Take the standardized declaration list and return a map grouped by the selctor therefore
 * getting all declarations for a CSS selector
 */
const fromDeclarationListToGroupedMap = (rawDeclarations) => {
  const classes = new Map();

  let declarations = groupBy(rawDeclarations, "selector");

  // put back into a real map for handling through the helper functions.
  // this can be done way better
  for (const [key, value] of Object.entries(declarations)) {
    let className = helpers.fixClass(key);
    let processedDeclarations = processDeclarations(value);
    // anything "advanced" like the space '> :not(template) ~ :not(template)'
    // sets to undefined otherwise (don't judge me)
    let advancedSelector =
      key.substring(key.indexOf(" ")).replace(key, "").trim() || undefined;
    // only add if we didn't filter out all unsupported declarations
    if (processedDeclarations.length > 0) {
      classes.set(key, {
        cleanedClassName: className,
        elmName: helpers.toElmName(className),
        declarations: processedDeclarations,
        advancedSelector: advancedSelector,
      });
    }
  }

  return classes;
};

const toMediaQueryDefinitionMap = (postCssDeclarationList) => {
  // Get the media from the current declaration and also save off
  // it's definition into the separate map
  return postCssDeclarationList
    .map((postCssDecl) => {
      if (
        postCssDecl.parent &&
        postCssDecl.parent.parent &&
        postCssDecl.parent.parent.name === "media"
      ) {
        mediaQuery = postCssDecl.parent.parent.params;
        breakpointName = postCssDecl.parent.selector.match(
          /\.([a-zA-Z0-9]*)\\/
        );
        if (breakpointName) {
          return {
            breakpointName: breakpointName[1],
            params: postCssDecl.parent.parent.params,
          };
        }
      }
    })
    .filter((d) => !!d)
    .reduce((map, obj) => map.set(obj.breakpointName, obj.params), new Map());
};

const processDeclarations = (declaration) => {
  return declaration.map((d) => {
    return { prop: d.prop, value: d.value, mediaQuery: d.mediaQuery };
  });
};
const getPseudoSelector = (selector) => {
  if (selector.indexOf(":hover") > -1) {
    return "hover";
  } else if (selector.indexOf(":focus") > -1) {
    return "focus";
  }
};

var groupBy = function (xs, key) {
  return xs.reduce(function (rv, x) {
    (rv[x[key]] = rv[x[key]] || []).push(x);
    return rv;
  }, {});
};

exports.toStandardDeclarationList = toStandardDeclarationList;
exports.fromDeclarationListToGroupedMap = fromDeclarationListToGroupedMap;
exports.toMediaQueryDefinitionMap = toMediaQueryDefinitionMap;
