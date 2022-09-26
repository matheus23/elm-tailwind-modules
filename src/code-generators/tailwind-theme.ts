import * as generate from "./generate";
import { RecursiveKeyValuePair } from "tailwindcss/types/config";

export function generateElmModule(moduleName: string, expandedColors: [string, string][]): string {
    return [
        generate.elmModuleHeader({
            moduleName,
            exposing: ["Color", "toProperty", ...( expandedColors.map((( [color, value] ) => color)) )],
            imports: [
                generate.singleLine("import Css"),
            ],
            moduleDocs: ""
        }),
        colorType(),
        generateColors(expandedColors)
    ].join("");
}

function colorType() {
    return `type Color =
    Color String

type Opacity =
    Opacity String

toProperty : String -> Color -> Css.Style
toProperty propertyName (Color color) =
    Css.property propertyName ("rgb(" ++ color ++ ")")
`

}

function generateColors(expandedColors: [string, string][]) {
    return expandedColors.map(([colorName, colorValue]) => {
        return `${colorName} : Color
${colorName} =
    Color "${colorValue}"
`;
    }).join("\n\n");
}

export function expandColors(keysSoFar: string[], colors: RecursiveKeyValuePair): [string, string][] {
    return Object.entries(colors).flatMap(([key, value]) => {
        if (typeof value === 'string') {
            return [[[  ...keysSoFar, key ].join('_'), value]]
        } else {
            return expandColors([key, ...keysSoFar], value)
        }
    })
}
