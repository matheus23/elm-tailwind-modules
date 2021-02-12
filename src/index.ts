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
import { LogFunction, NamingOptions } from "./types";
import chalk from "chalk";
import { isArray, isEmpty } from "lodash";

export const defaultTailwindConfig: any = {
    variants: [],
};

const namingOptions: NamingOptions = {
    nameStyle: "snake"
}

export interface RunConfiguration {
    directory?: string,
    moduleName?: string,
    postcssPlugins?: postcss.AcceptedPlugin[],
    tailwindConfig?: any,
    postcssFile?: string,
    generateDocumentation?: boolean;
    logFunction?: LogFunction,
}

export async function run({
    directory = "./src",
    moduleName = "Tailwind",
    postcssPlugins = [],
    tailwindConfig = defaultTailwindConfig,
    postcssFile = null,
    generateDocumentation = false,
    logFunction = console.log,
}: RunConfiguration): Promise<{
    utilitiesModule: string,
    breakpointsModule: string,
}> {
    validateModuleName(moduleName);
    warningsTailwindConfig(tailwindConfig, logFunction);

    let utilitiesModule: undefined | string;
    let breakpointsModule: undefined | string;

    const afterTailwindPlugin = asPostcssPlugin(moduleName, tailwindConfig, generateDocumentation, logFunction, async generated => {
        const modulePath = path.join.apply(null, moduleName.split("."));

        utilitiesModule = generated.utilitiesModule;
        breakpointsModule = generated.breakpointsModule;

        if (directory != null) {
            logFunction([
                "Saved",
                " - " + chalk.blue(await writeFile(path.resolve(directory, `${modulePath}/Utilities.elm`), utilitiesModule)),
                " - " + chalk.blue(await writeFile(path.resolve(directory, `${modulePath}/Breakpoints.elm`), breakpointsModule)),
            ].join("\n"));
        }
    });

    const { from, file: css } = await resolvePostcssFile(postcssFile);
    const to = "output in-memory";
    await postcss.default([
        tailwindcss(tailwindConfig),
        ...postcssPlugins,
        afterTailwindPlugin
    ]).process(css, { from, to });

    return { utilitiesModule, breakpointsModule };
}


export interface ModulesGeneratedHook {
    (_: { utilitiesModule: string, breakpointsModule: string }): void;
}

export function asPostcssPlugin(
    moduleName: string,
    tailwindConfig: any,
    generateDocumentation: boolean,
    logFunction: LogFunction,
    modulesGeneratedHook: ModulesGeneratedHook
) {
    return {
        postcssPlugin: "elm-tailwind-modules",
        async OnceExit(root: postcss.Root) {
            const resolvedConfig = resolveConfig(tailwindConfig);
            const blocksByClass = parser.groupDeclarationBlocksByClass(root, logFunction, namingOptions);
            const utilitiesModule = tailwindUtilityGeneration.generateElmModule(moduleName + ".Utilities", blocksByClass, generateDocumentation);
            const breakpointsModule = tailwindBreakpointsGeneration.generateElmModule(moduleName + ".Breakpoints", resolvedConfig, namingOptions, generateDocumentation);
            modulesGeneratedHook({ utilitiesModule, breakpointsModule });
        }
    }
};


/*
 * Helpers
 */


function validateModuleName(moduleName: string) {
    const validModuleName = /^[0-9A-Za-z]([A-Za-z0-9.]*[0-9a-zA-Z])?$/;
    if (!moduleName.match(validModuleName)) {
        throw `The module name prefix "${moduleName}" doesn't appear to be valid. It should be something like "Tailwind" or "Gen.Css"`;
    }
}


function warningsTailwindConfig(tailwindConfig: any, logFunction: LogFunction) {
    if (!(isEmpty(tailwindConfig.variants) && isArray(tailwindConfig.variants))) {
        logFunction(
            `${chalk.bold.yellow("Warning:")} It is recommended to ${chalk.bold(`set ${chalk.green("`variants: []`")} in the tailwindConfig`)}, otherwise the generated files are huge.
Instead, you should use elm-css functions like ${chalk.blue("Css.focus")} and ${chalk.blue("Css.hover")}.
If you still have a usecase that needs variants, please create an issue.`);
    }
}


async function resolvePostcssFile(postcssFile: null | string): Promise<{ file: string, from: string }> {
    if (postcssFile == null) {
        return {
            from: "generated in-memory",
            file: "@tailwind base;\n@tailwind components;\n@tailwind utilities;",
        };
    }
    const content = await fs.readFile(postcssFile, { encoding: "utf-8" });
    return {
        from: postcssFile,
        file: content
    };
}


/**
 * Async helper to write given file to disk
 */
async function writeFile(fname: string, content: string): Promise<typeof fname> {
    const folder = path.dirname(fname);
    await fs.mkdir(folder, { recursive: true });
    await fs.writeFile(fname, content);
    return path.relative(".", fname);
}
