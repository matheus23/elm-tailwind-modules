import { promises as fs } from "fs";
import path from "path";
import postcss from "postcss";
import { execSync } from "child_process";
import * as breakpointGeneration from "./code-generators/breakpoints.js";
import * as tailwindUtilityGeneration from "./code-generators/tailwind-utilities.js";
import * as parser from "./parser.js";


export default postcss.plugin(
    "elm-tailwind-origami",
    ({
        rootOutputDir = "./src",
        rootModule = "TW",
    } = {}) => {
        return async (root, result) => {
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
                .formats(breakpointGeneration.cleanOpts({ rootOutputDir, rootModule }))
                .map(async ({ rootModule, elmFile, elmModuleName, elmBodyFn }) =>
                    await writeFile(
                        elmFile,
                        elmBodyFn({ rootModule, elmModuleName }, mediaQueryDefinitions)
                    )
                );

            // setup standard utility code generation promise
            const formats = tailwindUtilityGeneration
                .formats({
                    elmFile: "Utilities.elm",
                    elmModuleName: "Utilities",
                    elmFile: `${rootOutputDir}/${rootModule}/Utilities.elm`,
                    elmModuleName: `${rootModule}.Utilities`,
                })
                .map(async ({ rootModule, elmFile, elmModuleName, elmBodyFn }) =>
                    await writeFile(
                        elmFile,
                        elmBodyFn({ rootModule, elmModuleName }, classes)
                    )
                );

            //execute the code generation and save the output
            const promises = Promise.all([...formats, ...breakpointsFormats]);
            const files = await promises;
            execSync(`elm-format --yes ${files.join(" ")}`);
            console.log("Saved", files);
        };
    }
);

/**
 * Async helper to write defined file to disk
 */
async function writeFile(fname, content) {
    const folder = path.dirname(fname);
    await fs.mkdir(folder, { recursive: true });
    await fs.writeFile(fname, content);
    return fname;
}
