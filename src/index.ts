import { promises as fs } from "fs";
import path from "path";
import * as postcss from "postcss";
import * as tailwindUtilityGeneration from "./code-generators/tailwind-utilities";
import * as tailwindBreakpointsGeneration from "./code-generators/tailwind-breakpoints";
import * as parser from "./parser";
// @ts-ignore
import tailwindcss from "tailwindcss";
// @ts-ignore
import resolveConfig from "tailwindcss/resolveConfig.js";
import { DebugFunction } from "./types";

const defaultTailwindConfig = {
};

interface RunConfiguration {
    directory?: string,
    moduleName?: string,
    postcssPlugins?: postcss.AcceptedPlugin[],
    tailwindConfig?: any,
    debugFunction?: DebugFunction,
}

export default async function run({
    directory = "./src",
    moduleName = "Tailwind",
    postcssPlugins = [],
    tailwindConfig = defaultTailwindConfig,
    debugFunction = console.log,
}: RunConfiguration): Promise<{
    utilitiesModule: string,
    breakpointsModule: string,
}> {
    let utilitiesModule: undefined | string;
    let breakpointsModule : undefined | string;

    const resolvedConfig = resolveConfig(tailwindConfig);

    const afterTailwindPlugin = {
        postcssPlugin: "elm-tailwind-modules",
        async OnceExit(root: postcss.Root) {
            const blocksByClass = parser.groupDeclarationBlocksByClass(root, debugFunction);
            const modulePath = path.join.apply(null, moduleName.split("."));

            // setup standard utility code generation promise
            utilitiesModule = tailwindUtilityGeneration.generateElmModule(moduleName + ".Utilities", blocksByClass);
            breakpointsModule = tailwindBreakpointsGeneration.generateElmModule(moduleName + ".Breakpoints", resolvedConfig);

            if (directory != null) {
                const filename = await writeFile(path.resolve(directory, `${modulePath}/Utilities.elm`), utilitiesModule);
                const filename2 = await writeFile(path.resolve(directory, `${modulePath}/Breakpoints.elm`), breakpointsModule);
                console.log("Saved", filename, filename2);
            }
        }
    };

    const from = "generated in-memory";
    const to = "output in-memory";
    await postcss.default([
        tailwindcss(tailwindConfig),
        ...postcssPlugins,
        afterTailwindPlugin
    ]).process("@tailwind base;\n@tailwind components;\n@tailwind utilities;", { from, to });

    return { utilitiesModule, breakpointsModule };
}

/**
 * Async helper to write given file to disk
 */
async function writeFile(fname: string, content: string): Promise<typeof fname> {
    const folder = path.dirname(fname);
    await fs.mkdir(folder, { recursive: true });
    await fs.writeFile(fname, content);
    return fname;
}
