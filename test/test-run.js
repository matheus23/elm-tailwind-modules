import elmTailwindOrigami from "../src/index.js";
import tailwindConfig from "./tailwind.config.js";
import autoprefixer from "autoprefixer";

elmTailwindOrigami({
    directory: "./test/src",
    moduleName: "TW.Utilities",
    postcssPlugins: [autoprefixer],
    tailwindConfig,
});
