module Main exposing (..)

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
        [ TW.bg_blue_500
        , TW.hover__bg_blue_700
        , TW.text_white
        , TW.font_bold
        , TW.py_2
        , TW.px_4
        , TW.rounded
        ]



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ css [ TW.bg_purple_200, atBreakpoint [ ( sm, TW.bg_red_800 ), ( lg, TW.bg_green_200 ) ] ] ]
        [ div []
            [ button [ css [ buttonStyle ] ] [ text "Button" ]
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
