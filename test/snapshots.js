import elmTailwindOrigami from "../src/index.js";
import tailwindConfig from "../test-example/tailwind.config.js";
import autoprefixer from "autoprefixer";
import tailwindui from "@tailwindcss/ui";
import test from "ava";


test("snapshot of generated module", async t => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        debugFunction: () => { },
        skipSaving: true,
    });

    t.snapshot(generatedModule.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModule.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with autoprefixer", async t => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [autoprefixer],
        tailwindConfig,
        debugFunction: () => { },
        skipSaving: true,
    });

    t.snapshot(generatedModule.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModule.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with tailwindui", async t => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [tailwindui],
        tailwindConfig,
        debugFunction: () => { },
        skipSaving: true,
    });

    t.snapshot(generatedModule.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModule.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});

