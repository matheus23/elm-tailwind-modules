module Main exposing (..)

import Css
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Theme as Theme
import Tailwind.Utilities as Tw


main =
    Html.toUnstyled <|
        Html.div [ Attr.css [ Tw.bgWithColor Theme.gray_100 ] ]
            [ -- This will give us the standard tailwind style-reset as well as the fonts
              Css.Global.global Tw.globalStyles
            , Html.div
                [ Attr.css
                    [ Tw.mt_8
                    , Tw.flex

                    -- We use breakpoints like this
                    -- However, you need to order your breakpoints from high to low :/
                    , Breakpoints.lg [ Tw.mt_0, Tw.flex_shrink_0 ]
                    ]
                ]
                [ Html.div
                    [ Attr.css
                        [ Tw.inline_flex
                        , Tw.rounded_md
                        , Tw.shadow
                        ]
                    ]
                    [ Html.a
                        [ Attr.css
                            [ Tw.inline_flex
                            , Tw.items_center
                            , Tw.justify_center
                            , Tw.px_5
                            , Tw.py_3
                            , Tw.border
                            , Tw.borderWithColor Theme.transparent
                            , Tw.textWithColor Theme.base
                            , Tw.font_medium
                            , Tw.rounded_md
                            , Tw.textWithColor Theme.white
                            , Tw.bgWithColor Theme.indigo_600

                            -- We can use hover styles via elm-css :)
                            , Css.hover [ Tw.bg Theme.indigo_700 ]
                            ]
                        , Attr.href "#"
                        ]
                        [ Html.text "Get started" ]
                    ]
                ]
            ]
