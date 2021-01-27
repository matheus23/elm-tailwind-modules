import elmTailwindOrigami from "../src/index.js";
import tailwindConfig from "../test-example/tailwind.config.js";
import autoprefixer from "autoprefixer";
import tailwindui from "@tailwindcss/ui";
import test from "ava";


test("snapshot of generated module", async assert => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        skipSaving: true,
    });

    assert.snapshot(generatedModule);
});


test("snapshot of generated module with autoprefixer", async assert => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [autoprefixer],
        tailwindConfig,
        skipSaving: true,
    });

    assert.snapshot(generatedModule);
});


test("snapshot of generated module with tailwindui", async assert => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [tailwindui],
        tailwindConfig,
        skipSaving: true,
    });

    assert.snapshot(generatedModule);
});

