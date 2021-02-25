import * as elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "./tailwind.config.js";

elmTailwindModules.run({
    directory: "./test-example/src",
    moduleName: "Tailwind",
    tailwindConfig,
});
