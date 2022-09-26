import * as elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "./tailwind.config.js";

elmTailwindModules.run({
    directory: "./test-parameterization/src",
    moduleName: "Tailwind",
    tailwindConfig,
    generateDocumentation: true,
});
