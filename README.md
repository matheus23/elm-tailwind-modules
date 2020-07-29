
# Elm CSS Tailwind
## Generate elm-css versions of your Tailwind utilities.
[Tailwind CSS](https://tailwindcss.com) is an amazing utility-first approach to CSS which enables rapid development within predefined color, spacing, breakpoint systems. 

[elm-css](https://package.elm-lang.org/packages/rtfeldman/elm-css/latest) is a beautiful package that allows you to write compiler-guaranteed style sheets with pure Elm.

What if we could marry the benefits of both systems? What if our Tailwind utilities were just elm-css Style types?


Elm CSS Tailwind is a postcss plugin that takes your Tailwind config setup and spits out a pre-generated Elm module that contains all of your Tailwind utilities as [elm-css Style](https://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css#Style) types which can be used directly with elm-css.

Why would we want to do this?

### Compiler Help
Tailwind by default is just CSS classes. This is fine and dandy, but we in the Elm world love our compiler help. With everything defined as a elm-css Style, you cannot write a Tailwind utility that doesn't exist!

### Purged CSS without PurgeCSS
By default, Tailwind generates A LOT of CSS. They have done a great job at making it work well with compression, but by default you end up with a pretty large CSS file that you have to ship to your client. 

Tailwind recommends that you setup [PurgeCSS](https://purgecss.com) as part of your build, and actually started [shipping with a purge option as of 1.4.1](https://github.com/tailwindlabs/tailwindcss/releases?after=v1.4.1#built-in-purgecss)

This is fine and all, but this feels like an extra step. Elm has [function-level dead code elmination](https://elm-lang.org/news/small-assets-without-the-headache) built in by default. Therefor by writing in pure Elm with elm-css,  it means we only bundle the styles that are used right out of the box! No need to purge your stylesheet.

### Composable 
Those who are first introduced to Tailwind have a pretty visceral reaction to seeing something like this in their markup:

```html
<button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
  Button
</button>
```

What if you want all your buttons to look the same? Do you have to copy all 7 CSS classes around? One argument is to extract that markup into your framework of choice for reuse, which is one approach. Another approach is to use the Tailwind ability to [extract components](https://tailwindcss.com/docs/extracting-components). To us in Elm, this looks very much like composing functions. So instead of using the Tailwind means of composing classes, we can do something like this:

```elm
buttonStyle: Css.Style
buttonStyle = 
     Css.batch [ TW.bg_blue_500, Css.hover [ TW.bg_blue_700 ], TW.text_white, TW.font_bold, TW.py_2, TW.px_4, TW.rounded ]
```

This now becomes our reusable style that is comprised of all the base Tailwind utilities.



## Getting Started
**Note:** This is still pretty early. A large amount of the utilities are generated and compile, but have not been verified. Feel free to report an issue and I'll dig into what property isn't generating correctly.


### Install tailwind, postcss and the postcss plugin
```shell
npm install -D tailwindcss postcss-cli postcss-elm-css-tailwind
```

### Install `elm/regex` into you Elm dependencies
The generated Breakpoint helpers (see below) have a dependency on `elm/regex` Perhaps a companion Elm package would be more appropriate, but for now you manually have to install this dependency.
```shell
elm install elm/regex
```

### Create a base `tailwind.css` file
```css
@tailwind base;

@tailwind components;

@tailwind utilities;
```

### Create a `tailwind.config.js` file and turn off unsupported options
As of now, you won't end up with an Elm file that will compile unless you turn off Transition support. 

```js
module.exports = {
  theme: {},
  variants: {},
  corePlugins: {
    transitionProperty: false,
    transitionTimingFunction: false,
    transitionDelay: false,
    transitionDuration: false,
  },
  plugins: [],
};

```

**Note:** If you have a heavily customized Tailwind.config file, things may not work properly. Initial development was based off of the default config. The goal is to have robust support of all the ways you can configure Tailwind. That being said, basic configs should work (e.g. color names and definitions, breakpoint sizes).

### Create a `postcss.config.js` file

```js
const postcssElmCssTailwind = require("postcss-elm-css-tailwind");

module.exports = {
  plugins: [
    require("tailwindcss")("./tailwind.config.js"),
    postcssElmCssTailwind(),
  ],
};

```

### Run PostCSS CLI to generate your files

This will generate a `TW.elm` file (with a corresponding `TW` module) inside of your `src/` directory. Right now there isn't a way to configure the output, but that should be coming soon

PostCSS is going to still kick out a generated CSS file, you can either leverage it, or discard it.


```shell
 npx postcss -o dist/main.css tailwind.css
```

### Include CSS normalize file
Tailwind operates and generates a built in [normalize.css](https://github.com/necolas/normalize.css/) file. This plugin only generates the utilities, you will still want to include a normalize CSS to get the expected behavior. For convenience, you can grab the `tailwind-base.css` file from this repo directly, which is just the `@tailwind base` output.

### Use your utilities!

postcss-elm-css-tailwind generates a couple things for you:

#### `TW/Utilities.elm`
These are all of your base Tailwind utility classes. Their naming convention is changed to work with Elm as follows:

* The '`-`' is replaced with '`_`' (e.g. `mb_4`, `bg_blue_400`)
* Negative margins are prefixed with `neg` (e.g. `neg_m_4`)

##### What about pseudo selctors like `:hover` or `:active`?

Turns out we don't really need them in the same way you do in traditional Tailwind. It's true this is a bit of a departure, but I don't think it will feel all that bad, even if you are Tailwind purest. Elm CSS comes with function `Css.hover` or `Css.active` that play nice with your utility classes. These compose well and also reduce the amount of generated code, therefore helping your tooling like elm-format of elm-analyze out.

Example: 
```elm
 div [ css [ Css.hover[TW.space_y_32] ] ]
    [ div [] [ text "div content goes here" ]
    , div [] [ text "div content goes here" ]
    , div [] [ text "div content goes here" ]
    ]

```





#### `TW/Breakpoints.elm`
Media-query/breakpoint definitions are not generated as discrete funtions. Instead, a new module `TW/Breakpoints.elm` is generated with a new opaque `Breakpoint`type  and a contruction function  for each of your breakpoint names. (e.g. `sm`, `md`, `lg`, `xl`) along with the following utility function:

```elm
atBreakpoint : List ( Breakpoint, Css.Style ) -> Css.Style
atBreakpoint styles =
```

Because of the way elm-css processes the rules, this function guarantees that if you have multiple breakpoint definitions, that they will be applied in the correct order to not be overwritten by each other:

```elm
view : Model -> Html Msg
view model =
    div [ css [ TW.bg_purple_200, atBreakpoint [ ( sm, TW.bg_red_800 ), ( lg, TW.bg_green_200 ) ] ] ]
        [ div []
            [ text "Hello World!"
            ]
        ]
```

## Developing
Coming Soon!


## Supported
* Almost everything compiles. I tried to get as much into raw elm-css to help guarantee a valid stylesheet. I sometimes had use the escape hatch and use [Css.property](https://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css#property) when either the support (or ambition) was lacking. 

## Not (yet) supported

* CSS Transitions

## Future enhancements
* Add auto prefixer support. Adding it now causes duplicate function definitions that I need to determine how to group. 
* Include the normalize CSS stylesheet as part of the package. Tailwind assumes you leverage the CSS reset
* Work with custom Tailwind configuration. Right now everything is developed with a default Tailwind config
* Extract color palette definitions into exported values or maybe opaque types




**Shout out to [monty5811/postcss-elm-tailwind](https://github.com/monty5811/postcss-elm-tailwind)**: They did some great foundational work that I leveraged. I attempted to fit my new code in with theirs, but the data structures I needed were a little more complex/nested and would require a full refactor of their code. You will still see some remnants of their code lingering around.