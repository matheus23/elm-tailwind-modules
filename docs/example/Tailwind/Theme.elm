module Tailwind.Theme exposing
    ( Color
    , inherit
    , current
    , transparent
    , black
    , white
    , slate_50
    , slate_100
    , slate_200
    , slate_300
    , slate_400
    , slate_500
    , slate_600
    , slate_700
    , slate_800
    , slate_900
    , slate_950
    , gray_50
    , gray_100
    , gray_200
    , gray_300
    , gray_400
    , gray_500
    , gray_600
    , gray_700
    , gray_800
    , gray_900
    , gray_950
    , zinc_50
    , zinc_100
    , zinc_200
    , zinc_300
    , zinc_400
    , zinc_500
    , zinc_600
    , zinc_700
    , zinc_800
    , zinc_900
    , zinc_950
    , neutral_50
    , neutral_100
    , neutral_200
    , neutral_300
    , neutral_400
    , neutral_500
    , neutral_600
    , neutral_700
    , neutral_800
    , neutral_900
    , neutral_950
    , stone_50
    , stone_100
    , stone_200
    , stone_300
    , stone_400
    , stone_500
    , stone_600
    , stone_700
    , stone_800
    , stone_900
    , stone_950
    , red_50
    , red_100
    , red_200
    , red_300
    , red_400
    , red_500
    , red_600
    , red_700
    , red_800
    , red_900
    , red_950
    , orange_50
    , orange_100
    , orange_200
    , orange_300
    , orange_400
    , orange_500
    , orange_600
    , orange_700
    , orange_800
    , orange_900
    , orange_950
    , amber_50
    , amber_100
    , amber_200
    , amber_300
    , amber_400
    , amber_500
    , amber_600
    , amber_700
    , amber_800
    , amber_900
    , amber_950
    , yellow_50
    , yellow_100
    , yellow_200
    , yellow_300
    , yellow_400
    , yellow_500
    , yellow_600
    , yellow_700
    , yellow_800
    , yellow_900
    , yellow_950
    , lime_50
    , lime_100
    , lime_200
    , lime_300
    , lime_400
    , lime_500
    , lime_600
    , lime_700
    , lime_800
    , lime_900
    , lime_950
    , green_50
    , green_100
    , green_200
    , green_300
    , green_400
    , green_500
    , green_600
    , green_700
    , green_800
    , green_900
    , green_950
    , emerald_50
    , emerald_100
    , emerald_200
    , emerald_300
    , emerald_400
    , emerald_500
    , emerald_600
    , emerald_700
    , emerald_800
    , emerald_900
    , emerald_950
    , teal_50
    , teal_100
    , teal_200
    , teal_300
    , teal_400
    , teal_500
    , teal_600
    , teal_700
    , teal_800
    , teal_900
    , teal_950
    , cyan_50
    , cyan_100
    , cyan_200
    , cyan_300
    , cyan_400
    , cyan_500
    , cyan_600
    , cyan_700
    , cyan_800
    , cyan_900
    , cyan_950
    , sky_50
    , sky_100
    , sky_200
    , sky_300
    , sky_400
    , sky_500
    , sky_600
    , sky_700
    , sky_800
    , sky_900
    , sky_950
    , blue_50
    , blue_100
    , blue_200
    , blue_300
    , blue_400
    , blue_500
    , blue_600
    , blue_700
    , blue_800
    , blue_900
    , blue_950
    , indigo_50
    , indigo_100
    , indigo_200
    , indigo_300
    , indigo_400
    , indigo_500
    , indigo_600
    , indigo_700
    , indigo_800
    , indigo_900
    , indigo_950
    , violet_50
    , violet_100
    , violet_200
    , violet_300
    , violet_400
    , violet_500
    , violet_600
    , violet_700
    , violet_800
    , violet_900
    , violet_950
    , purple_50
    , purple_100
    , purple_200
    , purple_300
    , purple_400
    , purple_500
    , purple_600
    , purple_700
    , purple_800
    , purple_900
    , purple_950
    , fuchsia_50
    , fuchsia_100
    , fuchsia_200
    , fuchsia_300
    , fuchsia_400
    , fuchsia_500
    , fuchsia_600
    , fuchsia_700
    , fuchsia_800
    , fuchsia_900
    , fuchsia_950
    , pink_50
    , pink_100
    , pink_200
    , pink_300
    , pink_400
    , pink_500
    , pink_600
    , pink_700
    , pink_800
    , pink_900
    , pink_950
    , rose_50
    , rose_100
    , rose_200
    , rose_300
    , rose_400
    , rose_500
    , rose_600
    , rose_700
    , rose_800
    , rose_900
    , rose_950
    , Opacity
    , opacity0
    , opacity5
    , opacity10
    , opacity20
    , opacity25
    , opacity30
    , opacity40
    , opacity50
    , opacity60
    , opacity70
    , opacity75
    , opacity80
    , opacity90
    , opacity95
    , opacity100
    )

