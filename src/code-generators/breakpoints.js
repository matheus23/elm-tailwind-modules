function elmFileGenerator(elmModuleName, breakpoints) {
  return elmHeader(elmModuleName, breakpoints) + elmBody(breakpoints);
}

function elmHeader(elmModuleName, breakpoints) {
  l = elmHeaderExports(breakpoints);

  return `module ${elmModuleName} exposing
    ( atBreakpoint
    , ${l}
    )

import Css 
import Css.Media
import Regex
import TW.Utilities

`;
}
function elmHeaderExports(breakpoints) {
  let tmp = Array.from(breakpoints.keys());

  tmp.sort();
  return tmp.join("\n    , ");
}

function elmBody(breakpoints) {
  const staticDefinitions = `
type Breakpoint =
  Breakpoint String


numberRegex : Regex.Regex
numberRegex =
    Maybe.withDefault Regex.never <| Regex.fromString "\\\\d+"

-- Guarantees that the list of styles gets applied in "ascending " breakpoing order, so no styles get covered up by the order
-- in which they are defined in the elm-css generated stylesheet
atBreakpoint : List ( Breakpoint, Css.Style ) -> Css.Style
atBreakpoint styles =
    let
        -- convert a container style which is width: 100% into the width: <breakpoint-px> 
        convertContainer : String -> Css.Style -> Css.Style
        convertContainer mq style =
            if style == TW.Utilities.container then
                Regex.find numberRegex mq
                    |> List.head
                    |> Maybe.map .match
                    |> Maybe.andThen String.toFloat
                    |> Maybe.map (\\v -> Css.width (Css.px v))
                    |> Maybe.withDefault style

            else
                style
    in
    styles
        |> List.sortWith
            (\\( Breakpoint mq1, _ ) ( Breakpoint mq2, _ ) ->
                ( List.head (Regex.find numberRegex mq1) |> Maybe.map .match |> Maybe.andThen String.toInt |> Maybe.withDefault 0
                , List.head (Regex.find numberRegex mq2) |> Maybe.map .match |> Maybe.andThen String.toInt |> Maybe.withDefault 0
                )
                    |> (\\( size1, size2 ) -> compare size1 size2)
            )
        |> List.reverse
        |> List.map (\\( Breakpoint mq, s ) -> Css.batch [ Css.Media.withMediaQuery [ mq ] [ convertContainer mq s ] ])
        |> Css.batch

  `;
  return staticDefinitions + breakpointConstructors(breakpoints);
}

function breakpointConstructors(breakpoints) {
  let body = "";
  for (let [name, mediaQueryString] of breakpoints) {
    body =
      body +
      `
${name} : Breakpoint
${name} =
    Breakpoint "${mediaQueryString}"
    `;
  }
  return body;
}

const defaultOpts = {
  elmFile: "src/TW/Breakpoints.elm",
  elmModuleName: "TW.Breakpoints",
  prefix: "",
  nameStyle: "snake",
};

function cleanOpts(opts) {
  opts = { ...defaultOpts, ...opts };
  opts.formats = { ...opts.formats };

  return opts;
}

function formats(opts) {
  return [cleanFormat(opts, elmFileGenerator)];
}

function cleanFormat({ elmFile, elmModuleName }, elmBodyFn) {
  if (!elmFile) return false;
  if (!elmModuleName) return false;

  return { elmFile, elmModuleName, elmBodyFn };
}

exports.cleanOpts = cleanOpts;
exports.defaultOpts = defaultOpts;
exports.formats = formats;
