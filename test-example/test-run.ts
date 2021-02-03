import elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "./tailwind.config.js";

elmTailwindModules({
    directory: "./test-example/src",
    moduleName: "Tailwind",
    postcssPlugins: [],
    tailwindConfig,
});
