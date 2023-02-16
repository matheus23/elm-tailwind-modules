import * as generate from "./generate";
import * as color from "../color";
import { RecursiveKeyValuePair } from "tailwindcss/types/config";
import { toElmName } from "../helpers";
import { DocumentationGenerator, themeModuleDocumentation } from "../docs";

export function generateElmModule(
    moduleNamePrefix: string,
    expandedColors: [string, string][],
    expandedOpacities: Record<string, string>,
    docs: DocumentationGenerator
): string {
    const definedColors = expandedColors.map((( [color, _] ) => color));
    const definedOpacities = Object.keys(expandedOpacities);
    const moduleName = `${moduleNamePrefix}.Theme`

    return [
        generate.elmModuleHeader({
            moduleName,
            exposing: [
                "Color",
                ...definedColors,
                "Opacity",
                ...definedOpacities,
            ],
            imports: [
                generate.singleLine("import Css"),
                generate.singleLine("import Tailwind.Color as Tw"),
            ],
            moduleDocs: themeModuleDocumentation(definedColors, definedOpacities),
        }),
        types(),
        generateColors(expandedColors, docs),
        generateOpacities(expandedOpacities, docs),
    ].join("");
}

function types() {
    return `

{-| The type for tailwind colors.

Values of this type can be found in this module.

They can be used with tailwind utility functions like \`bg_color\`.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like \`arbitraryRgb\`.

-}
type alias Color
    = Tw.Color


{-| The type for tailwind opacities.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the \`withOpacity\` function.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like \`arbitraryOpactiyPct\`.

-}
type alias Opacity
    = Tw.Opacity
`

}

function generateColors(expandedColors: [string, string][], docs: DocumentationGenerator) {
    return expandedColors.map(([colorName, colorValue]) => {
        const elmValue = (() => {
            const parsedColor = color.parseColor(colorValue);

            if (parsedColor == null) {
                return `Tw.Keyword "${colorValue}"`;
            }

            const [r, g, b] = parsedColor.color;

            let opacity = "Tw.ViaVariable";
            if (parsedColor.alpha != null) {
                opacity = `(Tw.Opacity "${parsedColor.alpha}")`;
            }

            return `Tw.Color "${parsedColor.mode}" "${r}" "${g}" "${b}" ${opacity}`;
        })();

        return `
${docs.themeColorDefinition(colorName, colorValue)}
${colorName} : Color
${colorName} =
    ${elmValue}
`;
    }).join("");
}

function generateOpacities(opacities: Record<string, string>, docs: DocumentationGenerator) {
    return Object.entries(opacities).map(([opacityName, opacityValue]) => {
        return `
${docs.themeOpacityDefinition(opacityName, opacityValue)}
${opacityName} : Opacity
${opacityName} =
    Tw.Opacity "${opacityValue}"
`;
    }).join("");
}

export function expandColors(keysSoFar: string[], colors: RecursiveKeyValuePair): [string, string][] {
    return Object.entries(colors).flatMap(([key, value]) => {
        if (typeof value === 'string') {
            const finalKey = key === "DEFAULT" ? [] : [ key ];
            return [[toElmName([  ...keysSoFar, ...finalKey ].join('_')), value]]
        } else {
            return expandColors([key, ...keysSoFar], value)
        }
    })
}

export function expandOpacities(opacities: Record<string, string>): Record<string, string> {
    const expanded: Record<string, string> = {};
    for (const [suffix, value] of Object.entries(opacities)) {
        expanded[`opacity${suffix}`] = value;
    }
    return expanded;
}
