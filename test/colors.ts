import test, { ExecutionContext } from "ava";
import { Config } from "tailwindcss"
// @ts-ignore
import resolveConfig from "tailwindcss/resolveConfig.js";

import * as color from "../src/color";
import * as tailwindThemeGeneration from "../src/code-generators/tailwind-theme";


const tailwindConfig: Config = {
    theme: {
        extend: {
            colors: {
                "tahiti": {
                    light: "#67e8f9",
                    DEFAULT: "#06b6d4",
                    dark: "#0e7490",
                    "by-name": "rebeccapurple",
                    "by-hex": "#00ff00",
                    "by-rgb": "rgb(214, 122, 127)",
                    "by-hsl": "hsl(30, 100%, 50%)",
                    "by-hsl-deg": "hsl(30deg 100% 50%)",
                    "by-hsla": "hsla(30, 100%, 50%, .3)",
                    // "by-hwb": "hwb(1.5708rad 20% 10% / 0.7)", can't be parsed
                },
            },
        },
    },
    content: ["intentionally.empty"],
    variants: [],
    plugins: [],
};

// @ts-ignore
const resolvedConfig = resolveConfig(tailwindConfig);
const resolvedColors = tailwindThemeGeneration.expandColors([], resolvedConfig.theme.colors);
const ignoredColors = [
    "inherit",
    "transparent",
    "current",
];

for (const [colorName, colorValue] of resolvedColors) {
    const parsed = color.parseColor(colorValue);

    if (ignoredColors.includes(colorName)) {
        continue;
    }

    if (parsed == null) {
        throw new Error(`Can't parse color "${colorName}": ${colorValue}`);
    }

    test(`${colorName}: ${colorValue} - formatted can be regex-detected`, async t => {
        const formatted = color.formatColor(parsed);
        const regex = color.colorDetectionRegex(parsed);
        const match = formatted.match(regex);

        t.assert(match != null, `No match: "${formatted}".match(${regex}))`)
    });

    test(`${colorName}: ${colorValue} - formatted with opacity variable can be regex-detected`, async t => {
        // this simulates what tailwindcss is doing
        const alpha = parsed.alpha || "var(--tw-something-opacity)";
        const withAlpha = { ...parsed, alpha };
        const formatted = color.formatColor(withAlpha);
        const regex = color.colorDetectionRegex(parsed);
        const match = formatted.match(regex);

        t.assert(match != null, `No match: "${formatted}".match(${regex}))`)
    })
}
