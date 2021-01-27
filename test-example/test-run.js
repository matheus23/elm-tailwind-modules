import elmTailwindOrigami from "../src/index.js";
import tailwindConfig from "./tailwind.config.js";

elmTailwindOrigami({
    directory: "./test-example/src",
    moduleName: "Tailwind",
    postcssPlugins: [],
    tailwindConfig,
});
