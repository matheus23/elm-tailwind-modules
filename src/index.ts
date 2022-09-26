import {promises as fs} from "fs";
import path from "path";
import * as postcss from "postcss";
import * as tailwindUtilityGeneration from "./code-generators/tailwind-utilities";
import * as tailwindThemeGeneration from "./code-generators/tailwind-theme";
import * as tailwindBreakpointsGeneration from "./code-generators/tailwind-breakpoints";
import * as parser from "./parser";
// @ts-ignore
import tailwindcss, { Config } from "tailwindcss";
// @ts-ignore
import resolveConfig from "tailwindcss/resolveConfig.js";
import {LogFunction, NamingOptions} from "./types";
import * as documentation from "./docs";
import chalk from "chalk";
import {isArray, isEmpty} from "lodash";

export const defaultTailwindConfig: any = {
    variants: [],
    safelist: [{pattern: /.*/, variants: []}]
};

const namingOptions: NamingOptions = {
    nameStyle: "snake"
}

export const docs = documentation;

export interface RunConfiguration {
    directory?: string,
    moduleName?: string,
    postcssPlugins?: postcss.AcceptedPlugin[],
    tailwindConfig?: any,
    generateDocumentation?: boolean | documentation.DocumentationGenerator;
    logFunction?: LogFunction,
}

export interface RunResult {
    utilitiesModule: string,
    breakpointsModule: string,
    postcssResult: postcss.Result,
}

/**
 * Runs elm-tailwind-modules like the command line interface is run.
 * 
 * @param directory
 * the directory path to save to. If null, this function won't save the generated files to disk.
 * 
 * @returns
 * the generated modules as string.
 */
export async function run({
    directory = "./src",
    moduleName = "Tailwind",
    postcssPlugins = [],
    tailwindConfig = defaultTailwindConfig,
    generateDocumentation = false,
    logFunction = console.log,
}: RunConfiguration): Promise<RunResult> {
    const tailwindConfig_ = {
        ...tailwindConfig, safelist: tailwindConfig.safelist || [
            {pattern: /.*/, variants: []}
        ]
    };
    let utilitiesModule: undefined | string;
    let breakpointsModule: undefined | string;

    const afterTailwindPlugin = asPostcssPlugin({
        moduleName,
        tailwindConfig: tailwindConfig_,
        generateDocumentation,
        logFunction,
        modulesGeneratedHook: async generated => {
            utilitiesModule = generated.utilitiesModule;
            breakpointsModule = generated.breakpointsModule;

            if (directory != null) {
                await writeGeneratedFiles({directory, moduleName, logFunction, generated});
            }
        }
    });

    // TODO Remove resolvePostcssFile
    const {from, file: css} = await resolvePostcssFile(null);
    const to = "output in-memory";
    const postcssResult = await postcss.default([
        tailwindcss(tailwindConfig_),
        ...postcssPlugins,
        afterTailwindPlugin
    ]).process(css, {from, to});

    return {utilitiesModule, breakpointsModule, postcssResult};
}


export interface ModulesGeneratedHook {
    (_: {utilitiesModule: string, themeModule: string, breakpointsModule: string}): void;
}

/**
 * This exposes the actual postcss plugin that's used in `run`.
 * 
 * @param modulesGeneratedHook
 * a callback which is called once the modules have been generated.
 */
export function asPostcssPlugin({moduleName, tailwindConfig, generateDocumentation, logFunction, modulesGeneratedHook}: {
    moduleName: string,
    tailwindConfig: any,
    generateDocumentation: boolean | documentation.DocumentationGenerator,
    logFunction: LogFunction,
    modulesGeneratedHook: ModulesGeneratedHook,
}) {
    validateModuleName(moduleName);
    warningsTailwindConfig(tailwindConfig, logFunction);

    return {
        postcssPlugin: "elm-tailwind-modules",
        async OnceExit(root: postcss.Root) {
            const docGen = resolveDocGen(generateDocumentation);
            const resolvedConfig = resolveConfig(tailwindConfig);
            const resolvedColors = tailwindThemeGeneration.expandColors([], resolvedConfig.theme.colors);
            const blocksByClass = parser.groupDeclarationBlocksByClass(root, resolvedColors, logFunction, namingOptions);

            const utilitiesModule = tailwindUtilityGeneration.generateElmModule(moduleName + ".Utilities", blocksByClass, docGen);
            const themeModule = tailwindThemeGeneration.generateElmModule(moduleName + ".Theme", resolvedColors);
            const breakpointsModule = tailwindBreakpointsGeneration.generateElmModule(moduleName + ".Breakpoints", resolvedConfig, namingOptions, docGen);
            
            modulesGeneratedHook({utilitiesModule, breakpointsModule, themeModule});
        }
    }
};

/**
 * This exposes the actual logic for writing files and writing some console output
 * that is used in `run` (in the callback to `asPostcssPlugin`).
 */
export async function writeGeneratedFiles({directory, moduleName, logFunction, generated}: {
    directory: string,
    moduleName: string,
    logFunction: LogFunction,
    generated: {utilitiesModule: string, breakpointsModule: string, themeModule: string}
}): Promise<void> {
    const modulePath = path.join.apply(null, moduleName.split("."));
    logFunction([
        "Saved",
        " - " + chalk.blue(await writeFile(path.resolve(directory, `${modulePath}/Utilities.elm`), generated.utilitiesModule)),
        " - " + chalk.blue(await writeFile(path.resolve(directory, `${modulePath}/Theme.elm`), generated.themeModule)),
        " - " + chalk.blue(await writeFile(path.resolve(directory, `${modulePath}/Breakpoints.elm`), generated.breakpointsModule)),
    ].join("\n"));
}


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


async function resolvePostcssFile(postcssFile: null | string): Promise<{file: string, from: string}> {
    if (postcssFile == null) {
        return {
            from: "generated in-memory",
            file: "@tailwind base;\n@tailwind components;\n@tailwind utilities;",
        };
    }
    const content = await fs.readFile(postcssFile, {encoding: "utf-8"});
    return {
        from: postcssFile,
        file: content
    };
}

function resolveDocGen(docs: boolean | documentation.DocumentationGenerator): documentation.DocumentationGenerator {
    if (docs === true) {
        return documentation.defaultDocumentationGenerator;
    }
    if (docs === false) {
        return documentation.noDocumentationGenerator;
    }
    return docs;
}

/**
 * Async helper to write given file to disk
 */
async function writeFile(fname: string, content: string): Promise<typeof fname> {
    const folder = path.dirname(fname);
    await fs.mkdir(folder, {recursive: true});
    await fs.writeFile(fname, content);
    return path.relative(".", fname);
}
