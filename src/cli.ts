import * as elmTailwindModules from "./index";
import { program } from "commander";

program.name("elm-tailwind-modules");
program.version("0.0.1");
program.option("--dir <dir>", `destination folder for generated elm modules, e.g. "src/" or "gen/". Add this folder to your elm.json source-directories.`);
program.option("--module-name <name>", `module name prefix for generated elm modules, e.g. "Tailwind" or "Css.Gen"`);
program.option("--tailwind-config <file>", `your tailwind config file`, null);

(async function () {
    program.parse(process.argv);

    const options = program.opts();

    const tailwindConfig = options.tailwindConfig == null ? elmTailwindModules.defaultTailwindConfig : await import(options.tailwindConfig);

    elmTailwindModules.run({
        directory: options.dir,
        moduleName: options.moduleName,
        postcssPlugins: [],
        tailwindConfig,
        debugFunction: console.log,
    });

}());