{-|


## This Tailwind Theme

This module contains all colors and opacities from your tailwind configuration.

If you want to extend the set of available colors or opacities, take a look [configuring tailwind].


### Colors

@docs Color
@docs inherit
@docs current
@docs transparent
@docs black
@docs white
@docs slate_50
@docs slate_100
@docs slate_200
@docs slate_300
@docs slate_400
@docs slate_500
@docs slate_600
@docs slate_700
@docs slate_800
@docs slate_900
@docs slate_950
@docs gray_50
@docs gray_100
@docs gray_200
@docs gray_300
@docs gray_400
@docs gray_500
@docs gray_600
@docs gray_700
@docs gray_800
@docs gray_900
@docs gray_950
@docs zinc_50
@docs zinc_100
@docs zinc_200
@docs zinc_300
@docs zinc_400
@docs zinc_500
@docs zinc_600
@docs zinc_700
@docs zinc_800
@docs zinc_900
@docs zinc_950
@docs neutral_50
@docs neutral_100
@docs neutral_200
@docs neutral_300
@docs neutral_400
@docs neutral_500
@docs neutral_600
@docs neutral_700
@docs neutral_800
@docs neutral_900
@docs neutral_950
@docs stone_50
@docs stone_100
@docs stone_200
@docs stone_300
@docs stone_400
@docs stone_500
@docs stone_600
@docs stone_700
@docs stone_800
@docs stone_900
@docs stone_950
@docs red_50
@docs red_100
@docs red_200
@docs red_300
@docs red_400
@docs red_500
@docs red_600
@docs red_700
@docs red_800
@docs red_900
@docs red_950
@docs orange_50
@docs orange_100
@docs orange_200
@docs orange_300
@docs orange_400
@docs orange_500
@docs orange_600
@docs orange_700
@docs orange_800
@docs orange_900
@docs orange_950
@docs amber_50
@docs amber_100
@docs amber_200
@docs amber_300
@docs amber_400
@docs amber_500
@docs amber_600
@docs amber_700
@docs amber_800
@docs amber_900
@docs amber_950
@docs yellow_50
@docs yellow_100
@docs yellow_200
@docs yellow_300
@docs yellow_400
@docs yellow_500
@docs yellow_600
@docs yellow_700
@docs yellow_800
@docs yellow_900
@docs yellow_950
@docs lime_50
@docs lime_100
@docs lime_200
@docs lime_300
@docs lime_400
@docs lime_500
@docs lime_600
@docs lime_700
@docs lime_800
@docs lime_900
@docs lime_950
@docs green_50
@docs green_100
@docs green_200
@docs green_300
@docs green_400
@docs green_500
@docs green_600
@docs green_700
@docs green_800
@docs green_900
@docs green_950
@docs emerald_50
@docs emerald_100
@docs emerald_200
@docs emerald_300
@docs emerald_400
@docs emerald_500
@docs emerald_600
@docs emerald_700
@docs emerald_800
@docs emerald_900
@docs emerald_950
@docs teal_50
@docs teal_100
@docs teal_200
@docs teal_300
@docs teal_400
@docs teal_500
@docs teal_600
@docs teal_700
@docs teal_800
@docs teal_900
@docs teal_950
@docs cyan_50
@docs cyan_100
@docs cyan_200
@docs cyan_300
@docs cyan_400
@docs cyan_500
@docs cyan_600
@docs cyan_700
@docs cyan_800
@docs cyan_900
@docs cyan_950
@docs sky_50
@docs sky_100
@docs sky_200
@docs sky_300
@docs sky_400
@docs sky_500
@docs sky_600
@docs sky_700
@docs sky_800
@docs sky_900
@docs sky_950
@docs blue_50
@docs blue_100
@docs blue_200
@docs blue_300
@docs blue_400
@docs blue_500
@docs blue_600
@docs blue_700
@docs blue_800
@docs blue_900
@docs blue_950
@docs indigo_50
@docs indigo_100
@docs indigo_200
@docs indigo_300
@docs indigo_400
@docs indigo_500
@docs indigo_600
@docs indigo_700
@docs indigo_800
@docs indigo_900
@docs indigo_950
@docs violet_50
@docs violet_100
@docs violet_200
@docs violet_300
@docs violet_400
@docs violet_500
@docs violet_600
@docs violet_700
@docs violet_800
@docs violet_900
@docs violet_950
@docs purple_50
@docs purple_100
@docs purple_200
@docs purple_300
@docs purple_400
@docs purple_500
@docs purple_600
@docs purple_700
@docs purple_800
@docs purple_900
@docs purple_950
@docs fuchsia_50
@docs fuchsia_100
@docs fuchsia_200
@docs fuchsia_300
@docs fuchsia_400
@docs fuchsia_500
@docs fuchsia_600
@docs fuchsia_700
@docs fuchsia_800
@docs fuchsia_900
@docs fuchsia_950
@docs pink_50
@docs pink_100
@docs pink_200
@docs pink_300
@docs pink_400
@docs pink_500
@docs pink_600
@docs pink_700
@docs pink_800
@docs pink_900
@docs pink_950
@docs rose_50
@docs rose_100
@docs rose_200
@docs rose_300
@docs rose_400
@docs rose_500
@docs rose_600
@docs rose_700
@docs rose_800
@docs rose_900
@docs rose_950


### Opacities

@docs Opacity
@docs opacity0
@docs opacity5
@docs opacity10
@docs opacity20
@docs opacity25
@docs opacity30
@docs opacity40
@docs opacity50
@docs opacity60
@docs opacity70
@docs opacity75
@docs opacity80
@docs opacity90
@docs opacity95
@docs opacity100

[configuring tailwind]: https://tailwindcss.com/docs/responsive-design

-}

