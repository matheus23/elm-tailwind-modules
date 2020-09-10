import { promises as fs } from "fs";
import * as path from "path";
import { fileURLToPath } from 'url';
import elmTailwindOrigami from "../../src/index.js";
import tailwindConfig from "../tailwind.config.js";
import autoprefixer from "autoprefixer";

// like common js __dirname
const dirname = path.dirname(fileURLToPath(import.meta.url));
const testDir = path.resolve(dirname, "..");

async function cleanTestDirs() {
    // rm -rf test/src && rm -rf test/gen && rm -rf test/dist
    await fs.rmdir(path.join(testDir, "src"), { recursive: true });
    await fs.rmdir(path.join(testDir, "gen"), { recursive: true });
    await fs.rmdir(path.join(testDir, "dist"), { recursive: true });

    console.log("Cleared test files");
}

beforeAll(async () => {
    await cleanTestDirs();

    await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind",
        postcssPlugins: [autoprefixer],
        tailwindConfig,
    });
});

test("snapshot output of Utility module", async () => {
    const outputFile = await fs.readFile(
        path.join(testDir, "src", "Tailwind.elm")
    );

    expect(outputFile.toString()).toMatchSnapshot();
});
