const process = require("process");
const postcssElmTailwind = require("../src/index.js");

module.exports = {
    plugins: [
        require("tailwindcss")("./tailwind.config.js"),
        postcssElmTailwind(),
    ],
};
