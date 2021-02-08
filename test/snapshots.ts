import test from "ava";
import elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "../test-example/tailwind.config.js";
import autoprefixer from "autoprefixer";


test("snapshot of generated module", async t => {
    const generatedModules = await elmTailwindModules({
        directory: null,
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig: { ...tailwindConfig, plugins: [] },
        debugFunction: t.log,
    });

    t.snapshot(generatedModules.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModules.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with autoprefixer", async t => {
    const generatedModules = await elmTailwindModules({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [autoprefixer],
        tailwindConfig: { ...tailwindConfig, plugins: [] },
        debugFunction: t.log,
    });

    t.snapshot(generatedModules.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModules.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with various plugins", async t => {
    const generatedModules = await elmTailwindModules({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithPlugins",
        postcssPlugins: [],
        tailwindConfig,
        debugFunction: t.log,
    });

    t.snapshot(generatedModules.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModules.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});

