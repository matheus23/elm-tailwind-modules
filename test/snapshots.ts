import test from "ava";
import elmTailwindModules from "../src/index";
// @ts-ignore
import tailwindConfig from "../test-example/tailwind.config.js";
import autoprefixer from "autoprefixer";
// @ts-ignore
import twForms from "@tailwindcss/forms";
// @ts-ignore
import twAspectRatio from "@tailwindcss/aspect-ratio";
// @ts-ignore
import twTypography from "@tailwindcss/typography";


test("snapshot of generated module", async t => {
    const generatedModules = await elmTailwindModules({
        directory: null,
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
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
        tailwindConfig,
        debugFunction: t.log,
    });

    t.snapshot(generatedModules.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModules.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});


test("snapshot of generated module with tailwindui", async t => {
    const generatedModules = await elmTailwindModules({
        directory: "./test-example/src/",
        moduleName: "Tailwind.WithPlugins",
        postcssPlugins: [twForms, twAspectRatio, twTypography],
        tailwindConfig,
        debugFunction: t.log,
    });

    t.snapshot(generatedModules.utilitiesModule, { id: t.title + ": Utilities Module" });
    t.snapshot(generatedModules.breakpointsModule, { id: t.title + ": Breakpoints Module" });
});

