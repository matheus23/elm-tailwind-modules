module TW.Scratchpad exposing (..)

import Css
import Css.Global
import Css.Media
import Regex
import TW.Utilities


type Breakpoint
    = Breakpoint String



-- Guarantees that the list of styles gets applied in "ascending " breakpoing order, so no styles get covered up by the order
-- in which they are defined in the elm-css generated stylesheet


numberRegex : Regex.Regex
numberRegex =
    Maybe.withDefault Regex.never <| Regex.fromString "\\d+"


atBreakpoint : List ( Breakpoint, Css.Style ) -> Css.Style
atBreakpoint styles =
    let
        convertContainer : String -> Css.Style -> Css.Style
        convertContainer mq style =
            if style == TW.Utilities.container then
                Regex.find numberRegex mq
                    |> List.head
                    |> Maybe.map .match
                    |> Maybe.andThen String.toFloat
                    |> Maybe.map (\v -> Css.width (Css.px v))
                    |> Maybe.withDefault style

            else
                style
    in
    styles
        |> List.sortWith
            (\( Breakpoint mq1, _ ) ( Breakpoint mq2, _ ) ->
                ( List.head (Regex.find numberRegex mq1) |> Maybe.map .match |> Maybe.andThen String.toInt |> Maybe.withDefault 0
                , List.head (Regex.find numberRegex mq2) |> Maybe.map .match |> Maybe.andThen String.toInt |> Maybe.withDefault 0
                )
                    |> (\( size1, size2 ) -> compare size1 size2)
            )
        |> List.reverse
        |> List.map (\( Breakpoint mq, s ) -> Css.batch [ Css.Media.withMediaQuery [ mq ] [ convertContainer mq s ] ])
        |> Css.batch


container : Maybe Breakpoint -> Css.Style
container bp =
    case bp of
        Nothing ->
            Css.width (Css.pct 100)

        Just (Breakpoint mq) ->
            let
                breakpointPx : Float
                breakpointPx =
                    Regex.find numberRegex mq
                        |> List.head
                        |> Maybe.map .match
                        |> Maybe.andThen String.toFloat
                        |> Maybe.withDefault 0.0
            in
            Css.width (Css.px breakpointPx)


test : Css.Style -> String
test style =
    if style == TW.Utilities.container then
        "true"

    else
        "false"


sm : Breakpoint
sm =
    Breakpoint "(min-width: 640px)"


md : Breakpoint
md =
    Breakpoint "(min-width: 768px)"


lg : Breakpoint
lg =
    Breakpoint "(min-width: 1024px)"


xl : Breakpoint
xl =
    Breakpoint "(min-width: 1280px)"
