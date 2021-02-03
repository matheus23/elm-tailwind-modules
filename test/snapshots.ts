import elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "../test-example/tailwind.config.js";
import autoprefixer from "autoprefixer";
// @ts-ignore
import tailwindui from "@tailwindcss/ui";
import test from "ava";


test("snapshot of generated module", async t => {
    const generatedModule = await elmTailwindModules({
        directory: null,
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        debugFunction: t.log,
    });

    t.snapshot(generatedModule.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModule.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with autoprefixer", async t => {
    const generatedModule = await elmTailwindModules({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [autoprefixer],
        tailwindConfig,
        debugFunction: t.log,
    });

    t.snapshot(generatedModule.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModule.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with tailwindui", async t => {
    const generatedModule = await elmTailwindModules({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [tailwindui],
        tailwindConfig,
        debugFunction: t.log,
    });

    t.snapshot(generatedModule.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModule.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});

