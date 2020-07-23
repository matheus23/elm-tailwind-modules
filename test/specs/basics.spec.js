const fs = require("fs");
const path = require("path");
const postcss = require("postcss");
const tailwind = require("tailwindcss");
const elmCssTailwind = require("../../index");

//TODO: Run postcss as a setup so jest can be run independently without running the npm test script
// beforeAll((done) => {
//   const tailwindCssFile = path.resolve(__dirname, "..", "tailwind.css");
//   const destinationCssFile = path.resolve(__dirname, "..", "dist", "main.css");

//   fs.readFile(tailwindCssFile, (err, css) => {
//     postcss([tailwind, elmCssTailwind])
//       .process(css, { from: tailwindCssFile, to: destinationCssFile })
//       .then((result) => {
//         fs.writeFileSync(destinationCssFile, result.css, () => true);
//         if (result.map) {
//           fs.writeFileSync(destinationCssFile, result.map, () => true);
//         }
//         done();
//       });
//   });
// });
test("snapshot test", () => {
  const outputFile = fs.readFileSync(
    path.resolve(__dirname, "..", "src", "TW.elm")
  );

  expect(outputFile.toString()).toMatchSnapshot();
});
