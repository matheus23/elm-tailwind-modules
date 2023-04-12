import * as elmTailwindModules from "./index";
import { program } from "commander";
import { join } from "path";

program.name("elm-tailwind-modules");
program.version("0.5.0");
program.option("--dir <dir>", `Destination folder for generated elm modules, e.g. "src/" or "gen/" (default: "src/"). Add this folder to your elm.json source-directories.`, "src/");
program.option("--module-name <name>", `Module name prefix for generated elm modules, e.g. "TW" or "Css.Gen" (default: "Tailwind").`, "Tailwind");
program.option("--tailwind-config <file>", `Your tailwind config file. When not provided, uses a default tailwind configuration.`, null);
program.option("--with-docs", `Add documentation to the generated modules (default: false).`, false);

(async function () {
    program.parse(process.argv);

    const options = program.opts();

    const tailwindConfig = options.tailwindConfig == null
        ? elmTailwindModules.defaultTailwindConfig
        // @ts-ignore
        : await import(join(process.cwd(), options.tailwindConfig));

    elmTailwindModules.run({
        directory: options.dir,
        moduleName: options.moduleName,
        postcssPlugins: [],
        tailwindConfig,
        generateDocumentation: options.withDocs,
        logFunction: console.log,
    });

}());

