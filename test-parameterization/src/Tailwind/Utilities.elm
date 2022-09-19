module Tailwind.Utilities exposing (..)

import Tailwind.Theme exposing (Color)
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
bg color =
    Css.batch
        [ Css.property "--tw-bg-opacity" "1"
        , Tailwind.Theme.toProperty "background-color" color
        ]


text : Color -> Css.Style
text color =
    Css.batch
        [ Css.property "--tw-text-opacity" "1"
        , Tailwind.Theme.toProperty "color" color
        ]
