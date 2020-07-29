module Main exposing (..)

-- import TW.Scratchpad

import Browser
import Css
import Html.Styled exposing (Html, button, div, h1, img, text)
import Html.Styled.Attributes exposing (css, src)
import TW.Breakpoints exposing (atBreakpoint, lg, sm)
import TW.Utilities as TW



---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


buttonStyle : Css.Style
buttonStyle =
    Css.batch
        [ TW.block
        , TW.bg_blue_500
        , Css.hover [ TW.bg_blue_700 ]
        , Css.active [ TW.bg_blue_900 ]
        , TW.text_white
        , TW.font_bold
        , TW.py_2
        , TW.px_4
        , TW.rounded
        , atBreakpoint [ ( lg, Css.hover [ TW.bg_yellow_100, TW.text_gray_900 ] ) ]
        ]



---- VIEW ----


view : Model -> Html Msg
view model =
    div
        [ css
            [ Css.hover [ TW.bg_purple_200 ]
            , atBreakpoint
                [ ( sm, Css.hover [ TW.bg_red_800 ] )

                -- , ( lg, TW.bg_green_200 )
                , ( lg, Css.hover [ TW.bg_black ] )
                ]
            ]
        ]
        [ div
            [ css
                [ atBreakpoint
                    [ ( lg, TW.bg_green_900 )
                    , ( sm, TW.bg_green_100 )
                    , ( lg, TW.container )
                    , ( sm, TW.container )
                    ]
                ]
            ]
            [ div [ css [ TW.space_y_32 ] ]
                [ button [ css [ buttonStyle ] ] [ text "Button" ]
                , button [ css [ buttonStyle ] ] [ text "Button" ]
                , button [ css [ buttonStyle ] ] [ text "Button" ]
                ]
            ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view >> Html.Styled.toUnstyled
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
