import elmTailwindOrigami from "../src/index.js";
import tailwindConfig from "./tailwind.config.js";
import tailwindcss from "tailwindcss";

export const plugins = [
    tailwindcss(tailwindConfig),
    // test running with no params
    elmTailwindOrigami,
    // test optional params
    // elmTailwindOrigami({
    //     baseTailwindCSS: "./tailwind.css",
    //     rootOutputDir: "./gen",
    //     rootModule: "Tailwind",
    // }),
]
