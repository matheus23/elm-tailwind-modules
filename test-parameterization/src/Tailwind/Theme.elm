module Tailwind.Theme exposing
    ( Color
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
    , toProperty
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
    = Color String


type Opacity
    = Opacity String


toProperty : String -> Color -> Css.Style
toProperty propertyName (Color color) =
    Css.property propertyName ("rgb(" ++ color ++ ")")


inherit : Color
inherit =
    Color "inherit"


current : Color
current =
    Color "currentColor"


transparent : Color
transparent =
    Color "transparent"


black : Color
black =
    Color "#000"


white : Color
white =
    Color "#fff"


slate_50 : Color
slate_50 =
    Color "#f8fafc"


slate_100 : Color
slate_100 =
    Color "#f1f5f9"


slate_200 : Color
slate_200 =
    Color "#e2e8f0"


slate_300 : Color
slate_300 =
    Color "#cbd5e1"


slate_400 : Color
slate_400 =
    Color "#94a3b8"


slate_500 : Color
slate_500 =
    Color "#64748b"


slate_600 : Color
slate_600 =
    Color "#475569"


slate_700 : Color
slate_700 =
    Color "#334155"


slate_800 : Color
slate_800 =
    Color "#1e293b"


slate_900 : Color
slate_900 =
    Color "#0f172a"


gray_50 : Color
gray_50 =
    Color "#f9fafb"


gray_100 : Color
gray_100 =
    Color "#f3f4f6"


gray_200 : Color
gray_200 =
    Color "#e5e7eb"


gray_300 : Color
gray_300 =
    Color "#d1d5db"


gray_400 : Color
gray_400 =
    Color "#9ca3af"


gray_500 : Color
gray_500 =
    Color "#6b7280"


gray_600 : Color
gray_600 =
    Color "#4b5563"


gray_700 : Color
gray_700 =
    Color "#374151"


gray_800 : Color
gray_800 =
    Color "#1f2937"


gray_900 : Color
gray_900 =
    Color "#111827"


zinc_50 : Color
zinc_50 =
    Color "#fafafa"


zinc_100 : Color
zinc_100 =
    Color "#f4f4f5"


zinc_200 : Color
zinc_200 =
    Color "#e4e4e7"


zinc_300 : Color
zinc_300 =
    Color "#d4d4d8"


zinc_400 : Color
zinc_400 =
    Color "#a1a1aa"


zinc_500 : Color
zinc_500 =
    Color "#71717a"


zinc_600 : Color
zinc_600 =
    Color "#52525b"


zinc_700 : Color
zinc_700 =
    Color "#3f3f46"


zinc_800 : Color
zinc_800 =
    Color "#27272a"


zinc_900 : Color
zinc_900 =
    Color "#18181b"


neutral_50 : Color
neutral_50 =
    Color "#fafafa"


neutral_100 : Color
neutral_100 =
    Color "#f5f5f5"


neutral_200 : Color
neutral_200 =
    Color "#e5e5e5"


neutral_300 : Color
neutral_300 =
    Color "#d4d4d4"


neutral_400 : Color
neutral_400 =
    Color "#a3a3a3"


neutral_500 : Color
neutral_500 =
    Color "#737373"


neutral_600 : Color
neutral_600 =
    Color "#525252"


neutral_700 : Color
neutral_700 =
    Color "#404040"


neutral_800 : Color
neutral_800 =
    Color "#262626"


neutral_900 : Color
neutral_900 =
    Color "#171717"


stone_50 : Color
stone_50 =
    Color "#fafaf9"


stone_100 : Color
stone_100 =
    Color "#f5f5f4"


stone_200 : Color
stone_200 =
    Color "#e7e5e4"


stone_300 : Color
stone_300 =
    Color "#d6d3d1"


stone_400 : Color
stone_400 =
    Color "#a8a29e"


stone_500 : Color
stone_500 =
    Color "#78716c"


stone_600 : Color
stone_600 =
    Color "#57534e"


stone_700 : Color
stone_700 =
    Color "#44403c"


stone_800 : Color
stone_800 =
    Color "#292524"


stone_900 : Color
stone_900 =
    Color "#1c1917"


red_50 : Color
red_50 =
    Color "#fef2f2"


red_100 : Color
red_100 =
    Color "#fee2e2"


red_200 : Color
red_200 =
    Color "#fecaca"


red_300 : Color
red_300 =
    Color "#fca5a5"


red_400 : Color
red_400 =
    Color "#f87171"


red_500 : Color
red_500 =
    Color "#ef4444"


red_600 : Color
red_600 =
    Color "#dc2626"


red_700 : Color
red_700 =
    Color "#b91c1c"


red_800 : Color
red_800 =
    Color "#991b1b"


red_900 : Color
red_900 =
    Color "#7f1d1d"


orange_50 : Color
orange_50 =
    Color "#fff7ed"


orange_100 : Color
orange_100 =
    Color "#ffedd5"


orange_200 : Color
orange_200 =
    Color "#fed7aa"


orange_300 : Color
orange_300 =
    Color "#fdba74"


orange_400 : Color
orange_400 =
    Color "#fb923c"


orange_500 : Color
orange_500 =
    Color "#f97316"


orange_600 : Color
orange_600 =
    Color "#ea580c"


orange_700 : Color
orange_700 =
    Color "#c2410c"


orange_800 : Color
orange_800 =
    Color "#9a3412"


orange_900 : Color
orange_900 =
    Color "#7c2d12"


amber_50 : Color
amber_50 =
    Color "#fffbeb"


amber_100 : Color
amber_100 =
    Color "#fef3c7"


amber_200 : Color
amber_200 =
    Color "#fde68a"


amber_300 : Color
amber_300 =
    Color "#fcd34d"


amber_400 : Color
amber_400 =
    Color "#fbbf24"


amber_500 : Color
amber_500 =
    Color "#f59e0b"


amber_600 : Color
amber_600 =
    Color "#d97706"


amber_700 : Color
amber_700 =
    Color "#b45309"


amber_800 : Color
amber_800 =
    Color "#92400e"


amber_900 : Color
amber_900 =
    Color "#78350f"


yellow_50 : Color
yellow_50 =
    Color "#fefce8"


yellow_100 : Color
yellow_100 =
    Color "#fef9c3"


yellow_200 : Color
yellow_200 =
    Color "#fef08a"


yellow_300 : Color
yellow_300 =
    Color "#fde047"


yellow_400 : Color
yellow_400 =
    Color "#facc15"


yellow_500 : Color
yellow_500 =
    Color "#eab308"


yellow_600 : Color
yellow_600 =
    Color "#ca8a04"


yellow_700 : Color
yellow_700 =
    Color "#a16207"


yellow_800 : Color
yellow_800 =
    Color "#854d0e"


yellow_900 : Color
yellow_900 =
    Color "#713f12"


lime_50 : Color
lime_50 =
    Color "#f7fee7"


lime_100 : Color
lime_100 =
    Color "#ecfccb"


lime_200 : Color
lime_200 =
    Color "#d9f99d"


lime_300 : Color
lime_300 =
    Color "#bef264"


lime_400 : Color
lime_400 =
    Color "#a3e635"


lime_500 : Color
lime_500 =
    Color "#84cc16"


lime_600 : Color
lime_600 =
    Color "#65a30d"


lime_700 : Color
lime_700 =
    Color "#4d7c0f"


lime_800 : Color
lime_800 =
    Color "#3f6212"


lime_900 : Color
lime_900 =
    Color "#365314"


green_50 : Color
green_50 =
    Color "#f0fdf4"


green_100 : Color
green_100 =
    Color "#dcfce7"


green_200 : Color
green_200 =
    Color "#bbf7d0"


green_300 : Color
green_300 =
    Color "#86efac"


green_400 : Color
green_400 =
    Color "#4ade80"


green_500 : Color
green_500 =
    Color "#22c55e"


green_600 : Color
green_600 =
    Color "#16a34a"


green_700 : Color
green_700 =
    Color "#15803d"


green_800 : Color
green_800 =
    Color "#166534"


green_900 : Color
green_900 =
    Color "#14532d"


emerald_50 : Color
emerald_50 =
    Color "#ecfdf5"


emerald_100 : Color
emerald_100 =
    Color "#d1fae5"


emerald_200 : Color
emerald_200 =
    Color "#a7f3d0"


emerald_300 : Color
emerald_300 =
    Color "#6ee7b7"


emerald_400 : Color
emerald_400 =
    Color "#34d399"


emerald_500 : Color
emerald_500 =
    Color "#10b981"


emerald_600 : Color
emerald_600 =
    Color "#059669"


emerald_700 : Color
emerald_700 =
    Color "#047857"


emerald_800 : Color
emerald_800 =
    Color "#065f46"


emerald_900 : Color
emerald_900 =
    Color "#064e3b"


teal_50 : Color
teal_50 =
    Color "#f0fdfa"


teal_100 : Color
teal_100 =
    Color "#ccfbf1"


teal_200 : Color
teal_200 =
    Color "#99f6e4"


teal_300 : Color
teal_300 =
    Color "#5eead4"


teal_400 : Color
teal_400 =
    Color "#2dd4bf"


teal_500 : Color
teal_500 =
    Color "#14b8a6"


teal_600 : Color
teal_600 =
    Color "#0d9488"


teal_700 : Color
teal_700 =
    Color "#0f766e"


teal_800 : Color
teal_800 =
    Color "#115e59"


teal_900 : Color
teal_900 =
    Color "#134e4a"


cyan_50 : Color
cyan_50 =
    Color "#ecfeff"


cyan_100 : Color
cyan_100 =
    Color "#cffafe"


cyan_200 : Color
cyan_200 =
    Color "#a5f3fc"


cyan_300 : Color
cyan_300 =
    Color "#67e8f9"


cyan_400 : Color
cyan_400 =
    Color "#22d3ee"


cyan_500 : Color
cyan_500 =
    Color "#06b6d4"


cyan_600 : Color
cyan_600 =
    Color "#0891b2"


cyan_700 : Color
cyan_700 =
    Color "#0e7490"


cyan_800 : Color
cyan_800 =
    Color "#155e75"


cyan_900 : Color
cyan_900 =
    Color "#164e63"


sky_50 : Color
sky_50 =
    Color "#f0f9ff"


sky_100 : Color
sky_100 =
    Color "#e0f2fe"


sky_200 : Color
sky_200 =
    Color "#bae6fd"


sky_300 : Color
sky_300 =
    Color "#7dd3fc"


sky_400 : Color
sky_400 =
    Color "#38bdf8"


sky_500 : Color
sky_500 =
    Color "#0ea5e9"


sky_600 : Color
sky_600 =
    Color "#0284c7"


sky_700 : Color
sky_700 =
    Color "#0369a1"


sky_800 : Color
sky_800 =
    Color "#075985"


sky_900 : Color
sky_900 =
    Color "#0c4a6e"


blue_50 : Color
blue_50 =
    Color "#eff6ff"


blue_100 : Color
blue_100 =
    Color "#dbeafe"


blue_200 : Color
blue_200 =
    Color "#bfdbfe"


blue_300 : Color
blue_300 =
    Color "#93c5fd"


blue_400 : Color
blue_400 =
    Color "#60a5fa"


blue_500 : Color
blue_500 =
    Color "#3b82f6"


blue_600 : Color
blue_600 =
    Color "#2563eb"


blue_700 : Color
blue_700 =
    Color "#1d4ed8"


blue_800 : Color
blue_800 =
    Color "#1e40af"


blue_900 : Color
blue_900 =
    Color "#1e3a8a"


indigo_50 : Color
indigo_50 =
    Color "#eef2ff"


indigo_100 : Color
indigo_100 =
    Color "#e0e7ff"


indigo_200 : Color
indigo_200 =
    Color "#c7d2fe"


indigo_300 : Color
indigo_300 =
    Color "#a5b4fc"


indigo_400 : Color
indigo_400 =
    Color "#818cf8"


indigo_500 : Color
indigo_500 =
    Color "#6366f1"


indigo_600 : Color
indigo_600 =
    Color "#4f46e5"


indigo_700 : Color
indigo_700 =
    Color "#4338ca"


indigo_800 : Color
indigo_800 =
    Color "#3730a3"


indigo_900 : Color
indigo_900 =
    Color "#312e81"


violet_50 : Color
violet_50 =
    Color "#f5f3ff"


violet_100 : Color
violet_100 =
    Color "#ede9fe"


violet_200 : Color
violet_200 =
    Color "#ddd6fe"


violet_300 : Color
violet_300 =
    Color "#c4b5fd"


violet_400 : Color
violet_400 =
    Color "#a78bfa"


violet_500 : Color
violet_500 =
    Color "#8b5cf6"


violet_600 : Color
violet_600 =
    Color "#7c3aed"


violet_700 : Color
violet_700 =
    Color "#6d28d9"


violet_800 : Color
violet_800 =
    Color "#5b21b6"


violet_900 : Color
violet_900 =
    Color "#4c1d95"


purple_50 : Color
purple_50 =
    Color "#faf5ff"


purple_100 : Color
purple_100 =
    Color "#f3e8ff"


purple_200 : Color
purple_200 =
    Color "#e9d5ff"


purple_300 : Color
purple_300 =
    Color "#d8b4fe"


purple_400 : Color
purple_400 =
    Color "#c084fc"


purple_500 : Color
purple_500 =
    Color "#a855f7"


purple_600 : Color
purple_600 =
    Color "#9333ea"


purple_700 : Color
purple_700 =
    Color "#7e22ce"


purple_800 : Color
purple_800 =
    Color "#6b21a8"


purple_900 : Color
purple_900 =
    Color "#581c87"


fuchsia_50 : Color
fuchsia_50 =
    Color "#fdf4ff"


fuchsia_100 : Color
fuchsia_100 =
    Color "#fae8ff"


fuchsia_200 : Color
fuchsia_200 =
    Color "#f5d0fe"


fuchsia_300 : Color
fuchsia_300 =
    Color "#f0abfc"


fuchsia_400 : Color
fuchsia_400 =
    Color "#e879f9"


fuchsia_500 : Color
fuchsia_500 =
    Color "#d946ef"


fuchsia_600 : Color
fuchsia_600 =
    Color "#c026d3"


fuchsia_700 : Color
fuchsia_700 =
    Color "#a21caf"


fuchsia_800 : Color
fuchsia_800 =
    Color "#86198f"


fuchsia_900 : Color
fuchsia_900 =
    Color "#701a75"


pink_50 : Color
pink_50 =
    Color "#fdf2f8"


pink_100 : Color
pink_100 =
    Color "#fce7f3"


pink_200 : Color
pink_200 =
    Color "#fbcfe8"


pink_300 : Color
pink_300 =
    Color "#f9a8d4"


pink_400 : Color
pink_400 =
    Color "#f472b6"


pink_500 : Color
pink_500 =
    Color "#ec4899"


pink_600 : Color
pink_600 =
    Color "#db2777"


pink_700 : Color
pink_700 =
    Color "#be185d"


pink_800 : Color
pink_800 =
    Color "#9d174d"


pink_900 : Color
pink_900 =
    Color "#831843"


rose_50 : Color
rose_50 =
    Color "#fff1f2"


rose_100 : Color
rose_100 =
    Color "#ffe4e6"


rose_200 : Color
rose_200 =
    Color "#fecdd3"


rose_300 : Color
rose_300 =
    Color "#fda4af"


rose_400 : Color
rose_400 =
    Color "#fb7185"


rose_500 : Color
rose_500 =
    Color "#f43f5e"


rose_600 : Color
rose_600 =
    Color "#e11d48"


rose_700 : Color
rose_700 =
    Color "#be123c"


rose_800 : Color
rose_800 =
    Color "#9f1239"


rose_900 : Color
rose_900 =
    Color "#881337"
