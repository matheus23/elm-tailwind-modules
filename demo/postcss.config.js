const process = require("process");
const postcssElmTailwind = require("../index.js");
module.exports = {
  plugins: [require("tailwindcss"), postcssElmTailwind()],
};
