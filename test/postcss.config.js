const postcssElmCssTailwind = require("../src/index.js");

module.exports = {
  plugins: [
    require("tailwindcss")("./tailwind.config.js"),
    postcssElmCssTailwind(),
  ],
};
