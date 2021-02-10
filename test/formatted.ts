import test, { ExecutionContext } from "ava";

import * as elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "../test-example/tailwind.config.js";
import { execSync, spawnSync } from "child_process";
import { promises as fs } from "fs";
import { tmpdir } from "os";
import path from "path";


test("output is formatted according to elm-format", async t => {
    const { utilitiesModule, breakpointsModule } = await elmTailwindModules.run({
        directory: null,
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        logFunction: t.log,
    });

    await assertFormatted(t, breakpointsModule);
    await assertFormatted(t, utilitiesModule);
});

async function assertFormatted(t: ExecutionContext, file: string) {
    const formatted = elmFormat(file);
    if (file !== formatted) {
        t.fail("File is not formatted\n" + await diff(file, formatted));
    }
    t.pass();
}

function elmFormat(fileContents: string): string {
    return execSync("./node_modules/.bin/elm-format --stdin", {
        input: fileContents,
        encoding: "utf-8",
        timeout: 10000,
    });
}

async function diff(before: string, after: string): Promise<string> {
    const dir = tmpdir();
    const unformattedPath = path.join(dir, "Unformatted.elm");
    const formattedPath = path.join(dir, "Formatted.elm");
    await fs.writeFile(unformattedPath, before);
    await fs.writeFile(formattedPath, after);
    const p = spawnSync("diff", ["-u", "--color=always", unformattedPath, formattedPath], { encoding: "utf-8" });
    await fs.rm(unformattedPath);
    await fs.rm(formattedPath);
    return p.stdout;
}
