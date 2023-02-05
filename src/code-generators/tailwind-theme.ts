import * as generate from "./generate";
import * as color from "../color";
import { RecursiveKeyValuePair } from "tailwindcss/types/config";
import { toElmName } from "../helpers";

// TODO do not expose Opacity(..)?
const hardcodedTypes = ["Color", "Opacity(..)"];
const hardcodedNames = ["internal", "withOpacity", "arbitraryRgb", "arbitraryRgba", "arbitraryOpacityPct"];

export function generateElmModule(moduleName: string, expandedColors: [string, string][], expandedOpacities: Record<string, string>): string {
    const definedNames = [...hardcodedNames, ...( expandedColors.map((( [color, _] ) => color)) ), ...Object.keys(expandedOpacities)].sort();

    return [
        generate.elmModuleHeader({
            moduleName,
            exposing: [...hardcodedTypes, ...definedNames],
            imports: [
                generate.singleLine("import Css"),
            ],
            moduleDocs: ""
        }),
        colorType(),
        generateColors(expandedColors),
        generateOpacities(expandedOpacities),
    ].join("\n");
}

function colorType() {
    return `
type Color
    = Color String String String String Opacity
    | Keyword String


type Opacity
    = Opacity String
    | ViaVariable


internal =
    { -- propertyWithColorEmbedded : String -> (String -> String) -> String -> Color -> Css.Style
      propertyWithColorEmbedded =
        \\property embedColor variableName color ->
            case color of
                Color mode r g b opacity ->
                    case opacity of
                        Opacity op ->
                            Css.property property (embedColor (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / " ++ op ++ ")"))

                        ViaVariable ->
                            Css.batch
                                [ Css.property variableName "1"
                                , Css.property property (embedColor (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / var(" ++ variableName ++ "))"))
                                ]

                Keyword keyword ->
                    Css.property property keyword
    }


withOpacity : Opacity -> Color -> Color
withOpacity opacity color =
    case color of
        Keyword k ->
            Keyword k

        Color mode r g b _ ->
            Color mode r g b opacity


arbitraryRgb : Int -> Int -> Int -> Color
arbitraryRgb r g b =
    Color "rgb" (String.fromInt r) (String.fromInt g) (String.fromInt b) ViaVariable


arbitraryRgba : Int -> Int -> Int -> Float -> Color
arbitraryRgba r g b alpha =
    Color "rgba" (String.fromInt r) (String.fromInt g) (String.fromInt b) (Opacity (String.fromFloat alpha))


arbitraryOpacityPct : Int -> Opacity
arbitraryOpacityPct pct =
    Opacity (String.fromInt pct ++ "%")
`

}

function generateColors(expandedColors: [string, string][]) {
    return expandedColors.map(([colorName, colorValue]) => {
        const parsedColor = color.parseColor(colorValue);

        if (parsedColor == null) {
            return `
${colorName} : Color
${colorName} =
    Keyword "${colorValue}"
`;
        }

        const [r, g, b] = parsedColor.color;

        let opacity = "ViaVariable";
        if (parsedColor.alpha != null) {
            opacity = `(Opacity "${parsedColor.alpha}")`;
        }

        return `
${colorName} : Color
${colorName} =
    Color "${parsedColor.mode}" "${r}" "${g}" "${b}" ${opacity}
`;
    }).join("\n");
}

function generateOpacities(opacities: Record<string, string>) {
    return Object.entries(opacities).map(([opacityName, opacityValue]) => {
        return `
${opacityName} : Opacity
${opacityName} =
    Opacity "${opacityValue}"
`;
    }).join("\n");
}

export function expandColors(keysSoFar: string[], colors: RecursiveKeyValuePair): [string, string][] {
    return Object.entries(colors).flatMap(([key, value]) => {
        if (typeof value === 'string') {
            return [[toElmName([  ...keysSoFar, key ].join('_')), value]]
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
