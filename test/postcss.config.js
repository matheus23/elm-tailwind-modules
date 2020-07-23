const postcssElmCssTailwind = require("../index.js");
module.exports = {
  plugins: [require("tailwindcss"), postcssElmCssTailwind()],
};
