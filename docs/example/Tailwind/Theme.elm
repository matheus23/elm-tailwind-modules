module Tailwind.Theme exposing
    ( Color
    , Opacity(..)
    , amber_100
    , amber_200
    , amber_300
    , amber_400
    , amber_50
    , amber_500
    , amber_600
    , amber_700
    , amber_800
    , amber_900
    , arbitraryOpacityPct
    , arbitraryRgb
    , arbitraryRgba
    , black
    , blue_100
    , blue_200
    , blue_300
    , blue_400
    , blue_50
    , blue_500
    , blue_600
    , blue_700
    , blue_800
    , blue_900
    , current
    , cyan_100
    , cyan_200
    , cyan_300
    , cyan_400
    , cyan_50
    , cyan_500
    , cyan_600
    , cyan_700
    , cyan_800
    , cyan_900
    , emerald_100
    , emerald_200
    , emerald_300
    , emerald_400
    , emerald_50
    , emerald_500
    , emerald_600
    , emerald_700
    , emerald_800
    , emerald_900
    , fuchsia_100
    , fuchsia_200
    , fuchsia_300
    , fuchsia_400
    , fuchsia_50
    , fuchsia_500
    , fuchsia_600
    , fuchsia_700
    , fuchsia_800
    , fuchsia_900
    , gray_100
    , gray_200
    , gray_300
    , gray_400
    , gray_50
    , gray_500
    , gray_600
    , gray_700
    , gray_800
    , gray_900
    , green_100
    , green_200
    , green_300
    , green_400
    , green_50
    , green_500
    , green_600
    , green_700
    , green_800
    , green_900
    , indigo_100
    , indigo_200
    , indigo_300
    , indigo_400
    , indigo_50
    , indigo_500
    , indigo_600
    , indigo_700
    , indigo_800
    , indigo_900
    , inherit
    , internal
    , lime_100
    , lime_200
    , lime_300
    , lime_400
    , lime_50
    , lime_500
    , lime_600
    , lime_700
    , lime_800
    , lime_900
    , neutral_100
    , neutral_200
    , neutral_300
    , neutral_400
    , neutral_50
    , neutral_500
    , neutral_600
    , neutral_700
    , neutral_800
    , neutral_900
    , opacity0
    , opacity10
    , opacity100
    , opacity20
    , opacity25
    , opacity30
    , opacity40
    , opacity5
    , opacity50
    , opacity60
    , opacity70
    , opacity75
    , opacity80
    , opacity90
    , opacity95
    , orange_100
    , orange_200
    , orange_300
    , orange_400
    , orange_50
    , orange_500
    , orange_600
    , orange_700
    , orange_800
    , orange_900
    , pink_100
    , pink_200
    , pink_300
    , pink_400
    , pink_50
    , pink_500
    , pink_600
    , pink_700
    , pink_800
    , pink_900
    , purple_100
    , purple_200
    , purple_300
    , purple_400
    , purple_50
    , purple_500
    , purple_600
    , purple_700
    , purple_800
    , purple_900
    , red_100
    , red_200
    , red_300
    , red_400
    , red_50
    , red_500
    , red_600
    , red_700
    , red_800
    , red_900
    , rose_100
    , rose_200
    , rose_300
    , rose_400
    , rose_50
    , rose_500
    , rose_600
    , rose_700
    , rose_800
    , rose_900
    , sky_100
    , sky_200
    , sky_300
    , sky_400
    , sky_50
    , sky_500
    , sky_600
    , sky_700
    , sky_800
    , sky_900
    , slate_100
    , slate_200
    , slate_300
    , slate_400
    , slate_50
    , slate_500
    , slate_600
    , slate_700
    , slate_800
    , slate_900
    , stone_100
    , stone_200
    , stone_300
    , stone_400
    , stone_50
    , stone_500
    , stone_600
    , stone_700
    , stone_800
    , stone_900
    , teal_100
    , teal_200
    , teal_300
    , teal_400
    , teal_50
    , teal_500
    , teal_600
    , teal_700
    , teal_800
    , teal_900
    , transparent
    , violet_100
    , violet_200
    , violet_300
    , violet_400
    , violet_50
    , violet_500
    , violet_600
    , violet_700
    , violet_800
    , violet_900
    , white
    , withOpacity
    , yellow_100
    , yellow_200
    , yellow_300
    , yellow_400
    , yellow_50
    , yellow_500
    , yellow_600
    , yellow_700
    , yellow_800
    , yellow_900
    , zinc_100
    , zinc_200
    , zinc_300
    , zinc_400
    , zinc_50
    , zinc_500
    , zinc_600
    , zinc_700
    , zinc_800
    , zinc_900
    )

