import test, { ExecutionContext } from "ava";
import { Config } from "tailwindcss"

import * as elmTailwindModules from "../src/index";


async function generateModulesWithDefaultColorConfig(t: ExecutionContext) {
    const tailwindConfig: Config = {
        theme: {
            colors: {
                'tahiti': {
                    light: '#67e8f9',
                    DEFAULT: '#06b6d4',
                    dark: '#0e7490',
                },
            },
            extend: {},
        },
        content: ["intentionally.empty"],
        variants: [],
        plugins: [],
    }

    return await elmTailwindModules.run({
        moduleName: "Tailwind",
        postcssPlugins: [],
        tailwindConfig,
        logFunction: t.log,
    });
}


test("generated utilities module doesn't contain color names", async t => {
    const generatedModules = await generateModulesWithDefaultColorConfig(t);

    const matches = allMapped(generatedModules.utilitiesModule.matchAll(/^.*tahiti.*$/gm), match => match[0]);

    t.assert(matches.length === 0, `There exist line matches like "${matches[0]}"`);
})


test("generated theme module doesn't contain default color key", async t => {
    const generatedModules = await generateModulesWithDefaultColorConfig(t);

    const matches = allMapped(generatedModules.themeModule.matchAll(/^.*DEFAULT.*$/gm), match => match[0]);

    t.assert(matches.length === 0, `There exist line matches like "${matches[0]}"`);
})


function allMapped<T, S>(source: Iterable<T>, f: (t: T) => S): S[] {
    const arr: S[] = []

    for (const entry of source) {
        arr.push(f(entry))
    }

    return arr
}
