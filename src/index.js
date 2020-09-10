import { promises as fs } from "fs";
import path from "path";
import postcss from "postcss";
import * as tailwindUtilityGeneration from "./code-generators/tailwind-utilities.js";
import * as parser from "./parser.js";
import tailwindcss from "tailwindcss";

const defaultTailwindConfig = {
};

export default async function run({
    directory = "./src",
    moduleName = "Tailwind",
    postcssPlugins = [],
    tailwindConfig = defaultTailwindConfig,
    skipSaving = false,
}) {
    let elmModule;

    const afterTailwindPlugin = postcss.plugin(
        "elm-tailwind-origami",
        function withConfig(config) {
            return async (root, result) => {
                const blocksByClass = parser.groupDeclarationBlocksByClass(root);
                console.log("number of unrecognized rules:", blocksByClass.unrecognized.length);
                const unrecognized = blocksByClass.unrecognized.map(unrecognized => {
                    return unrecognized.selector
                }).join("\n");
                await fs.writeFile("unrecognized", unrecognized);
                const modulePath = path.join.apply(null, moduleName.split("."));

                // setup standard utility code generation promise
                elmModule = tailwindUtilityGeneration.generateElmModule(moduleName, blocksByClass.recognized);
                if (!skipSaving) {
                    const filename = await writeFile(path.resolve(directory, `${modulePath}.elm`), elmModule);
                    console.log("Saved", filename);
                }
            };
        }
    );

    const from = "generated in-memory";
    const to = "output in-memory";
    await postcss([
        tailwindcss(tailwindConfig),
        ...postcssPlugins,
        afterTailwindPlugin
    ]).process("@tailwind base;\n@tailwind components;\n@tailwind utilities;", { from, to });

    return elmModule;
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
