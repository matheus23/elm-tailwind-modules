import test, {ExecutionContext} from "ava";

import * as elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "./tailwind.config.js";
import {spawnSync} from "child_process";
import execa from "execa";
import {promises as fs} from "fs";
import {tmpdir} from "os";
import path from "path";


test("output is formatted according to elm-format", async t => {
    const {themeModule, utilitiesModule, breakpointsModule} = await elmTailwindModules.run({
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        logFunction: t.log,
    });

    await assertFormatted(t, themeModule);
    await assertFormatted(t, breakpointsModule);
    await assertFormatted(t, utilitiesModule);
});


test("output with documentation is formatted according to elm-format", async t => {
    const {themeModule, utilitiesModule, breakpointsModule} = await elmTailwindModules.run({
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        generateDocumentation: true,
        logFunction: t.log,
    });

    await assertFormatted(t, themeModule);
    await assertFormatted(t, breakpointsModule);
    await assertFormatted(t, utilitiesModule);
});


async function assertFormatted(t: ExecutionContext, file: string) {
    const formatted = await elmFormat(file);
    if (file !== formatted) {
        t.fail("File is not formatted\n" + await diff(file, formatted));
    }
    t.pass();
}

async function elmFormat(fileContents: string): Promise<string> {
    if (fileContents == null) {
        throw new Error(`Can't run elm-format: No file passed (fileContents is ${fileContents})`)
    }
    const output = await execa("./node_modules/.bin/elm-format", ["--stdin"], {
        input: fileContents,
        timeout: 10_000_000,
        stripFinalNewline: false,
    });
    return output.stdout;
}

async function diff(before: string, after: string): Promise<string> {
    const dir = tmpdir();
    const unformattedPath = path.join(dir, "Unformatted.elm");
    const formattedPath = path.join(dir, "Formatted.elm");
    await fs.writeFile(unformattedPath, before);
    await fs.writeFile(formattedPath, after);
    const p = spawnSync("diff", ["-u", "--color=always", unformattedPath, formattedPath], {encoding: "utf-8"});
    await fs.rm(unformattedPath);
    await fs.rm(formattedPath);
    return p.stdout;
}
