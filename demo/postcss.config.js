const process = require("process");
const postcssElmTailwind = require("../index.js");
module.exports = {
  plugins: [
    require("tailwindcss")("./tailwind.config.js"),
    postcssElmTailwind(),
  ],
};
