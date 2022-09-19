module Tailwind.Utilities exposing (..)

import Css
import Css.Animations
import Css.Global
import Css.Media


globalStyles : List Css.Global.Snippet
globalStyles =
    [ Css.Global.selector "*,\n::before,\n::after"
        [ Css.property "box-sizing" "border-box"
        , Css.property "border-width" "0"
        , Css.property "border-style" "solid"
        , Css.property "border-color" "#e5e7eb"
        ]
    , Css.Global.selector "::before,\n::after"
        [ Css.property "--tw-content" "''"
        ]
    , Css.Global.selector "html"
        [ Css.property "line-height" "1.5"
        , Css.property "-webkit-text-size-adjust" "100%"
        , Css.property "-moz-tab-size" "4"
        , Css.property "tab-size" "4"
        , Css.property "font-family" "ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""
        ]
    , Css.Global.selector "body"
        [ Css.property "margin" "0"
        , Css.property "line-height" "inherit"
        ]
    , Css.Global.selector "hr"
        [ Css.property "height" "0"
        , Css.property "color" "inherit"
        , Css.property "border-top-width" "1px"
        ]
    , Css.Global.selector "abbr:where([title])"
        [ Css.property "text-decoration" "underline dotted"
        ]
    , Css.Global.selector "h1,\nh2,\nh3,\nh4,\nh5,\nh6"
        [ Css.property "font-size" "inherit"
        , Css.property "font-weight" "inherit"
        ]
    , Css.Global.selector "a"
        [ Css.property "color" "inherit"
        , Css.property "text-decoration" "inherit"
        ]
    , Css.Global.selector "b,\nstrong"
        [ Css.property "font-weight" "bolder"
        ]
    , Css.Global.selector "code,\nkbd,\nsamp,\npre"
        [ Css.property "font-family" "ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"
        , Css.property "font-size" "1em"
        ]
    , Css.Global.selector "small"
        [ Css.property "font-size" "80%"
        ]
    , Css.Global.selector "sub,\nsup"
        [ Css.property "font-size" "75%"
        , Css.property "line-height" "0"
        , Css.property "position" "relative"
        , Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "sub"
        [ Css.property "bottom" "-0.25em"
        ]
    , Css.Global.selector "sup"
        [ Css.property "top" "-0.5em"
        ]
    , Css.Global.selector "table"
        [ Css.property "text-indent" "0"
        , Css.property "border-color" "inherit"
        , Css.property "border-collapse" "collapse"
        ]
    , Css.Global.selector "button,\ninput,\noptgroup,\nselect,\ntextarea"
        [ Css.property "font-family" "inherit"
        , Css.property "font-size" "100%"
        , Css.property "font-weight" "inherit"
        , Css.property "line-height" "inherit"
        , Css.property "color" "inherit"
        , Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "button,\nselect"
        [ Css.property "text-transform" "none"
        ]
    , Css.Global.selector "button,\n[type='button'],\n[type='reset'],\n[type='submit']"
        [ Css.property "-webkit-appearance" "button"
        , Css.property "background-color" "transparent"
        , Css.property "background-image" "none"
        ]
    , Css.Global.selector ":-moz-focusring"
        [ Css.property "outline" "auto"
        ]
    , Css.Global.selector ":-moz-ui-invalid"
        [ Css.property "box-shadow" "none"
        ]
    , Css.Global.selector "progress"
        [ Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "::-webkit-inner-spin-button,\n::-webkit-outer-spin-button"
        [ Css.property "height" "auto"
        ]
    , Css.Global.selector "[type='search']"
        [ Css.property "-webkit-appearance" "textfield"
        , Css.property "outline-offset" "-2px"
        ]
    , Css.Global.selector "::-webkit-search-decoration"
        [ Css.property "-webkit-appearance" "none"
        ]
    , Css.Global.selector "::-webkit-file-upload-button"
        [ Css.property "-webkit-appearance" "button"
        , Css.property "font" "inherit"
        ]
    , Css.Global.selector "summary"
        [ Css.property "display" "list-item"
        ]
    , Css.Global.selector "blockquote,\ndl,\ndd,\nh1,\nh2,\nh3,\nh4,\nh5,\nh6,\nhr,\nfigure,\np,\npre"
        [ Css.property "margin" "0"
        ]
    , Css.Global.selector "fieldset"
        [ Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "legend"
        [ Css.property "padding" "0"
        ]
    , Css.Global.selector "ol,\nul,\nmenu"
        [ Css.property "list-style" "none"
        , Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "textarea"
        [ Css.property "resize" "vertical"
        ]
    , Css.Global.selector "input::placeholder,\ntextarea::placeholder"
        [ Css.property "opacity" "1"
        , Css.property "color" "#9ca3af"
        ]
    , Css.Global.selector "button,\n[role=\"button\"]"
        [ Css.property "cursor" "pointer"
        ]
    , Css.Global.selector ":disabled"
        [ Css.property "cursor" "default"
        ]
    , Css.Global.selector "img,\nsvg,\nvideo,\ncanvas,\naudio,\niframe,\nembed,\nobject"
        [ Css.property "display" "block"
        , Css.property "vertical-align" "middle"
        ]
    , Css.Global.selector "img,\nvideo"
        [ Css.property "max-width" "100%"
        , Css.property "height" "auto"
        ]
    , Css.Global.selector "[type='text'],[type='email'],[type='url'],[type='password'],[type='number'],[type='date'],[type='datetime-local'],[type='month'],[type='search'],[type='tel'],[type='time'],[type='week'],[multiple],textarea,select"
        [ Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        ]
    , Css.Global.selector "[type='text']:focus, [type='email']:focus, [type='url']:focus, [type='password']:focus, [type='number']:focus, [type='date']:focus, [type='datetime-local']:focus, [type='month']:focus, [type='search']:focus, [type='tel']:focus, [type='time']:focus, [type='week']:focus, [multiple]:focus, textarea:focus, select:focus"
        [ Css.property "outline" "2px solid transparent"
        , Css.property "outline-offset" "2px"
        , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "#2563eb"
        , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
        , Css.property "border-color" "#2563eb"
        ]
    , Css.Global.selector "input::placeholder,textarea::placeholder"
        [ Css.property "color" "#6b7280"
        , Css.property "opacity" "1"
        ]
    , Css.Global.selector "::-webkit-datetime-edit-fields-wrapper"
        [ Css.property "padding" "0"
        ]
    , Css.Global.selector "::-webkit-date-and-time-value"
        [ Css.property "min-height" "1.5em"
        ]
    , Css.Global.selector "::-webkit-datetime-edit,::-webkit-datetime-edit-year-field,::-webkit-datetime-edit-month-field,::-webkit-datetime-edit-day-field,::-webkit-datetime-edit-hour-field,::-webkit-datetime-edit-minute-field,::-webkit-datetime-edit-second-field,::-webkit-datetime-edit-millisecond-field,::-webkit-datetime-edit-meridiem-field"
        [ Css.property "padding-top" "0"
        , Css.property "padding-bottom" "0"
        ]
    , Css.Global.selector "select"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e\")"
        , Css.property "background-position" "right 0.5rem center"
        , Css.property "background-repeat" "no-repeat"
        , Css.property "background-size" "1.5em 1.5em"
        , Css.property "padding-right" "2.5rem"
        , Css.property "print-color-adjust" "exact"
        ]
    , Css.Global.selector "[multiple]"
        [ Css.property "background-image" "initial"
        , Css.property "background-position" "initial"
        , Css.property "background-repeat" "unset"
        , Css.property "background-size" "initial"
        , Css.property "padding-right" "0.75rem"
        , Css.property "print-color-adjust" "unset"
        ]
    , Css.Global.selector "[type='checkbox'],[type='radio']"
        [ Css.property "appearance" "none"
        , Css.property "padding" "0"
        , Css.property "print-color-adjust" "exact"
        , Css.property "display" "inline-block"
        , Css.property "vertical-align" "middle"
        , Css.property "background-origin" "border-box"
        , Css.property "user-select" "none"
        , Css.property "flex-shrink" "0"
        , Css.property "height" "1rem"
        , Css.property "width" "1rem"
        , Css.property "color" "#2563eb"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "--tw-shadow" "0 0 #0000"
        ]
    , Css.Global.selector "[type='checkbox']"
        [ Css.property "border-radius" "0px"
        ]
    , Css.Global.selector "[type='radio']"
        [ Css.property "border-radius" "100%"
        ]
    , Css.Global.selector "[type='checkbox']:focus,[type='radio']:focus"
        [ Css.property "outline" "2px solid transparent"
        , Css.property "outline-offset" "2px"
        , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-ring-offset-width" "2px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "#2563eb"
        , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
        ]
    , Css.Global.selector "[type='checkbox']:checked,[type='radio']:checked"
        [ Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        , Css.property "background-size" "100% 100%"
        , Css.property "background-position" "center"
        , Css.property "background-repeat" "no-repeat"
        ]
    , Css.Global.selector "[type='checkbox']:checked"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e\")"
        ]
    , Css.Global.selector "[type='radio']:checked"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e\")"
        ]
    , Css.Global.selector "[type='checkbox']:checked:hover,[type='checkbox']:checked:focus,[type='radio']:checked:hover,[type='radio']:checked:focus"
        [ Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        ]
    , Css.Global.selector "[type='checkbox']:indeterminate"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e\")"
        , Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        , Css.property "background-size" "100% 100%"
        , Css.property "background-position" "center"
        , Css.property "background-repeat" "no-repeat"
        ]
    , Css.Global.selector "[type='checkbox']:indeterminate:hover,[type='checkbox']:indeterminate:focus"
        [ Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        ]
    , Css.Global.selector "[type='file']"
        [ Css.property "background" "unset"
        , Css.property "border-color" "inherit"
        , Css.property "border-width" "0"
        , Css.property "border-radius" "0"
        , Css.property "padding" "0"
        , Css.property "font-size" "unset"
        , Css.property "line-height" "inherit"
        ]
    , Css.Global.selector "[type='file']:focus"
        [ Css.property "outline" "1px solid ButtonText"
        , Css.property "outline" "1px auto -webkit-focus-ring-color"
        ]
    , Css.Global.selector "*, ::before, ::after"
        [ Css.property "--tw-border-spacing-x" "0"
        , Css.property "--tw-border-spacing-y" "0"
        , Css.property "--tw-translate-x" "0"
        , Css.property "--tw-translate-y" "0"
        , Css.property "--tw-rotate" "0"
        , Css.property "--tw-skew-x" "0"
        , Css.property "--tw-skew-y" "0"
        , Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        , Css.property "--tw-pan-x" " "
        , Css.property "--tw-pan-y" " "
        , Css.property "--tw-pinch-zoom" " "
        , Css.property "--tw-scroll-snap-strictness" "proximity"
        , Css.property "--tw-ordinal" " "
        , Css.property "--tw-slashed-zero" " "
        , Css.property "--tw-numeric-figure" " "
        , Css.property "--tw-numeric-spacing" " "
        , Css.property "--tw-numeric-fraction" " "
        , Css.property "--tw-ring-inset" " "
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "rgb(59 130 246 / 0.5)"
        , Css.property "--tw-ring-offset-shadow" "0 0 #0000"
        , Css.property "--tw-ring-shadow" "0 0 #0000"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "--tw-shadow-colored" "0 0 #0000"
        , Css.property "--tw-blur" " "
        , Css.property "--tw-brightness" " "
        , Css.property "--tw-contrast" " "
        , Css.property "--tw-grayscale" " "
        , Css.property "--tw-hue-rotate" " "
        , Css.property "--tw-invert" " "
        , Css.property "--tw-saturate" " "
        , Css.property "--tw-sepia" " "
        , Css.property "--tw-drop-shadow" " "
        , Css.property "--tw-backdrop-blur" " "
        , Css.property "--tw-backdrop-brightness" " "
        , Css.property "--tw-backdrop-contrast" " "
        , Css.property "--tw-backdrop-grayscale" " "
        , Css.property "--tw-backdrop-hue-rotate" " "
        , Css.property "--tw-backdrop-invert" " "
        , Css.property "--tw-backdrop-opacity" " "
        , Css.property "--tw-backdrop-saturate" " "
        , Css.property "--tw-backdrop-sepia" " "
        ]
    , Css.Global.selector "::backdrop"
        [ Css.property "--tw-border-spacing-x" "0"
        , Css.property "--tw-border-spacing-y" "0"
        , Css.property "--tw-translate-x" "0"
        , Css.property "--tw-translate-y" "0"
        , Css.property "--tw-rotate" "0"
        , Css.property "--tw-skew-x" "0"
        , Css.property "--tw-skew-y" "0"
        , Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        , Css.property "--tw-pan-x" " "
        , Css.property "--tw-pan-y" " "
        , Css.property "--tw-pinch-zoom" " "
        , Css.property "--tw-scroll-snap-strictness" "proximity"
        , Css.property "--tw-ordinal" " "
        , Css.property "--tw-slashed-zero" " "
        , Css.property "--tw-numeric-figure" " "
        , Css.property "--tw-numeric-spacing" " "
        , Css.property "--tw-numeric-fraction" " "
        , Css.property "--tw-ring-inset" " "
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "rgb(59 130 246 / 0.5)"
        , Css.property "--tw-ring-offset-shadow" "0 0 #0000"
        , Css.property "--tw-ring-shadow" "0 0 #0000"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "--tw-shadow-colored" "0 0 #0000"
        , Css.property "--tw-blur" " "
        , Css.property "--tw-brightness" " "
        , Css.property "--tw-contrast" " "
        , Css.property "--tw-grayscale" " "
        , Css.property "--tw-hue-rotate" " "
        , Css.property "--tw-invert" " "
        , Css.property "--tw-saturate" " "
        , Css.property "--tw-sepia" " "
        , Css.property "--tw-drop-shadow" " "
        , Css.property "--tw-backdrop-blur" " "
        , Css.property "--tw-backdrop-brightness" " "
        , Css.property "--tw-backdrop-contrast" " "
        , Css.property "--tw-backdrop-grayscale" " "
        , Css.property "--tw-backdrop-hue-rotate" " "
        , Css.property "--tw-backdrop-invert" " "
        , Css.property "--tw-backdrop-opacity" " "
        , Css.property "--tw-backdrop-saturate" " "
        , Css.property "--tw-backdrop-sepia" " "
        ]
    ]


bg : Color -> Css.Style
bg (Color color) =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Css.property "background-color" ("rgb(" ++ color ++ " / var(--tw-bg-opacity))")
        ]


text : Color -> Css.Style
text (Color color) =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Css.property "color" ("rgb(" ++ color ++ " / var(--tw-text-opacity))")
        ]
type Color =
    Color String

type Opacity =
    Opacity String
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
