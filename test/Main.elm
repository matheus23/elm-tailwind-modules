
module Main exposing (..)

import TW.Utilities as TW
import Css
import Css.Media
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr


main =
    Html.div
        [ Attr.css
            [ TW.container
            , TW.bg_gray_200
            , Css.Media.withMediaQuery [ "(min-width: 900px)" ]
                [ Css.property "max-width" "900px" ]
            , Css.Media.withMediaQuery [ "(min-width: 640px)" ]
                [ Css.property "max-width" "640px" ]
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
