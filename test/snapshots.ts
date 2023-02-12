import test, { ExecutionContext } from "ava";

import * as elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "../test-example/tailwind.config.js";
import autoprefixer from "autoprefixer";


test("snapshot of generated module", async t => {
    const generatedModules = await elmTailwindModules.run({
        directory: "./test-example/src/",
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig: {...tailwindConfig, plugins: []},
        logFunction: t.log,
    });

    snapshotRunResults(t, generatedModules);
});


test("snapshot of generated module with documentation", async t => {
    const generatedModules = await elmTailwindModules.run({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithDocs",
        postcssPlugins: [],
        tailwindConfig: {...tailwindConfig, plugins: []},
        generateDocumentation: true,
        logFunction: t.log,
    });

    snapshotRunResults(t, generatedModules);
});


test("snapshot of generated module with autoprefixer", async t => {
    const generatedModules = await elmTailwindModules.run({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [autoprefixer],
        tailwindConfig: {...tailwindConfig, plugins: []},
        logFunction: t.log,
    });

    snapshotRunResults(t, generatedModules);
});


test("snapshot of generated module with various plugins", async t => {
    const generatedModules = await elmTailwindModules.run({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithPlugins",
        postcssPlugins: [],
        tailwindConfig,
        logFunction: t.log,
    });

    snapshotRunResults(t, generatedModules);
});


function snapshotRunResults(t: ExecutionContext, generatedModules: elmTailwindModules.RunResult) {
    t.snapshot(generatedModules.themeModule, t.title + ": Theme Module");
    t.snapshot(generatedModules.utilitiesModule, t.title + ": Utilities Module");
    t.snapshot(generatedModules.breakpointsModule, t.title + ": Breakpoints Module");
    t.snapshot(generatedModules.postcssResult.content, t.title + ": Remaining Postcss CSS");
}
