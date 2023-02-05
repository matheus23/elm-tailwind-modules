module Main exposing (..)

import Css
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Utilities as Tw
import Tailwind.Theme as Tw


main =
    Html.toUnstyled <|
        Html.div [ Attr.css [ Tw.bg_WithColor Tw.gray_50 ] ]
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
                [ Html.div [ Attr.css [ Tw.inline_flex, Tw.rounded_md, Tw.shadow ] ]
                    [ Html.a
                        [ Attr.css
                            [ Tw.inline_flex
                            , Tw.items_center
                            , Tw.justify_center
                            , Tw.px_5
                            , Tw.py_3
                            , Tw.border
                            , Tw.border_WithColor Tw.transparent
                            , Tw.text_base
                            , Tw.font_medium
                            , Tw.rounded_md
                            , Tw.text_WithColor Tw.white
                            , Tw.bg_WithColor Tw.indigo_600

                            -- We can use hover styles via elm-css :)
                            , Css.hover [ Tw.bg_WithColor Tw.indigo_700 ]
                            ]
                        , Attr.href "#"
                        ]
                        [ Html.text "Get started" ]
                    ]
                ]
            ]
