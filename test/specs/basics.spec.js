import * as fs from "fs";
import * as path from "path";
import * as postcss from "postcss";
import * as tailwind from "tailwindcss";
import * as elmCssTailwind from "../../src/index";
import { fileURLToPath } from 'url';

// like common js __dirname
const dirname = path.dirname(fileURLToPath(import.meta.url));

// TODO: Run postcss as a setup so jest can be run independently without running the npm test script
// beforeAll((done) => {
//     const tailwindCssFile = path.resolve(dirname, "..", "tailwind.css");
//     const destinationCssFile = path.resolve(dirname, "..", "dist", "main.css");

//     fs.readFile(tailwindCssFile, (err, css) => {
//         postcss([tailwind, elmCssTailwind])
//             .process(css, { from: tailwindCssFile, to: destinationCssFile })
//             .then((result) => {
//                 fs.writeFileSync(destinationCssFile, result.css, () => true);
//                 if (result.map) {
//                     fs.writeFileSync(destinationCssFile, result.map, () => true);
//                 }
//                 done();
//             });
//     });
// });
test("snapshot output of Utility module", () => {
    const outputFile = fs.readFileSync(
        path.resolve(dirname, "..", "src", "TW", "Utilities.elm")
    );

    expect(outputFile.toString()).toMatchSnapshot();
});
test("snapshot output of Breakpoint Module", () => {
    const outputFile = fs.readFileSync(
        path.resolve(dirname, "..", "src", "TW", "Breakpoints.elm")
    );

    expect(outputFile.toString()).toMatchSnapshot();
});
