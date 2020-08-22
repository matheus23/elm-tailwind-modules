import * as fs from "fs-extra";
import * as path from "path";
import { fileURLToPath } from 'url';
import runPostcss from "../run-postcss";

// like common js __dirname
const dirname = path.dirname(fileURLToPath(import.meta.url));
const testDir = path.join(dirname, "..");

async function cleanTestDirs() {
    // rm -rf test/src && rm -rf test/gen && rm -rf test/dist
    await fs.emptyDir(path.join(testDir, "src"));
    await fs.emptyDir(path.join(testDir, "gen"));
    await fs.emptyDir(path.join(testDir, "dist"));
}

beforeAll(cleanTestDirs);

beforeAll(runPostcss);

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
