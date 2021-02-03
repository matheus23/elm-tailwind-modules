
module Main exposing (..)

import Tailwind.Utilities as Tailwind
import Css
import Css.Media
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr


main =
    Html.div
        [ Attr.css
            [ Tailwind.container
            , Tailwind.bg_gray_200
            , Tailwind.animate_pulse
            ]
        ]
        [ Html.text "Container"
        ]
        |> Html.toUnstyled

cases =
    Css.batch
        [ Css.property "" ""
        , Css.property "" ""
        , Css.Media.withMediaQuery [ "(min-width: 900px)" ]
            [ Css.property "" "" ]
        , Css.Media.withMediaQuery [ "(min-width: 640px)" ]
            [ Css.Global.children
                [ Css.Global.selector ":not(template) ~ :not(template)"
                    [ Css.property "" ""
                    , Css.property "" ""
                    ]
                ]
            ]
        , Css.Global.children
            [ Css.Global.selector ":not(template) ~ :not(template)"
                [ Css.property "" ""
                , Css.property "" ""
                ]
            ]
        ]
