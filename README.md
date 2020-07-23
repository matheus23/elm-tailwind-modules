
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
    Css.batch[TW.bg_blue_500, TW.hover__bg_blue_700, TW.text_white, TW.font_bold, TW.py_2 ,TW.px_4], TW.rounded]
```

This now becomes our reusable style that is comprised of all the base Tailwind utilities.



## Getting Started
**Note:** This is still pretty early. Not everything in Tailwind is supported (yet) but I'm working through big chunks of utility features at a time, and hope to get to near feature parity with Tailwind, where it makes sense.




## Supported
* Padding/margin
* Background and many color based selectors
* Width and height Hover variants
* Breakpoint based selectors  (width, height, margin, padding)
* Text colors and sizes

## Not (yet) supported

* Font
* display properties
* Space helpers (e.g. `space-x`)

## Future enhancements
* Include the normalize CSS stylesheet as part of the package. Tailwind assumes you leverage the CSS reset
* Work with custom Tailwind configuraitons. Right now everything is being worked on with a default Tailwind config
* Extract media query and reuse instead of duplicating `withMediaQuery` raw constructor
* Extract color palette definitions into exported colors or maybe opaque types




**Shout out to [postcss-elm-tailwind](https://github.com/monty5811/postcss-elm-tailwind)**: They did some great foundational work that I leveraged. I attempted to fit my new code in with theirs, but the data structures I needed were a little more complex/nested and would require a full refactor of their code. You will still see some remnants of their code lingering around.