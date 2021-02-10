# Elm Tailwind Modules

> Generate Elm code for Tailwind Utilities and Components that purges using Elm's --optimize!

> Use [Tailwind](https://tailwindcss.com/) with [Elm-Css](https://github.com/rtfeldman/elm-css)!

---

## Getting Started

```sh
$ npm i --save-dev elm-tailwind-modules tailwindcss postcss
$ npx elm-tailwind-modules --dir ./gen
Saved
 - gen/Tailwind/Utilities.elm
 - gen/Tailwind/Breakpoints.elm
$ elm install rtfeldman/elm-css
```

This will generate these files:
* [`gen/Tailwind/Utilities.elm`](https://github.com/matheus23/elm-tailwind-modules/blob/master/docs/example/Tailwind/Utilities.elm)
* [`gen/Tailwind/Breakpoints.elm`](https://github.com/matheus23/elm-tailwind-modules/blob/master/docs/example/Tailwind/Breakpoints.elm)

Now you simply import these modules and use them in your elm code:

```elm
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
```
The result looks like this:

![Screenshot](https://raw.githubusercontent.com/matheus23/elm-tailwind-modules/master/test-example/result.png)

(For a bigger example, see [test-example/src/Main.elm](https://github.com/matheus23/elm-tailwind-modules/blob/master/test-example/src/Main.elm).)


## CLI

```
$ elm-tailwind-modules --help
Usage: elm-tailwind-modules [options]

Options:
  -V, --version             output the version number
  --dir <dir>               destination folder for generated elm modules, e.g. "src/" or "gen/". Add this folder to your elm.json
                            source-directories.
  --module-name <name>      module name prefix for generated elm modules, e.g. "Tailwind" or "Css.Gen"
  --tailwind-config <file>  your tailwind config file (default: null)
  -h, --help                display help for command
```

## Nodejs API

This package is written in typescript, so you can use it from node via the same npm package, too.

The nodejs API allows you to do more stuff, for example, include additional postcss plugins like autoprefixer.

It boils down to this:
```js
import elmTailwindModules from "elm-tailwind-modules";
import tailwindConfig from "my-tailwind.js";
import autoprefixer from "autoprefixer";

elmTailwindModules.run({
    directory: "./gen",
    moduleName: "Tailwind",
    postcssPlugins: [autoprefixer],
    tailwindConfig,
});
```

You can find the documentation at [matheus23.github.io/elm-tailwind-modules](https://matheus23.github.io/elm-tailwind-modules/modules.html#run).

## Comparisons

* [monty5811/postcss-elm-tailwind](https://github.com/monty5811/postcss-elm-tailwind):
  - You still need to include a `.css` file
  - You need to purge the `.css` file (which is a somewhat involved process, including having to run postcss twice)
  - The generated files contain a definition for all variants, which makes them much bigger (150+kLOC vs. 30+kLOC)
  - Has more configuration options
  - More mature and robust
* Using classes via tailwind directly:
  - No type checking (typos might don't get noticed)
  - global namespaces for classes

So mainly, the cool things about this package are:
* You can use elm-css with tailwind. So:
  - No writing css by hand
  - No global css class namespaces
  - All the features of tailwindcss, its plugins and ecosystem
  - Simply import some elm files after generating them, and they're all you need

## Acknowledgements

The idea for this is not original. It's a fork from [justinrassier/postcss-elm-css-tailwind](https://github.com/justinrassier/postcss-elm-css-tailwind). Thanks!