import Tailwind.Color as Tw


{-| The type for tailwind colors.

Values of this type can be found in this module.

They can be used with tailwind utility functions like `bg_color`.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryRgb`.

-}
type alias Color =
    Tw.Color


{-| The type for tailwind opacities.

Values of this type can be found in this module.

They can be used to modify the default opacities associated with colors
using the `withOpacity` function.

If you want to generate custom values, install the [elm-tailwind-modules-base](https://package.elm-lang.org/packages/matheus23/elm-tailwind-modules-base/latest/)
library and its utilities like `arbitraryOpactiyPct`.

-}
type alias Opacity =
    Tw.Opacity


inherit : Color
inherit =
    Tw.Keyword "inherit"


current : Color
current =
    Tw.Keyword "currentColor"


transparent : Color
transparent =
    Tw.Color "rgb" "0" "0" "0" (Tw.Opacity "0")


black : Color
black =
    Tw.Color "rgb" "0" "0" "0" Tw.ViaVariable


white : Color
white =
    Tw.Color "rgb" "255" "255" "255" Tw.ViaVariable


slate_50 : Color
slate_50 =
    Tw.Color "rgb" "248" "250" "252" Tw.ViaVariable


slate_100 : Color
slate_100 =
    Tw.Color "rgb" "241" "245" "249" Tw.ViaVariable


slate_200 : Color
slate_200 =
    Tw.Color "rgb" "226" "232" "240" Tw.ViaVariable


slate_300 : Color
slate_300 =
    Tw.Color "rgb" "203" "213" "225" Tw.ViaVariable


slate_400 : Color
slate_400 =
    Tw.Color "rgb" "148" "163" "184" Tw.ViaVariable


slate_500 : Color
slate_500 =
    Tw.Color "rgb" "100" "116" "139" Tw.ViaVariable


slate_600 : Color
slate_600 =
    Tw.Color "rgb" "71" "85" "105" Tw.ViaVariable


slate_700 : Color
slate_700 =
    Tw.Color "rgb" "51" "65" "85" Tw.ViaVariable


slate_800 : Color
slate_800 =
    Tw.Color "rgb" "30" "41" "59" Tw.ViaVariable


slate_900 : Color
slate_900 =
    Tw.Color "rgb" "15" "23" "42" Tw.ViaVariable


slate_950 : Color
slate_950 =
    Tw.Color "rgb" "2" "6" "23" Tw.ViaVariable


gray_50 : Color
gray_50 =
    Tw.Color "rgb" "249" "250" "251" Tw.ViaVariable


gray_100 : Color
gray_100 =
    Tw.Color "rgb" "243" "244" "246" Tw.ViaVariable


gray_200 : Color
gray_200 =
    Tw.Color "rgb" "229" "231" "235" Tw.ViaVariable


gray_300 : Color
gray_300 =
    Tw.Color "rgb" "209" "213" "219" Tw.ViaVariable


gray_400 : Color
gray_400 =
    Tw.Color "rgb" "156" "163" "175" Tw.ViaVariable


gray_500 : Color
gray_500 =
    Tw.Color "rgb" "107" "114" "128" Tw.ViaVariable


gray_600 : Color
gray_600 =
    Tw.Color "rgb" "75" "85" "99" Tw.ViaVariable


gray_700 : Color
gray_700 =
    Tw.Color "rgb" "55" "65" "81" Tw.ViaVariable


gray_800 : Color
gray_800 =
    Tw.Color "rgb" "31" "41" "55" Tw.ViaVariable


gray_900 : Color
gray_900 =
    Tw.Color "rgb" "17" "24" "39" Tw.ViaVariable


gray_950 : Color
gray_950 =
    Tw.Color "rgb" "3" "7" "18" Tw.ViaVariable


zinc_50 : Color
zinc_50 =
    Tw.Color "rgb" "250" "250" "250" Tw.ViaVariable


zinc_100 : Color
zinc_100 =
    Tw.Color "rgb" "244" "244" "245" Tw.ViaVariable


zinc_200 : Color
zinc_200 =
    Tw.Color "rgb" "228" "228" "231" Tw.ViaVariable


zinc_300 : Color
zinc_300 =
    Tw.Color "rgb" "212" "212" "216" Tw.ViaVariable


zinc_400 : Color
zinc_400 =
    Tw.Color "rgb" "161" "161" "170" Tw.ViaVariable


zinc_500 : Color
zinc_500 =
    Tw.Color "rgb" "113" "113" "122" Tw.ViaVariable


zinc_600 : Color
zinc_600 =
    Tw.Color "rgb" "82" "82" "91" Tw.ViaVariable


zinc_700 : Color
zinc_700 =
    Tw.Color "rgb" "63" "63" "70" Tw.ViaVariable


zinc_800 : Color
zinc_800 =
    Tw.Color "rgb" "39" "39" "42" Tw.ViaVariable


zinc_900 : Color
zinc_900 =
    Tw.Color "rgb" "24" "24" "27" Tw.ViaVariable


zinc_950 : Color
zinc_950 =
    Tw.Color "rgb" "9" "9" "11" Tw.ViaVariable


neutral_50 : Color
neutral_50 =
    Tw.Color "rgb" "250" "250" "250" Tw.ViaVariable


neutral_100 : Color
neutral_100 =
    Tw.Color "rgb" "245" "245" "245" Tw.ViaVariable


neutral_200 : Color
neutral_200 =
    Tw.Color "rgb" "229" "229" "229" Tw.ViaVariable


neutral_300 : Color
neutral_300 =
    Tw.Color "rgb" "212" "212" "212" Tw.ViaVariable


neutral_400 : Color
neutral_400 =
    Tw.Color "rgb" "163" "163" "163" Tw.ViaVariable


neutral_500 : Color
neutral_500 =
    Tw.Color "rgb" "115" "115" "115" Tw.ViaVariable


neutral_600 : Color
neutral_600 =
    Tw.Color "rgb" "82" "82" "82" Tw.ViaVariable


neutral_700 : Color
neutral_700 =
    Tw.Color "rgb" "64" "64" "64" Tw.ViaVariable


neutral_800 : Color
neutral_800 =
    Tw.Color "rgb" "38" "38" "38" Tw.ViaVariable


neutral_900 : Color
neutral_900 =
    Tw.Color "rgb" "23" "23" "23" Tw.ViaVariable


neutral_950 : Color
neutral_950 =
    Tw.Color "rgb" "10" "10" "10" Tw.ViaVariable


stone_50 : Color
stone_50 =
    Tw.Color "rgb" "250" "250" "249" Tw.ViaVariable


stone_100 : Color
stone_100 =
    Tw.Color "rgb" "245" "245" "244" Tw.ViaVariable


stone_200 : Color
stone_200 =
    Tw.Color "rgb" "231" "229" "228" Tw.ViaVariable


stone_300 : Color
stone_300 =
    Tw.Color "rgb" "214" "211" "209" Tw.ViaVariable


stone_400 : Color
stone_400 =
    Tw.Color "rgb" "168" "162" "158" Tw.ViaVariable


stone_500 : Color
stone_500 =
    Tw.Color "rgb" "120" "113" "108" Tw.ViaVariable


stone_600 : Color
stone_600 =
    Tw.Color "rgb" "87" "83" "78" Tw.ViaVariable


stone_700 : Color
stone_700 =
    Tw.Color "rgb" "68" "64" "60" Tw.ViaVariable


stone_800 : Color
stone_800 =
    Tw.Color "rgb" "41" "37" "36" Tw.ViaVariable


stone_900 : Color
stone_900 =
    Tw.Color "rgb" "28" "25" "23" Tw.ViaVariable


stone_950 : Color
stone_950 =
    Tw.Color "rgb" "12" "10" "9" Tw.ViaVariable


red_50 : Color
red_50 =
    Tw.Color "rgb" "254" "242" "242" Tw.ViaVariable


red_100 : Color
red_100 =
    Tw.Color "rgb" "254" "226" "226" Tw.ViaVariable


red_200 : Color
red_200 =
    Tw.Color "rgb" "254" "202" "202" Tw.ViaVariable


red_300 : Color
red_300 =
    Tw.Color "rgb" "252" "165" "165" Tw.ViaVariable


red_400 : Color
red_400 =
    Tw.Color "rgb" "248" "113" "113" Tw.ViaVariable


red_500 : Color
red_500 =
    Tw.Color "rgb" "239" "68" "68" Tw.ViaVariable


red_600 : Color
red_600 =
    Tw.Color "rgb" "220" "38" "38" Tw.ViaVariable


red_700 : Color
red_700 =
    Tw.Color "rgb" "185" "28" "28" Tw.ViaVariable


red_800 : Color
red_800 =
    Tw.Color "rgb" "153" "27" "27" Tw.ViaVariable


red_900 : Color
red_900 =
    Tw.Color "rgb" "127" "29" "29" Tw.ViaVariable


red_950 : Color
red_950 =
    Tw.Color "rgb" "69" "10" "10" Tw.ViaVariable


orange_50 : Color
orange_50 =
    Tw.Color "rgb" "255" "247" "237" Tw.ViaVariable


orange_100 : Color
orange_100 =
    Tw.Color "rgb" "255" "237" "213" Tw.ViaVariable


orange_200 : Color
orange_200 =
    Tw.Color "rgb" "254" "215" "170" Tw.ViaVariable


orange_300 : Color
orange_300 =
    Tw.Color "rgb" "253" "186" "116" Tw.ViaVariable


orange_400 : Color
orange_400 =
    Tw.Color "rgb" "251" "146" "60" Tw.ViaVariable


orange_500 : Color
orange_500 =
    Tw.Color "rgb" "249" "115" "22" Tw.ViaVariable


orange_600 : Color
orange_600 =
    Tw.Color "rgb" "234" "88" "12" Tw.ViaVariable


orange_700 : Color
orange_700 =
    Tw.Color "rgb" "194" "65" "12" Tw.ViaVariable


orange_800 : Color
orange_800 =
    Tw.Color "rgb" "154" "52" "18" Tw.ViaVariable


orange_900 : Color
orange_900 =
    Tw.Color "rgb" "124" "45" "18" Tw.ViaVariable


orange_950 : Color
orange_950 =
    Tw.Color "rgb" "67" "20" "7" Tw.ViaVariable


amber_50 : Color
amber_50 =
    Tw.Color "rgb" "255" "251" "235" Tw.ViaVariable


amber_100 : Color
amber_100 =
    Tw.Color "rgb" "254" "243" "199" Tw.ViaVariable


amber_200 : Color
amber_200 =
    Tw.Color "rgb" "253" "230" "138" Tw.ViaVariable


amber_300 : Color
amber_300 =
    Tw.Color "rgb" "252" "211" "77" Tw.ViaVariable


amber_400 : Color
amber_400 =
    Tw.Color "rgb" "251" "191" "36" Tw.ViaVariable


amber_500 : Color
amber_500 =
    Tw.Color "rgb" "245" "158" "11" Tw.ViaVariable


amber_600 : Color
amber_600 =
    Tw.Color "rgb" "217" "119" "6" Tw.ViaVariable


amber_700 : Color
amber_700 =
    Tw.Color "rgb" "180" "83" "9" Tw.ViaVariable


amber_800 : Color
amber_800 =
    Tw.Color "rgb" "146" "64" "14" Tw.ViaVariable


amber_900 : Color
amber_900 =
    Tw.Color "rgb" "120" "53" "15" Tw.ViaVariable


amber_950 : Color
amber_950 =
    Tw.Color "rgb" "69" "26" "3" Tw.ViaVariable


yellow_50 : Color
yellow_50 =
    Tw.Color "rgb" "254" "252" "232" Tw.ViaVariable


yellow_100 : Color
yellow_100 =
    Tw.Color "rgb" "254" "249" "195" Tw.ViaVariable


yellow_200 : Color
yellow_200 =
    Tw.Color "rgb" "254" "240" "138" Tw.ViaVariable


yellow_300 : Color
yellow_300 =
    Tw.Color "rgb" "253" "224" "71" Tw.ViaVariable


yellow_400 : Color
yellow_400 =
    Tw.Color "rgb" "250" "204" "21" Tw.ViaVariable


yellow_500 : Color
yellow_500 =
    Tw.Color "rgb" "234" "179" "8" Tw.ViaVariable


yellow_600 : Color
yellow_600 =
    Tw.Color "rgb" "202" "138" "4" Tw.ViaVariable


yellow_700 : Color
yellow_700 =
    Tw.Color "rgb" "161" "98" "7" Tw.ViaVariable


yellow_800 : Color
yellow_800 =
    Tw.Color "rgb" "133" "77" "14" Tw.ViaVariable


yellow_900 : Color
yellow_900 =
    Tw.Color "rgb" "113" "63" "18" Tw.ViaVariable


yellow_950 : Color
yellow_950 =
    Tw.Color "rgb" "66" "32" "6" Tw.ViaVariable


lime_50 : Color
lime_50 =
    Tw.Color "rgb" "247" "254" "231" Tw.ViaVariable


lime_100 : Color
lime_100 =
    Tw.Color "rgb" "236" "252" "203" Tw.ViaVariable


lime_200 : Color
lime_200 =
    Tw.Color "rgb" "217" "249" "157" Tw.ViaVariable


lime_300 : Color
lime_300 =
    Tw.Color "rgb" "190" "242" "100" Tw.ViaVariable


lime_400 : Color
lime_400 =
    Tw.Color "rgb" "163" "230" "53" Tw.ViaVariable


lime_500 : Color
lime_500 =
    Tw.Color "rgb" "132" "204" "22" Tw.ViaVariable


lime_600 : Color
lime_600 =
    Tw.Color "rgb" "101" "163" "13" Tw.ViaVariable


lime_700 : Color
lime_700 =
    Tw.Color "rgb" "77" "124" "15" Tw.ViaVariable


lime_800 : Color
lime_800 =
    Tw.Color "rgb" "63" "98" "18" Tw.ViaVariable


lime_900 : Color
lime_900 =
    Tw.Color "rgb" "54" "83" "20" Tw.ViaVariable


lime_950 : Color
lime_950 =
    Tw.Color "rgb" "26" "46" "5" Tw.ViaVariable


green_50 : Color
green_50 =
    Tw.Color "rgb" "240" "253" "244" Tw.ViaVariable


green_100 : Color
green_100 =
    Tw.Color "rgb" "220" "252" "231" Tw.ViaVariable


green_200 : Color
green_200 =
    Tw.Color "rgb" "187" "247" "208" Tw.ViaVariable


green_300 : Color
green_300 =
    Tw.Color "rgb" "134" "239" "172" Tw.ViaVariable


green_400 : Color
green_400 =
    Tw.Color "rgb" "74" "222" "128" Tw.ViaVariable


green_500 : Color
green_500 =
    Tw.Color "rgb" "34" "197" "94" Tw.ViaVariable


green_600 : Color
green_600 =
    Tw.Color "rgb" "22" "163" "74" Tw.ViaVariable


green_700 : Color
green_700 =
    Tw.Color "rgb" "21" "128" "61" Tw.ViaVariable


green_800 : Color
green_800 =
    Tw.Color "rgb" "22" "101" "52" Tw.ViaVariable


green_900 : Color
green_900 =
    Tw.Color "rgb" "20" "83" "45" Tw.ViaVariable


green_950 : Color
green_950 =
    Tw.Color "rgb" "5" "46" "22" Tw.ViaVariable


emerald_50 : Color
emerald_50 =
    Tw.Color "rgb" "236" "253" "245" Tw.ViaVariable


emerald_100 : Color
emerald_100 =
    Tw.Color "rgb" "209" "250" "229" Tw.ViaVariable


emerald_200 : Color
emerald_200 =
    Tw.Color "rgb" "167" "243" "208" Tw.ViaVariable


emerald_300 : Color
emerald_300 =
    Tw.Color "rgb" "110" "231" "183" Tw.ViaVariable


emerald_400 : Color
emerald_400 =
    Tw.Color "rgb" "52" "211" "153" Tw.ViaVariable


emerald_500 : Color
emerald_500 =
    Tw.Color "rgb" "16" "185" "129" Tw.ViaVariable


emerald_600 : Color
emerald_600 =
    Tw.Color "rgb" "5" "150" "105" Tw.ViaVariable


emerald_700 : Color
emerald_700 =
    Tw.Color "rgb" "4" "120" "87" Tw.ViaVariable


emerald_800 : Color
emerald_800 =
    Tw.Color "rgb" "6" "95" "70" Tw.ViaVariable


emerald_900 : Color
emerald_900 =
    Tw.Color "rgb" "6" "78" "59" Tw.ViaVariable


emerald_950 : Color
emerald_950 =
    Tw.Color "rgb" "2" "44" "34" Tw.ViaVariable


teal_50 : Color
teal_50 =
    Tw.Color "rgb" "240" "253" "250" Tw.ViaVariable


teal_100 : Color
teal_100 =
    Tw.Color "rgb" "204" "251" "241" Tw.ViaVariable


teal_200 : Color
teal_200 =
    Tw.Color "rgb" "153" "246" "228" Tw.ViaVariable


teal_300 : Color
teal_300 =
    Tw.Color "rgb" "94" "234" "212" Tw.ViaVariable


teal_400 : Color
teal_400 =
    Tw.Color "rgb" "45" "212" "191" Tw.ViaVariable


teal_500 : Color
teal_500 =
    Tw.Color "rgb" "20" "184" "166" Tw.ViaVariable


teal_600 : Color
teal_600 =
    Tw.Color "rgb" "13" "148" "136" Tw.ViaVariable


teal_700 : Color
teal_700 =
    Tw.Color "rgb" "15" "118" "110" Tw.ViaVariable


teal_800 : Color
teal_800 =
    Tw.Color "rgb" "17" "94" "89" Tw.ViaVariable


teal_900 : Color
teal_900 =
    Tw.Color "rgb" "19" "78" "74" Tw.ViaVariable


teal_950 : Color
teal_950 =
    Tw.Color "rgb" "4" "47" "46" Tw.ViaVariable


cyan_50 : Color
cyan_50 =
    Tw.Color "rgb" "236" "254" "255" Tw.ViaVariable


cyan_100 : Color
cyan_100 =
    Tw.Color "rgb" "207" "250" "254" Tw.ViaVariable


cyan_200 : Color
cyan_200 =
    Tw.Color "rgb" "165" "243" "252" Tw.ViaVariable


cyan_300 : Color
cyan_300 =
    Tw.Color "rgb" "103" "232" "249" Tw.ViaVariable


cyan_400 : Color
cyan_400 =
    Tw.Color "rgb" "34" "211" "238" Tw.ViaVariable


cyan_500 : Color
cyan_500 =
    Tw.Color "rgb" "6" "182" "212" Tw.ViaVariable


cyan_600 : Color
cyan_600 =
    Tw.Color "rgb" "8" "145" "178" Tw.ViaVariable


cyan_700 : Color
cyan_700 =
    Tw.Color "rgb" "14" "116" "144" Tw.ViaVariable


cyan_800 : Color
cyan_800 =
    Tw.Color "rgb" "21" "94" "117" Tw.ViaVariable


cyan_900 : Color
cyan_900 =
    Tw.Color "rgb" "22" "78" "99" Tw.ViaVariable


cyan_950 : Color
cyan_950 =
    Tw.Color "rgb" "8" "51" "68" Tw.ViaVariable


sky_50 : Color
sky_50 =
    Tw.Color "rgb" "240" "249" "255" Tw.ViaVariable


sky_100 : Color
sky_100 =
    Tw.Color "rgb" "224" "242" "254" Tw.ViaVariable


sky_200 : Color
sky_200 =
    Tw.Color "rgb" "186" "230" "253" Tw.ViaVariable


sky_300 : Color
sky_300 =
    Tw.Color "rgb" "125" "211" "252" Tw.ViaVariable


sky_400 : Color
sky_400 =
    Tw.Color "rgb" "56" "189" "248" Tw.ViaVariable


sky_500 : Color
sky_500 =
    Tw.Color "rgb" "14" "165" "233" Tw.ViaVariable


sky_600 : Color
sky_600 =
    Tw.Color "rgb" "2" "132" "199" Tw.ViaVariable


sky_700 : Color
sky_700 =
    Tw.Color "rgb" "3" "105" "161" Tw.ViaVariable


sky_800 : Color
sky_800 =
    Tw.Color "rgb" "7" "89" "133" Tw.ViaVariable


sky_900 : Color
sky_900 =
    Tw.Color "rgb" "12" "74" "110" Tw.ViaVariable


sky_950 : Color
sky_950 =
    Tw.Color "rgb" "8" "47" "73" Tw.ViaVariable


blue_50 : Color
blue_50 =
    Tw.Color "rgb" "239" "246" "255" Tw.ViaVariable


blue_100 : Color
blue_100 =
    Tw.Color "rgb" "219" "234" "254" Tw.ViaVariable


blue_200 : Color
blue_200 =
    Tw.Color "rgb" "191" "219" "254" Tw.ViaVariable


blue_300 : Color
blue_300 =
    Tw.Color "rgb" "147" "197" "253" Tw.ViaVariable


blue_400 : Color
blue_400 =
    Tw.Color "rgb" "96" "165" "250" Tw.ViaVariable


blue_500 : Color
blue_500 =
    Tw.Color "rgb" "59" "130" "246" Tw.ViaVariable


blue_600 : Color
blue_600 =
    Tw.Color "rgb" "37" "99" "235" Tw.ViaVariable


blue_700 : Color
blue_700 =
    Tw.Color "rgb" "29" "78" "216" Tw.ViaVariable


blue_800 : Color
blue_800 =
    Tw.Color "rgb" "30" "64" "175" Tw.ViaVariable


blue_900 : Color
blue_900 =
    Tw.Color "rgb" "30" "58" "138" Tw.ViaVariable


blue_950 : Color
blue_950 =
    Tw.Color "rgb" "23" "37" "84" Tw.ViaVariable


indigo_50 : Color
indigo_50 =
    Tw.Color "rgb" "238" "242" "255" Tw.ViaVariable


indigo_100 : Color
indigo_100 =
    Tw.Color "rgb" "224" "231" "255" Tw.ViaVariable


indigo_200 : Color
indigo_200 =
    Tw.Color "rgb" "199" "210" "254" Tw.ViaVariable


indigo_300 : Color
indigo_300 =
    Tw.Color "rgb" "165" "180" "252" Tw.ViaVariable


indigo_400 : Color
indigo_400 =
    Tw.Color "rgb" "129" "140" "248" Tw.ViaVariable


indigo_500 : Color
indigo_500 =
    Tw.Color "rgb" "99" "102" "241" Tw.ViaVariable


indigo_600 : Color
indigo_600 =
    Tw.Color "rgb" "79" "70" "229" Tw.ViaVariable


indigo_700 : Color
indigo_700 =
    Tw.Color "rgb" "67" "56" "202" Tw.ViaVariable


indigo_800 : Color
indigo_800 =
    Tw.Color "rgb" "55" "48" "163" Tw.ViaVariable


indigo_900 : Color
indigo_900 =
    Tw.Color "rgb" "49" "46" "129" Tw.ViaVariable


indigo_950 : Color
indigo_950 =
    Tw.Color "rgb" "30" "27" "75" Tw.ViaVariable


violet_50 : Color
violet_50 =
    Tw.Color "rgb" "245" "243" "255" Tw.ViaVariable


violet_100 : Color
violet_100 =
    Tw.Color "rgb" "237" "233" "254" Tw.ViaVariable


violet_200 : Color
violet_200 =
    Tw.Color "rgb" "221" "214" "254" Tw.ViaVariable


violet_300 : Color
violet_300 =
    Tw.Color "rgb" "196" "181" "253" Tw.ViaVariable


violet_400 : Color
violet_400 =
    Tw.Color "rgb" "167" "139" "250" Tw.ViaVariable


violet_500 : Color
violet_500 =
    Tw.Color "rgb" "139" "92" "246" Tw.ViaVariable


violet_600 : Color
violet_600 =
    Tw.Color "rgb" "124" "58" "237" Tw.ViaVariable


violet_700 : Color
violet_700 =
    Tw.Color "rgb" "109" "40" "217" Tw.ViaVariable


violet_800 : Color
violet_800 =
    Tw.Color "rgb" "91" "33" "182" Tw.ViaVariable


violet_900 : Color
violet_900 =
    Tw.Color "rgb" "76" "29" "149" Tw.ViaVariable


violet_950 : Color
violet_950 =
    Tw.Color "rgb" "46" "16" "101" Tw.ViaVariable


purple_50 : Color
purple_50 =
    Tw.Color "rgb" "250" "245" "255" Tw.ViaVariable


purple_100 : Color
purple_100 =
    Tw.Color "rgb" "243" "232" "255" Tw.ViaVariable


purple_200 : Color
purple_200 =
    Tw.Color "rgb" "233" "213" "255" Tw.ViaVariable


purple_300 : Color
purple_300 =
    Tw.Color "rgb" "216" "180" "254" Tw.ViaVariable


purple_400 : Color
purple_400 =
    Tw.Color "rgb" "192" "132" "252" Tw.ViaVariable


purple_500 : Color
purple_500 =
    Tw.Color "rgb" "168" "85" "247" Tw.ViaVariable


purple_600 : Color
purple_600 =
    Tw.Color "rgb" "147" "51" "234" Tw.ViaVariable


purple_700 : Color
purple_700 =
    Tw.Color "rgb" "126" "34" "206" Tw.ViaVariable


purple_800 : Color
purple_800 =
    Tw.Color "rgb" "107" "33" "168" Tw.ViaVariable


purple_900 : Color
purple_900 =
    Tw.Color "rgb" "88" "28" "135" Tw.ViaVariable


purple_950 : Color
purple_950 =
    Tw.Color "rgb" "59" "7" "100" Tw.ViaVariable


fuchsia_50 : Color
fuchsia_50 =
    Tw.Color "rgb" "253" "244" "255" Tw.ViaVariable


fuchsia_100 : Color
fuchsia_100 =
    Tw.Color "rgb" "250" "232" "255" Tw.ViaVariable


fuchsia_200 : Color
fuchsia_200 =
    Tw.Color "rgb" "245" "208" "254" Tw.ViaVariable


fuchsia_300 : Color
fuchsia_300 =
    Tw.Color "rgb" "240" "171" "252" Tw.ViaVariable


fuchsia_400 : Color
fuchsia_400 =
    Tw.Color "rgb" "232" "121" "249" Tw.ViaVariable


fuchsia_500 : Color
fuchsia_500 =
    Tw.Color "rgb" "217" "70" "239" Tw.ViaVariable


fuchsia_600 : Color
fuchsia_600 =
    Tw.Color "rgb" "192" "38" "211" Tw.ViaVariable


fuchsia_700 : Color
fuchsia_700 =
    Tw.Color "rgb" "162" "28" "175" Tw.ViaVariable


fuchsia_800 : Color
fuchsia_800 =
    Tw.Color "rgb" "134" "25" "143" Tw.ViaVariable


fuchsia_900 : Color
fuchsia_900 =
    Tw.Color "rgb" "112" "26" "117" Tw.ViaVariable


fuchsia_950 : Color
fuchsia_950 =
    Tw.Color "rgb" "74" "4" "78" Tw.ViaVariable


pink_50 : Color
pink_50 =
    Tw.Color "rgb" "253" "242" "248" Tw.ViaVariable


pink_100 : Color
pink_100 =
    Tw.Color "rgb" "252" "231" "243" Tw.ViaVariable


pink_200 : Color
pink_200 =
    Tw.Color "rgb" "251" "207" "232" Tw.ViaVariable


pink_300 : Color
pink_300 =
    Tw.Color "rgb" "249" "168" "212" Tw.ViaVariable


pink_400 : Color
pink_400 =
    Tw.Color "rgb" "244" "114" "182" Tw.ViaVariable


pink_500 : Color
pink_500 =
    Tw.Color "rgb" "236" "72" "153" Tw.ViaVariable


pink_600 : Color
pink_600 =
    Tw.Color "rgb" "219" "39" "119" Tw.ViaVariable


pink_700 : Color
pink_700 =
    Tw.Color "rgb" "190" "24" "93" Tw.ViaVariable


pink_800 : Color
pink_800 =
    Tw.Color "rgb" "157" "23" "77" Tw.ViaVariable


pink_900 : Color
pink_900 =
    Tw.Color "rgb" "131" "24" "67" Tw.ViaVariable


pink_950 : Color
pink_950 =
    Tw.Color "rgb" "80" "7" "36" Tw.ViaVariable


rose_50 : Color
rose_50 =
    Tw.Color "rgb" "255" "241" "242" Tw.ViaVariable


rose_100 : Color
rose_100 =
    Tw.Color "rgb" "255" "228" "230" Tw.ViaVariable


rose_200 : Color
rose_200 =
    Tw.Color "rgb" "254" "205" "211" Tw.ViaVariable


rose_300 : Color
rose_300 =
    Tw.Color "rgb" "253" "164" "175" Tw.ViaVariable


rose_400 : Color
rose_400 =
    Tw.Color "rgb" "251" "113" "133" Tw.ViaVariable


rose_500 : Color
rose_500 =
    Tw.Color "rgb" "244" "63" "94" Tw.ViaVariable


rose_600 : Color
rose_600 =
    Tw.Color "rgb" "225" "29" "72" Tw.ViaVariable


rose_700 : Color
rose_700 =
    Tw.Color "rgb" "190" "18" "60" Tw.ViaVariable


rose_800 : Color
rose_800 =
    Tw.Color "rgb" "159" "18" "57" Tw.ViaVariable


rose_900 : Color
rose_900 =
    Tw.Color "rgb" "136" "19" "55" Tw.ViaVariable


rose_950 : Color
rose_950 =
    Tw.Color "rgb" "76" "5" "25" Tw.ViaVariable


opacity0 : Opacity
opacity0 =
    Tw.Opacity "0"


opacity5 : Opacity
opacity5 =
    Tw.Opacity "0.05"


opacity10 : Opacity
opacity10 =
    Tw.Opacity "0.1"


opacity20 : Opacity
opacity20 =
    Tw.Opacity "0.2"


opacity25 : Opacity
opacity25 =
    Tw.Opacity "0.25"


opacity30 : Opacity
opacity30 =
    Tw.Opacity "0.3"


opacity40 : Opacity
opacity40 =
    Tw.Opacity "0.4"


opacity50 : Opacity
opacity50 =
    Tw.Opacity "0.5"


opacity60 : Opacity
opacity60 =
    Tw.Opacity "0.6"


opacity70 : Opacity
opacity70 =
    Tw.Opacity "0.7"


opacity75 : Opacity
opacity75 =
    Tw.Opacity "0.75"


opacity80 : Opacity
opacity80 =
    Tw.Opacity "0.8"


opacity90 : Opacity
opacity90 =
    Tw.Opacity "0.9"


opacity95 : Opacity
opacity95 =
    Tw.Opacity "0.95"


opacity100 : Opacity
opacity100 =
    Tw.Opacity "1"
