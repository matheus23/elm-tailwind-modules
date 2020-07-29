# Changelog

## v0.4.1

Small fix where `.container` and `w-full` would conflict when using the `atBreakpoint` helper

## v0.4.0

### Support for CSS Grid utilities
You can now update your `tailwind.config.js` file and turn support back on for all of the CSS Grid support!


### Fixed `.container` utilities when used at defined breakpoints. 

Usually `.container` will apply `width: 100%` and then the breakpoint based ones in Tailiwind like `sm:container`  apply both a media query with the breakpoint pixel size as well as a width set to that hard-coded pixel size:
```css
@media (min-width: 640px) {
  .container {
    max-width: 640px;
  }
}
```

I have updated the `atBreakpoint` function so that it will not just wrap the `container` utility, but replace it with an equivalent elm-css version.

```elm
 div
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
        [ div [] [ text "div content goes here" ]
        , div [] [ text "div content goes here" ]
        , div [] [ text "div content goes here" ]
        ]
    ]

```


## v0.3.0
Added in support for [Space Between](https://tailwindcss.com/docs/space/#app) utilities following the normal naming conversion (e.g. `space_x_4`, `space_y_32`).

```elm
 div [ css [ TW.space_y_32 ] ]
    [ div [] [ text "div content goes here" ]
    , div [] [ text "div content goes here" ]
    , div [] [ text "div content goes here" ]
    ]

```

Also removed the generation of pseudo selectors (e.g. hover, active) in favor of elm-css functions. The function named mapping really didn't add anything besides generated code lots of duplciate generated code. You end up with something that still composes very nicely:

Example (this looks terrible, but it's proves the point)
```elm
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
```
## v0.2.1 
Reduced unnecessary code generation of `Css.batch` when only one CSS declaration, also removed the exposing list to be `(..)` to reduce the LOC. In total, 36% code generation reduction.

## v0.2.0
The sheer number of duplicate functions that are generated due to media query definitions was causing big problems with tooling like elm-format. Since elm-css is a pre-processor, I thought we could do something a little better.

* All base utilities are now generated in a `TW/Utilities.elm` module. These do not include the media-query variants, just the base + pseudo selectors like active/hover.
* A new `TW/Breakpoints.elm` module is generated that includes a new `Breakpoint` opaque type and constructor functions for each of your breakpoints. This also includes a function to leverage the utilities with the signature:

```elm
atBreakpoint : List ( Breakpoint, Css.Style ) -> Css.Style
atBreakpoint styles =
```

This guarantees that each media query is generated in the right order so you don't get rules that override each other due to their definition order in the generated stylesheet from elm-css. You can use it like this:

```elm
    div [ css [ TW.bg_purple_200, atBreakpoint [ ( sm, TW.bg_red_800 ), ( lg, TW.bg_green_200 ) ] ] ]
        [ div []
            [ button [ css [ buttonStyle ] ] [ text "Button" ]
            ]
        
```

Sorry for such a big change right away, but I realized that if people can't use elm-format in their projects due to this, no one would find this very useful.

## v.0.1.0
Initial release. Raw function generation for (almost) every Tailwind utility