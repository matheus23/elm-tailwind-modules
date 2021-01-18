import { promises as fs } from "fs";
import path from "path";
import postcss from "postcss";
import * as tailwindUtilityGeneration from "./code-generators/tailwind-utilities.js";
import * as tailwindBreakpointsGeneration from "./code-generators/tailwind-breakpoints.js";
import * as parser from "./parser.js";
import tailwindcss from "tailwindcss";
import resolveConfig from "tailwindcss/resolveConfig.js";

const defaultTailwindConfig = {
};

export default async function run({
    directory = "./src",
    moduleName = "Tailwind",
    postcssPlugins = [],
    tailwindConfig = defaultTailwindConfig,
    skipSaving = false,
}) {
    let utilitiesModule;
    let breakpointsModule;

    const resolvedConfig = resolveConfig(tailwindConfig);

    const afterTailwindPlugin = {
        postcssPlugin: "elm-tailwind-origami",
        async OnceExit(root) {
            const blocksByClass = parser.groupDeclarationBlocksByClass(root);
            const modulePath = path.join.apply(null, moduleName.split("."));

            // setup standard utility code generation promise
            utilitiesModule = tailwindUtilityGeneration.generateElmModule(moduleName + ".Utilities", blocksByClass);
            breakpointsModule = tailwindBreakpointsGeneration.generateElmModule(moduleName + ".Breakpoints", resolvedConfig);

            if (!skipSaving) {
                const filename = await writeFile(path.resolve(directory, `${modulePath}/Utilities.elm`), utilitiesModule);
                const filename2 = await writeFile(path.resolve(directory, `${modulePath}/Breakpoints.elm`), breakpointsModule);
                console.log("Saved", filename, filename2);
            }
        }
    };

    const from = "generated in-memory";
    const to = "output in-memory";
    await postcss([
        tailwindcss(tailwindConfig),
        ...postcssPlugins,
        afterTailwindPlugin
    ]).process("@tailwind base;\n@tailwind components;\n@tailwind utilities;", { from, to });

    return { utilitiesModule, breakpointsModule };
}

/**
 * Async helper to write defined file to disk
 */
async function writeFile(fname, content) {
    const folder = path.dirname(fname);
    await fs.mkdir(folder, { recursive: true });
    await fs.writeFile(fname, content);
    return fname;
}
