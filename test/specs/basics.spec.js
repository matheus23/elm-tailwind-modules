import elmTailwindOrigami from "../../src/index.js";
import tailwindConfig from "../tailwind.config.js";
import autoprefixer from "autoprefixer";


test("snapshot of generated module", async () => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.Basic",
        postcssPlugins: [],
        tailwindConfig,
        skipSaving: true,
    });

    expect(generatedModule).toMatchSnapshot();
});

test("snapshot of generated module with autoprefixer", async () => {
    const generatedModule = await elmTailwindOrigami({
        directory: "./test/src/",
        moduleName: "Tailwind.WithAutoprefixer",
        postcssPlugins: [autoprefixer],
        tailwindConfig,
        skipSaving: true,
    });

    expect(generatedModule).toMatchSnapshot();
});
