import elmTailwindModules from "../src/index";
import tailwindConfig from "./tailwind.config.js";

elmTailwindModules({
    directory: "./test-example/src",
    moduleName: "Tailwind",
    postcssPlugins: [],
    tailwindConfig,
});
