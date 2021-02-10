module Main exposing (..)

import Css exposing (hover)
import Css.Global
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href)
import Tailwind.Breakpoints exposing (..)
import Tailwind.Utilities exposing (..)


main =
    toUnstyled <|
        div [ css [ bg_gray_50 ] ]
            [ -- This will give us the standard tailwind style-reset as well as the fonts
              Css.Global.global globalStyles
            , div
                [ css
                    [ mt_8
                    , flex

                    -- We use breakpoints like this
                    -- However, you need to order your breakpoints from hight to low :/
                    , lg [ mt_0, flex_shrink_0 ]
                    ]
                ]
                [ div [ css [ inline_flex, rounded_md, shadow ] ]
                    [ a
                        [ css
                            [ inline_flex
                            , items_center
                            , justify_center
                            , px_5
                            , py_3
                            , border
                            , border_transparent
                            , text_base
                            , font_medium
                            , rounded_md
                            , text_white
                            , bg_indigo_600

                            -- We can use hover styles via elm-css :)
                            , hover [ bg_indigo_700 ]
                            ]
                        , href "#"
                        ]
                        [ text "Get started" ]
                    ]
                ]
            ]