import Css


type Color
    = Color String String String String Opacity
    | Keyword String


type Opacity
    = Opacity String
    | ViaVariable


internal =
    -- propertyWithColor : String -> (String -> String) -> Maybe String -> Color -> Css.Style
    { propertyWithColor =
        \property embedColor opacityVarName color ->
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


inherit : Color
inherit =
    Keyword "inherit"


current : Color
current =
    Keyword "currentColor"


transparent : Color
transparent =
    Color "rgb" "0" "0" "0" (Opacity "0")


black : Color
black =
    Color "rgb" "0" "0" "0" ViaVariable


white : Color
white =
    Color "rgb" "255" "255" "255" ViaVariable


slate_50 : Color
slate_50 =
    Color "rgb" "248" "250" "252" ViaVariable


slate_100 : Color
slate_100 =
    Color "rgb" "241" "245" "249" ViaVariable


slate_200 : Color
slate_200 =
    Color "rgb" "226" "232" "240" ViaVariable


slate_300 : Color
slate_300 =
    Color "rgb" "203" "213" "225" ViaVariable


slate_400 : Color
slate_400 =
    Color "rgb" "148" "163" "184" ViaVariable


slate_500 : Color
slate_500 =
    Color "rgb" "100" "116" "139" ViaVariable


slate_600 : Color
slate_600 =
    Color "rgb" "71" "85" "105" ViaVariable


slate_700 : Color
slate_700 =
    Color "rgb" "51" "65" "85" ViaVariable


slate_800 : Color
slate_800 =
    Color "rgb" "30" "41" "59" ViaVariable


slate_900 : Color
slate_900 =
    Color "rgb" "15" "23" "42" ViaVariable


gray_50 : Color
gray_50 =
    Color "rgb" "249" "250" "251" ViaVariable


gray_100 : Color
gray_100 =
    Color "rgb" "243" "244" "246" ViaVariable


gray_200 : Color
gray_200 =
    Color "rgb" "229" "231" "235" ViaVariable


gray_300 : Color
gray_300 =
    Color "rgb" "209" "213" "219" ViaVariable


gray_400 : Color
gray_400 =
    Color "rgb" "156" "163" "175" ViaVariable


gray_500 : Color
gray_500 =
    Color "rgb" "107" "114" "128" ViaVariable


gray_600 : Color
gray_600 =
    Color "rgb" "75" "85" "99" ViaVariable


gray_700 : Color
gray_700 =
    Color "rgb" "55" "65" "81" ViaVariable


gray_800 : Color
gray_800 =
    Color "rgb" "31" "41" "55" ViaVariable


gray_900 : Color
gray_900 =
    Color "rgb" "17" "24" "39" ViaVariable


zinc_50 : Color
zinc_50 =
    Color "rgb" "250" "250" "250" ViaVariable


zinc_100 : Color
zinc_100 =
    Color "rgb" "244" "244" "245" ViaVariable


zinc_200 : Color
zinc_200 =
    Color "rgb" "228" "228" "231" ViaVariable


zinc_300 : Color
zinc_300 =
    Color "rgb" "212" "212" "216" ViaVariable


zinc_400 : Color
zinc_400 =
    Color "rgb" "161" "161" "170" ViaVariable


zinc_500 : Color
zinc_500 =
    Color "rgb" "113" "113" "122" ViaVariable


zinc_600 : Color
zinc_600 =
    Color "rgb" "82" "82" "91" ViaVariable


zinc_700 : Color
zinc_700 =
    Color "rgb" "63" "63" "70" ViaVariable


zinc_800 : Color
zinc_800 =
    Color "rgb" "39" "39" "42" ViaVariable


zinc_900 : Color
zinc_900 =
    Color "rgb" "24" "24" "27" ViaVariable


neutral_50 : Color
neutral_50 =
    Color "rgb" "250" "250" "250" ViaVariable


neutral_100 : Color
neutral_100 =
    Color "rgb" "245" "245" "245" ViaVariable


neutral_200 : Color
neutral_200 =
    Color "rgb" "229" "229" "229" ViaVariable


neutral_300 : Color
neutral_300 =
    Color "rgb" "212" "212" "212" ViaVariable


neutral_400 : Color
neutral_400 =
    Color "rgb" "163" "163" "163" ViaVariable


neutral_500 : Color
neutral_500 =
    Color "rgb" "115" "115" "115" ViaVariable


neutral_600 : Color
neutral_600 =
    Color "rgb" "82" "82" "82" ViaVariable


neutral_700 : Color
neutral_700 =
    Color "rgb" "64" "64" "64" ViaVariable


neutral_800 : Color
neutral_800 =
    Color "rgb" "38" "38" "38" ViaVariable


neutral_900 : Color
neutral_900 =
    Color "rgb" "23" "23" "23" ViaVariable


stone_50 : Color
stone_50 =
    Color "rgb" "250" "250" "249" ViaVariable


stone_100 : Color
stone_100 =
    Color "rgb" "245" "245" "244" ViaVariable


stone_200 : Color
stone_200 =
    Color "rgb" "231" "229" "228" ViaVariable


stone_300 : Color
stone_300 =
    Color "rgb" "214" "211" "209" ViaVariable


stone_400 : Color
stone_400 =
    Color "rgb" "168" "162" "158" ViaVariable


stone_500 : Color
stone_500 =
    Color "rgb" "120" "113" "108" ViaVariable


stone_600 : Color
stone_600 =
    Color "rgb" "87" "83" "78" ViaVariable


stone_700 : Color
stone_700 =
    Color "rgb" "68" "64" "60" ViaVariable


stone_800 : Color
stone_800 =
    Color "rgb" "41" "37" "36" ViaVariable


stone_900 : Color
stone_900 =
    Color "rgb" "28" "25" "23" ViaVariable


red_50 : Color
red_50 =
    Color "rgb" "254" "242" "242" ViaVariable


red_100 : Color
red_100 =
    Color "rgb" "254" "226" "226" ViaVariable


red_200 : Color
red_200 =
    Color "rgb" "254" "202" "202" ViaVariable


red_300 : Color
red_300 =
    Color "rgb" "252" "165" "165" ViaVariable


red_400 : Color
red_400 =
    Color "rgb" "248" "113" "113" ViaVariable


red_500 : Color
red_500 =
    Color "rgb" "239" "68" "68" ViaVariable


red_600 : Color
red_600 =
    Color "rgb" "220" "38" "38" ViaVariable


red_700 : Color
red_700 =
    Color "rgb" "185" "28" "28" ViaVariable


red_800 : Color
red_800 =
    Color "rgb" "153" "27" "27" ViaVariable


red_900 : Color
red_900 =
    Color "rgb" "127" "29" "29" ViaVariable


orange_50 : Color
orange_50 =
    Color "rgb" "255" "247" "237" ViaVariable


orange_100 : Color
orange_100 =
    Color "rgb" "255" "237" "213" ViaVariable


orange_200 : Color
orange_200 =
    Color "rgb" "254" "215" "170" ViaVariable


orange_300 : Color
orange_300 =
    Color "rgb" "253" "186" "116" ViaVariable


orange_400 : Color
orange_400 =
    Color "rgb" "251" "146" "60" ViaVariable


orange_500 : Color
orange_500 =
    Color "rgb" "249" "115" "22" ViaVariable


orange_600 : Color
orange_600 =
    Color "rgb" "234" "88" "12" ViaVariable


orange_700 : Color
orange_700 =
    Color "rgb" "194" "65" "12" ViaVariable


orange_800 : Color
orange_800 =
    Color "rgb" "154" "52" "18" ViaVariable


orange_900 : Color
orange_900 =
    Color "rgb" "124" "45" "18" ViaVariable


amber_50 : Color
amber_50 =
    Color "rgb" "255" "251" "235" ViaVariable


amber_100 : Color
amber_100 =
    Color "rgb" "254" "243" "199" ViaVariable


amber_200 : Color
amber_200 =
    Color "rgb" "253" "230" "138" ViaVariable


amber_300 : Color
amber_300 =
    Color "rgb" "252" "211" "77" ViaVariable


amber_400 : Color
amber_400 =
    Color "rgb" "251" "191" "36" ViaVariable


amber_500 : Color
amber_500 =
    Color "rgb" "245" "158" "11" ViaVariable


amber_600 : Color
amber_600 =
    Color "rgb" "217" "119" "6" ViaVariable


amber_700 : Color
amber_700 =
    Color "rgb" "180" "83" "9" ViaVariable


amber_800 : Color
amber_800 =
    Color "rgb" "146" "64" "14" ViaVariable


amber_900 : Color
amber_900 =
    Color "rgb" "120" "53" "15" ViaVariable


yellow_50 : Color
yellow_50 =
    Color "rgb" "254" "252" "232" ViaVariable


yellow_100 : Color
yellow_100 =
    Color "rgb" "254" "249" "195" ViaVariable


yellow_200 : Color
yellow_200 =
    Color "rgb" "254" "240" "138" ViaVariable


yellow_300 : Color
yellow_300 =
    Color "rgb" "253" "224" "71" ViaVariable


yellow_400 : Color
yellow_400 =
    Color "rgb" "250" "204" "21" ViaVariable


yellow_500 : Color
yellow_500 =
    Color "rgb" "234" "179" "8" ViaVariable


yellow_600 : Color
yellow_600 =
    Color "rgb" "202" "138" "4" ViaVariable


yellow_700 : Color
yellow_700 =
    Color "rgb" "161" "98" "7" ViaVariable


yellow_800 : Color
yellow_800 =
    Color "rgb" "133" "77" "14" ViaVariable


yellow_900 : Color
yellow_900 =
    Color "rgb" "113" "63" "18" ViaVariable


lime_50 : Color
lime_50 =
    Color "rgb" "247" "254" "231" ViaVariable


lime_100 : Color
lime_100 =
    Color "rgb" "236" "252" "203" ViaVariable


lime_200 : Color
lime_200 =
    Color "rgb" "217" "249" "157" ViaVariable


lime_300 : Color
lime_300 =
    Color "rgb" "190" "242" "100" ViaVariable


lime_400 : Color
lime_400 =
    Color "rgb" "163" "230" "53" ViaVariable


lime_500 : Color
lime_500 =
    Color "rgb" "132" "204" "22" ViaVariable


lime_600 : Color
lime_600 =
    Color "rgb" "101" "163" "13" ViaVariable


lime_700 : Color
lime_700 =
    Color "rgb" "77" "124" "15" ViaVariable


lime_800 : Color
lime_800 =
    Color "rgb" "63" "98" "18" ViaVariable


lime_900 : Color
lime_900 =
    Color "rgb" "54" "83" "20" ViaVariable


green_50 : Color
green_50 =
    Color "rgb" "240" "253" "244" ViaVariable


green_100 : Color
green_100 =
    Color "rgb" "220" "252" "231" ViaVariable


green_200 : Color
green_200 =
    Color "rgb" "187" "247" "208" ViaVariable


green_300 : Color
green_300 =
    Color "rgb" "134" "239" "172" ViaVariable


green_400 : Color
green_400 =
    Color "rgb" "74" "222" "128" ViaVariable


green_500 : Color
green_500 =
    Color "rgb" "34" "197" "94" ViaVariable


green_600 : Color
green_600 =
    Color "rgb" "22" "163" "74" ViaVariable


green_700 : Color
green_700 =
    Color "rgb" "21" "128" "61" ViaVariable


green_800 : Color
green_800 =
    Color "rgb" "22" "101" "52" ViaVariable


green_900 : Color
green_900 =
    Color "rgb" "20" "83" "45" ViaVariable


emerald_50 : Color
emerald_50 =
    Color "rgb" "236" "253" "245" ViaVariable


emerald_100 : Color
emerald_100 =
    Color "rgb" "209" "250" "229" ViaVariable


emerald_200 : Color
emerald_200 =
    Color "rgb" "167" "243" "208" ViaVariable


emerald_300 : Color
emerald_300 =
    Color "rgb" "110" "231" "183" ViaVariable


emerald_400 : Color
emerald_400 =
    Color "rgb" "52" "211" "153" ViaVariable


emerald_500 : Color
emerald_500 =
    Color "rgb" "16" "185" "129" ViaVariable


emerald_600 : Color
emerald_600 =
    Color "rgb" "5" "150" "105" ViaVariable


emerald_700 : Color
emerald_700 =
    Color "rgb" "4" "120" "87" ViaVariable


emerald_800 : Color
emerald_800 =
    Color "rgb" "6" "95" "70" ViaVariable


emerald_900 : Color
emerald_900 =
    Color "rgb" "6" "78" "59" ViaVariable


teal_50 : Color
teal_50 =
    Color "rgb" "240" "253" "250" ViaVariable


teal_100 : Color
teal_100 =
    Color "rgb" "204" "251" "241" ViaVariable


teal_200 : Color
teal_200 =
    Color "rgb" "153" "246" "228" ViaVariable


teal_300 : Color
teal_300 =
    Color "rgb" "94" "234" "212" ViaVariable


teal_400 : Color
teal_400 =
    Color "rgb" "45" "212" "191" ViaVariable


teal_500 : Color
teal_500 =
    Color "rgb" "20" "184" "166" ViaVariable


teal_600 : Color
teal_600 =
    Color "rgb" "13" "148" "136" ViaVariable


teal_700 : Color
teal_700 =
    Color "rgb" "15" "118" "110" ViaVariable


teal_800 : Color
teal_800 =
    Color "rgb" "17" "94" "89" ViaVariable


teal_900 : Color
teal_900 =
    Color "rgb" "19" "78" "74" ViaVariable


cyan_50 : Color
cyan_50 =
    Color "rgb" "236" "254" "255" ViaVariable


cyan_100 : Color
cyan_100 =
    Color "rgb" "207" "250" "254" ViaVariable


cyan_200 : Color
cyan_200 =
    Color "rgb" "165" "243" "252" ViaVariable


cyan_300 : Color
cyan_300 =
    Color "rgb" "103" "232" "249" ViaVariable


cyan_400 : Color
cyan_400 =
    Color "rgb" "34" "211" "238" ViaVariable


cyan_500 : Color
cyan_500 =
    Color "rgb" "6" "182" "212" ViaVariable


cyan_600 : Color
cyan_600 =
    Color "rgb" "8" "145" "178" ViaVariable


cyan_700 : Color
cyan_700 =
    Color "rgb" "14" "116" "144" ViaVariable


cyan_800 : Color
cyan_800 =
    Color "rgb" "21" "94" "117" ViaVariable


cyan_900 : Color
cyan_900 =
    Color "rgb" "22" "78" "99" ViaVariable


sky_50 : Color
sky_50 =
    Color "rgb" "240" "249" "255" ViaVariable


sky_100 : Color
sky_100 =
    Color "rgb" "224" "242" "254" ViaVariable


sky_200 : Color
sky_200 =
    Color "rgb" "186" "230" "253" ViaVariable


sky_300 : Color
sky_300 =
    Color "rgb" "125" "211" "252" ViaVariable


sky_400 : Color
sky_400 =
    Color "rgb" "56" "189" "248" ViaVariable


sky_500 : Color
sky_500 =
    Color "rgb" "14" "165" "233" ViaVariable


sky_600 : Color
sky_600 =
    Color "rgb" "2" "132" "199" ViaVariable


sky_700 : Color
sky_700 =
    Color "rgb" "3" "105" "161" ViaVariable


sky_800 : Color
sky_800 =
    Color "rgb" "7" "89" "133" ViaVariable


sky_900 : Color
sky_900 =
    Color "rgb" "12" "74" "110" ViaVariable


blue_50 : Color
blue_50 =
    Color "rgb" "239" "246" "255" ViaVariable


blue_100 : Color
blue_100 =
    Color "rgb" "219" "234" "254" ViaVariable


blue_200 : Color
blue_200 =
    Color "rgb" "191" "219" "254" ViaVariable


blue_300 : Color
blue_300 =
    Color "rgb" "147" "197" "253" ViaVariable


blue_400 : Color
blue_400 =
    Color "rgb" "96" "165" "250" ViaVariable


blue_500 : Color
blue_500 =
    Color "rgb" "59" "130" "246" ViaVariable


blue_600 : Color
blue_600 =
    Color "rgb" "37" "99" "235" ViaVariable


blue_700 : Color
blue_700 =
    Color "rgb" "29" "78" "216" ViaVariable


blue_800 : Color
blue_800 =
    Color "rgb" "30" "64" "175" ViaVariable


blue_900 : Color
blue_900 =
    Color "rgb" "30" "58" "138" ViaVariable


indigo_50 : Color
indigo_50 =
    Color "rgb" "238" "242" "255" ViaVariable


indigo_100 : Color
indigo_100 =
    Color "rgb" "224" "231" "255" ViaVariable


indigo_200 : Color
indigo_200 =
    Color "rgb" "199" "210" "254" ViaVariable


indigo_300 : Color
indigo_300 =
    Color "rgb" "165" "180" "252" ViaVariable


indigo_400 : Color
indigo_400 =
    Color "rgb" "129" "140" "248" ViaVariable


indigo_500 : Color
indigo_500 =
    Color "rgb" "99" "102" "241" ViaVariable


indigo_600 : Color
indigo_600 =
    Color "rgb" "79" "70" "229" ViaVariable


indigo_700 : Color
indigo_700 =
    Color "rgb" "67" "56" "202" ViaVariable


indigo_800 : Color
indigo_800 =
    Color "rgb" "55" "48" "163" ViaVariable


indigo_900 : Color
indigo_900 =
    Color "rgb" "49" "46" "129" ViaVariable


violet_50 : Color
violet_50 =
    Color "rgb" "245" "243" "255" ViaVariable


violet_100 : Color
violet_100 =
    Color "rgb" "237" "233" "254" ViaVariable


violet_200 : Color
violet_200 =
    Color "rgb" "221" "214" "254" ViaVariable


violet_300 : Color
violet_300 =
    Color "rgb" "196" "181" "253" ViaVariable


violet_400 : Color
violet_400 =
    Color "rgb" "167" "139" "250" ViaVariable


violet_500 : Color
violet_500 =
    Color "rgb" "139" "92" "246" ViaVariable


violet_600 : Color
violet_600 =
    Color "rgb" "124" "58" "237" ViaVariable


violet_700 : Color
violet_700 =
    Color "rgb" "109" "40" "217" ViaVariable


violet_800 : Color
violet_800 =
    Color "rgb" "91" "33" "182" ViaVariable


violet_900 : Color
violet_900 =
    Color "rgb" "76" "29" "149" ViaVariable


purple_50 : Color
purple_50 =
    Color "rgb" "250" "245" "255" ViaVariable


purple_100 : Color
purple_100 =
    Color "rgb" "243" "232" "255" ViaVariable


purple_200 : Color
purple_200 =
    Color "rgb" "233" "213" "255" ViaVariable


purple_300 : Color
purple_300 =
    Color "rgb" "216" "180" "254" ViaVariable


purple_400 : Color
purple_400 =
    Color "rgb" "192" "132" "252" ViaVariable


purple_500 : Color
purple_500 =
    Color "rgb" "168" "85" "247" ViaVariable


purple_600 : Color
purple_600 =
    Color "rgb" "147" "51" "234" ViaVariable


purple_700 : Color
purple_700 =
    Color "rgb" "126" "34" "206" ViaVariable


purple_800 : Color
purple_800 =
    Color "rgb" "107" "33" "168" ViaVariable


purple_900 : Color
purple_900 =
    Color "rgb" "88" "28" "135" ViaVariable


fuchsia_50 : Color
fuchsia_50 =
    Color "rgb" "253" "244" "255" ViaVariable


fuchsia_100 : Color
fuchsia_100 =
    Color "rgb" "250" "232" "255" ViaVariable


fuchsia_200 : Color
fuchsia_200 =
    Color "rgb" "245" "208" "254" ViaVariable


fuchsia_300 : Color
fuchsia_300 =
    Color "rgb" "240" "171" "252" ViaVariable


fuchsia_400 : Color
fuchsia_400 =
    Color "rgb" "232" "121" "249" ViaVariable


fuchsia_500 : Color
fuchsia_500 =
    Color "rgb" "217" "70" "239" ViaVariable


fuchsia_600 : Color
fuchsia_600 =
    Color "rgb" "192" "38" "211" ViaVariable


fuchsia_700 : Color
fuchsia_700 =
    Color "rgb" "162" "28" "175" ViaVariable


fuchsia_800 : Color
fuchsia_800 =
    Color "rgb" "134" "25" "143" ViaVariable


fuchsia_900 : Color
fuchsia_900 =
    Color "rgb" "112" "26" "117" ViaVariable


pink_50 : Color
pink_50 =
    Color "rgb" "253" "242" "248" ViaVariable


pink_100 : Color
pink_100 =
    Color "rgb" "252" "231" "243" ViaVariable


pink_200 : Color
pink_200 =
    Color "rgb" "251" "207" "232" ViaVariable


pink_300 : Color
pink_300 =
    Color "rgb" "249" "168" "212" ViaVariable


pink_400 : Color
pink_400 =
    Color "rgb" "244" "114" "182" ViaVariable


pink_500 : Color
pink_500 =
    Color "rgb" "236" "72" "153" ViaVariable


pink_600 : Color
pink_600 =
    Color "rgb" "219" "39" "119" ViaVariable


pink_700 : Color
pink_700 =
    Color "rgb" "190" "24" "93" ViaVariable


pink_800 : Color
pink_800 =
    Color "rgb" "157" "23" "77" ViaVariable


pink_900 : Color
pink_900 =
    Color "rgb" "131" "24" "67" ViaVariable


rose_50 : Color
rose_50 =
    Color "rgb" "255" "241" "242" ViaVariable


rose_100 : Color
rose_100 =
    Color "rgb" "255" "228" "230" ViaVariable


rose_200 : Color
rose_200 =
    Color "rgb" "254" "205" "211" ViaVariable


rose_300 : Color
rose_300 =
    Color "rgb" "253" "164" "175" ViaVariable


rose_400 : Color
rose_400 =
    Color "rgb" "251" "113" "133" ViaVariable


rose_500 : Color
rose_500 =
    Color "rgb" "244" "63" "94" ViaVariable


rose_600 : Color
rose_600 =
    Color "rgb" "225" "29" "72" ViaVariable


rose_700 : Color
rose_700 =
    Color "rgb" "190" "18" "60" ViaVariable


rose_800 : Color
rose_800 =
    Color "rgb" "159" "18" "57" ViaVariable


rose_900 : Color
rose_900 =
    Color "rgb" "136" "19" "55" ViaVariable


opacity0 : Opacity
opacity0 =
    Opacity "0"


opacity5 : Opacity
opacity5 =
    Opacity "0.05"


opacity10 : Opacity
opacity10 =
    Opacity "0.1"


opacity20 : Opacity
opacity20 =
    Opacity "0.2"


opacity25 : Opacity
opacity25 =
    Opacity "0.25"


opacity30 : Opacity
opacity30 =
    Opacity "0.3"


opacity40 : Opacity
opacity40 =
    Opacity "0.4"


opacity50 : Opacity
opacity50 =
    Opacity "0.5"


opacity60 : Opacity
opacity60 =
    Opacity "0.6"


opacity70 : Opacity
opacity70 =
    Opacity "0.7"


opacity75 : Opacity
opacity75 =
    Opacity "0.75"


opacity80 : Opacity
opacity80 =
    Opacity "0.8"


opacity90 : Opacity
opacity90 =
    Opacity "0.9"


opacity95 : Opacity
opacity95 =
    Opacity "0.95"


opacity100 : Opacity
opacity100 =
    Opacity "1"
