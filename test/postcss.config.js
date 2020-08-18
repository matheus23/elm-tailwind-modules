const postcssElmCssTailwind = require("../src/index.js");

module.exports = {
    plugins: [
        require("tailwindcss")("./tailwind.config.js"),
        // test running with no params
        postcssElmCssTailwind(),
        // test optional params
        postcssElmCssTailwind({
            baseTailwindCSS: "./tailwind.css",
            rootOutputDir: "./gen",
            rootModule: "Tailwind",
        }),
    ],
};
