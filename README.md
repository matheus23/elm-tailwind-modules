# Elm Tailwind Modules

> Generate Elm code for Tailwind Utilities and Components which purges using Elm's dead code elimination!
>
> Use [Tailwind](https://tailwindcss.com/) with [Elm-Css](https://github.com/rtfeldman/elm-css)!

## Quick Start

If you want to try out how using elm-css with tailwind feels like **without using npm**, try out the package with prebuilt modules: [elm-default-tailwind-modules](https://package.elm-lang.org/packages/matheus23/elm-default-tailwind-modules/latest/)

## Install

``` sh
$ npm i --save-dev elm-tailwind-modules tailwindcss postcss
$ npx elm-tailwind-modules --dir ./gen
Saved
 - gen/Tailwind/Utilities.elm
 - gen/Tailwind/Theme.elm
 - gen/Tailwind/Breakpoints.elm
$ elm install rtfeldman/elm-css
```

This will generate these files:

* [`gen/Tailwind/Utilities.elm`](https://github.com/matheus23/elm-tailwind-modules/blob/master/docs/example/Tailwind/Utilities.elm)
* [`gen/Tailwind/Theme.elm`](https://github.com/matheus23/elm-tailwind-modules/blob/master/docs/example/Tailwind/Theme.elm)
* [`gen/Tailwind/Breakpoints.elm`](https://github.com/matheus23/elm-tailwind-modules/blob/master/docs/example/Tailwind/Breakpoints.elm)

## Use

Now you simply import these modules and use them in your elm code:

``` elm
import Css
import Css.Global
import Html.Styled as Html
import Html.Styled.Attributes as Attr
import Tailwind.Breakpoints as Breakpoints
import Tailwind.Utilities as Tw
import Tailwind.Theme as Tw


main =
    Html.toUnstyled <|
        Html.div [ Attr.css [ Tw.bg_color Tw.gray_50 ] ]
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
                            , Tw.border_color Tw.transparent
                            , Tw.text_base
                            , Tw.font_medium
                            , Tw.rounded_md
                            , Tw.text_color Tw.white
                            , Tw.bg_color Tw.indigo_600

                            -- We can use hover styles via elm-css :)
                            , Css.hover [ Tw.bg_color Tw.indigo_700 ]
                            ]
                        , Attr.href "#"
                        ]
                        [ Html.text "Get started" ]
                    ]
                ]
            ]
```

The result looks like this:

![Screenshot](https://raw.githubusercontent.com/matheus23/elm-tailwind-modules/master/test-example/result.png)

(For a bigger example, see [test-example/src/Main.elm](https://github.com/matheus23/elm-tailwind-modules/blob/master/test-example/src/Main.elm) and related files.)

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

``` js
const elmTailwindModules = require("elm-tailwind-modules");
const tailwindConfig = require("./my-tailwind.js");
const autoprefixer = require("autoprefixer");

elmTailwindModules.run({
    directory: "./gen",
    moduleName: "Tailwind",
    postcssPlugins: [autoprefixer],
    tailwindConfig,
});
```

### Full control

If you need _even more_ control, you can integrate `elm-tailwind-modules` with your existing postcss pipeline by using it as a postcss plugin.

Below is an example of using `elm-tailwind-modules`  `asPostcssPlugin` function to get following control:

* Providing your own postcss file to consume
* Adding the `postcss-import` plugin at the start of your postcss pipeline
* Writing css that wasn't turned into elm definitions back as a css file

  
  (This can be useful, as the generated `globalStyles` definition has its limits, for example you can't use `@font-face` in elm-css.)

``` js
const elmTailwindModules = require("elm-tailwind-modules");
const tailwindConfig = require("./my-tailwind.js");
const autoprefixer = require("autoprefixer");
const postcssImport = require("postcss-import");
const postcss = require("postcss");
const tailwindcss = require("tailwindcss");
const fs = require("fs").promises;

const logFunction = message => console.log(message);

const moduleName = "Tailwind";

const elmTailwindModulesPlugin = elmTailwindModules.asPostcssPlugin({
    moduleName,
    tailwindConfig,
    generateDocumentation: true,
    logFunction,
    modulesGeneratedHook: async generated => elmTailwindModules.writeGeneratedFiles({
        directory: "gen",
        moduleName,
        logFunction,
        generated
    })
});

// This file has the postcss superpowers. So it includes things like
// * @tailwind base; @tailwind components; @tailwind utilities;
// * postcss-import's @import
// * tailwindcss' @apply
const inputCssFile = "./my-postcss.css";

// This file will contain basic css that every browser understands
const outputCssFile = "./build/stylesheet.css";

(async () => {
    const inputCss = await fs.readFile(inputCssFile, {
        encoding: "utf8"
    });

    const result = await postcss.default([
        // We can specify our own order of postcss plugins.
        postcssImport,
        tailwindcss(tailwindConfig),
        autoprefixer,
        elmTailwindModulesPlugin
    ]).process(inputCss, {
        from: inputCssFile,
        to: outputCssFile,
    });

    logFunction(`Saving remaining global css to ${outputCssFile}`);
    await fs.writeFile(outputCssFile, result.content);
})()
```

### Node API Documentation

You can find the documentation at [matheus23.github.io/elm-tailwind-modules](https://matheus23.github.io/elm-tailwind-modules/modules.html#run).

## Comparisons

* [monty5811/postcss-elm-tailwind](https://github.com/monty5811/postcss-elm-tailwind):
  + You still need to include a `.css` file
  + You need to purge the `.css` file (which is a somewhat involved process, including having to run postcss twice)
  + The generated files contain a definition for all variants, which makes them much bigger (150+kLOC vs. 30+kLOC)
  + Has more configuration options
  + More mature and robust
* Using classes via tailwind directly:
  + No type checking (typos might not get noticed)
  + global namespaces for classes

So mainly, the cool things about this package are:

* You can use elm-css with tailwind. So:
  + No writing css by hand
  + No global css class namespaces
  + All the features of tailwindcss, its plugins and ecosystem
  + Simply import some elm files after generating them, and they're all you need

## Acknowledgements

The idea for this is not original. It's a fork from [justinrassier/postcss-elm-css-tailwind](https://github.com/justinrassier/postcss-elm-css-tailwind). Thanks!
