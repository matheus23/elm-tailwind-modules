import elmTailwindOrigami from "../src/index.js";
import tailwindConfig from "./tailwind.config.js";

elmTailwindOrigami({
    directory: "./test/src",
    moduleName: "Tailwind",
    postcssPlugins: [],
    tailwindConfig,
});
