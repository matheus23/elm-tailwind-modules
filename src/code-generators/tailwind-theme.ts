import * as generate from "./generate";
import * as color from "../color";
import { RecursiveKeyValuePair } from "tailwindcss/types/config";
import { toElmName } from "../helpers";
import { DocumentationGenerator, themeModuleDocumentation } from "../docs";

export function generateElmModule(
    moduleName: string,
    expandedColors: [string, string][],
    expandedOpacities: Record<string, string>,
    docs: DocumentationGenerator
): string {
    const definedColors = expandedColors.map((( [color, _] ) => color));
    const definedOpacities = Object.keys(expandedOpacities);

    return [
        generate.elmModuleHeader({
            moduleName,
            exposing: [
                "Color",
                ...definedColors,
                // TODO do not expose Opacity(..)?
                "Opacity(..)",
                "withOpacity",
                ...definedOpacities,
                "arbitraryRgb",
                "arbitraryRgba",
                "arbitraryOpacityPct",
                "internal"
            ],
            imports: [
                generate.singleLine("import Css"),
            ],
            moduleDocs: themeModuleDocumentation(definedColors, definedOpacities),
        }),
        colorType(),
        generateColors(expandedColors, docs),
        generateOpacities(expandedOpacities, docs),
    ].join("");
}

function colorType() {
    return `

{-| The type for tailwind colors.

You should never need to construct values of this type manually.
If you find the need to do so, use \`arbitraryRgb\` or similar functions instead.

Values of this type can be found in this module.

They can be used with tailwind utility functions like \`bg_color\`.

-}
type Color
    = Color String String String String Opacity
    | Keyword String


{-| The type for tailwind opacities.

You should never construct values of this type manually.
If you find the need to do so, use \`arbitraryOpacityPct\` instead.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the \`withOpacity\` function.

-}
type Opacity
    = Opacity String
    | ViaVariable


{-| These are internal functions used by elm-tailwind-modules to generate the
tailwind utilities in \`Utilities.elm\`.

You should never need to use them.

-}
internal : { propertyWithColor : String -> (String -> String) -> Maybe String -> Color -> Css.Style }
internal =
    { propertyWithColor =
        \\property embedColor opacityVarName color ->
            case color of
                Color mode r g b opacity ->
                    case ( opacity, opacityVarName ) of
                        ( Opacity op, _ ) ->
                            Css.property property (embedColor (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / " ++ op ++ ")"))

                        ( ViaVariable, Just varName ) ->
                            Css.batch
                                [ Css.property varName "1"
                                , Css.property property (embedColor (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / var(" ++ varName ++ "))"))
                                ]

                        ( ViaVariable, Nothing ) ->
                            Css.property property (embedColor (mode ++ "(" ++ r ++ " " ++ g ++ " " ++ b ++ " / 1.0)"))

                Keyword keyword ->
                    Css.property property keyword
    }


{-| Attach an opacity to a color.
-}
withOpacity : Opacity -> Color -> Color
withOpacity opacity color =
    case color of
        Keyword k ->
            Keyword k

        Color mode r g b _ ->
            Color mode r g b opacity


{-| Construct a Color value from red, green, and blue values (each between 0 and 255).
-}
arbitraryRgb : Int -> Int -> Int -> Color
arbitraryRgb r g b =
    Color "rgb" (String.fromInt r) (String.fromInt g) (String.fromInt b) ViaVariable


{-| Construct a Color value from red, green, and blue values (each between 0 and 255)
and an opacity value between 0 and 1.
-}
arbitraryRgba : Int -> Int -> Int -> Float -> Color
arbitraryRgba r g b alpha =
    Color "rgba" (String.fromInt r) (String.fromInt g) (String.fromInt b) (Opacity (String.fromFloat alpha))


{-| Construct an Opacity value from a given percentage (between 0 and 100),
where 0 means transparent and 100 means opaque.
-}
arbitraryOpacityPct : Int -> Opacity
arbitraryOpacityPct pct =
    Opacity (String.fromInt pct ++ "%")
`

}

function generateColors(expandedColors: [string, string][], docs: DocumentationGenerator) {
    return expandedColors.map(([colorName, colorValue]) => {
        const elmValue = (() => {
            const parsedColor = color.parseColor(colorValue);

            if (parsedColor == null) {
                return `Keyword "${colorValue}"`;
            }

            const [r, g, b] = parsedColor.color;

            let opacity = "ViaVariable";
            if (parsedColor.alpha != null) {
                opacity = `(Opacity "${parsedColor.alpha}")`;
            }

            return `Color "${parsedColor.mode}" "${r}" "${g}" "${b}" ${opacity}`;
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
    Opacity "${opacityValue}"
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
