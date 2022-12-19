import * as generate from "./generate";
import * as color from "../color";
import { RecursiveKeyValuePair } from "tailwindcss/types/config";

// TODO do not expose Opacity(..)?
const hardcodedNames = ["Color", "Opacity(..)", "toProperty", "withOpacity", "arbitraryRgb", "arbitraryRgba", "arbitraryOpacityPct"];

export function generateElmModule(moduleName: string, expandedColors: [string, string][]): string {
    return [
        generate.elmModuleHeader({
            moduleName,
            exposing: [...hardcodedNames, ...( expandedColors.map((( [color, _] ) => color)) )],
            imports: [
                generate.singleLine("import Css"),
            ],
            moduleDocs: ""
        }),
        colorType(),
        generateColors(expandedColors)
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


toProperty : String -> (String -> String) -> String -> Color -> Css.Style
toProperty propertyName colorEmbeddedInValue variableName color =
    case color of
        Color mode r g b opacity ->
            case opacity of
                Opacity op ->
                    Css.property propertyName (colorEmbeddedInValue (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / " ++ op ++ ")"))

                ViaVariable ->
                    Css.batch
                        [ Css.property variableName "1"
                        , Css.property propertyName (colorEmbeddedInValue (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / var(" ++ variableName ++ "))"))
                        ]

        Keyword keyword ->
            Css.property propertyName keyword


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
            return `${colorName} : Color
${colorName} =
    Keyword "${colorValue}"
`;
        }

        const [r, g, b] = parsedColor.color;

        let opacity = "ViaVariable";
        if (parsedColor.alpha != null) {
            opacity = `(Opacity "${parsedColor.alpha}")`;
        }

        return `${colorName} : Color
${colorName} =
    Color "${parsedColor.mode}" "${r}" "${g}" "${b}" ${opacity}
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

// export function expandOpacities()