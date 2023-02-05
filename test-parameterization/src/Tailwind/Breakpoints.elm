module Tailwind.Breakpoints exposing
    ( lg
    , md
    , sm
    , xl
    , xxl
    )

{-|


## Tailwind Breakpoints


### How tailwind's breakpoints work

Tailwind (by default) uses min-width breakpoints.

The workflow with them should be like this:

1.  You define styles for mobile without breakpoints
2.  You adjust the styling for devices _bigger than_ the `sm` (or `lg`, etc.) breakpoint
3.  You in turn override these styles with even higher breakpoints

Read more about breakpoints in the [tailwind documentation].


### A note about breakpoint usage oder

The above relies on style definitions having a certain order in css. The first style in css wins.

Thus, unfortunately **you need to be careful about the order you use your breakpoints** in elm-css.
Make sure to use breakpoints from big to small, like so:

    myElement =
        div
            [ css
                [ xxl [ text_indigo_700 ]
                , lg [ text_blue_700 ]
                , sm [ text_green_700 ]
                ]
            ]
            [ text "Colorful text"
            ]

This is _not_ the case when using tailwind directly, because then tailwind has control over the
order of declarations in the generated css, which we don't have.


### Breakpoints

@docs lg
@docs md
@docs sm
@docs xl
@docs xxl

[tailwind documentation]: https://tailwindcss.com/docs/responsive-design

-}

import Css
import Css.Media


{-| Media query breakpoint for minimum width 1024px

CSS: `@media (min-width: 1024px) { ... }`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
lg : List Css.Style -> Css.Style
lg =
    Css.Media.withMediaQuery [ "(min-width: 1024px)" ]


{-| Media query breakpoint for minimum width 768px

CSS: `@media (min-width: 768px) { ... }`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
md : List Css.Style -> Css.Style
md =
    Css.Media.withMediaQuery [ "(min-width: 768px)" ]


{-| Media query breakpoint for minimum width 640px

CSS: `@media (min-width: 640px) { ... }`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
sm : List Css.Style -> Css.Style
sm =
    Css.Media.withMediaQuery [ "(min-width: 640px)" ]


{-| Media query breakpoint for minimum width 1280px

CSS: `@media (min-width: 1280px) { ... }`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
xl : List Css.Style -> Css.Style
xl =
    Css.Media.withMediaQuery [ "(min-width: 1280px)" ]


{-| Media query breakpoint for minimum width 1536px

CSS: `@media (min-width: 1536px) { ... }`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}
xxl : List Css.Style -> Css.Style
xxl =
    Css.Media.withMediaQuery [ "(min-width: 1536px)" ]
