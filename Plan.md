# Plan

## Auto-abstract css utilities

* [X] Auto-abstract colors
  * [X] Detect when css uses properties like theme colors
  * [X] Match the abstracted color out of the css property
  * [X] Detect all color-parameterizable properties (maybe detect everything with color suffixes?)
    * [X] List all colors for a tailwind config
    * [X] Detect suffixes
  * [X] Fix exposes with new config
  * [X] Detect transparent colors (e.g. blue-500/95) (use theme.opacity)
  * [X] `withOpacity : Theme.Opacity -> Theme.Color -> Theme.Color` helper
  * [X] Look at counterexamples & fix them
    * [X] Detect color values in 'suspected to be parameterizable' definitions
    * [X] Detect better where/when to replace values with abstract `color` var
      * [X] Handle cases of computed opacity values (opacity replaced with 0)
      * [X] Handle cases of color appearing mid-value (e.g. viaWithColor)
    * [X] Handle colors without opacity variables correctly (e.g. caretWithColor)
    * [X] Use `declaration.opacityVariableName`
    * [X] Refactor: Remove `isParameterized` parameter
    * [X] Look through TODOs in the code
  * [X] Generate & use opacity variants: Make `opacity_50` etc. use `Theme.Opacity` instead
  * [X] ~~Handle naming option in CLI for camel case in isParameterizable in parser code~~ Turns out that has always been disabled. Removed the dead code path
  * [X] Use a non-primitive elm type for colors (instead of String)
  * [X] Get numbers on the size difference (88320 exposed values vs. 3812)
  * [X] Figure out naming. (e.g. parameterized border vs. border property). Have a `WithColor` suffix
  * [X] Think about custom documentation support.
    * Just ended up adding a separate function
  * [X] ~~Think about whether we want something like `type Color opacity` and `Color ()` or `Color Never`.
        The idea being that some functions like `viaWithColor` or `fromWithColor` will always overwrite the opacity,
        thus it doesn't make sense to pass opacity in.~~
        Not worth it! Only 2 places in Utilities that override `withOpacity`.
  * [X] Think about "Refactor Internal functions like `toProperty` in Theme" (see below)
  * [X] Publish
  * [X] (optionally: Look at refactoring? E.g. detect & deduplicate outside of `code-generators/` files)
  * [X] Release new default-tailwind-modules with Tailwind v3
  * [ ] Support new API format in https://html-to-elm.com/
* [ ] Detect when css uses the same spacing values over and over

* [ ] Break `Tailwind.Theme` into two modules: `Tailwind.Internal` and `Tailwind.Theme`.
      `Tailwind.Theme` then contains symlinks for `type alias Color = Tailwind.Internal.Color` and opacity,
      as well as all color and opacity definitions.
      `Tailwind.Internal` contains the actual type definitions and the `toProperty*` functions.
      Then, in `elm-default-tailwind-modules`, we can export `Tailwind.Theme`, but keep `Tailwind.Internal` private.

## General

* [ ] Use esbuild (much faster builds, great watch mode for `yarn link`ed development)
* [ ] Do end-to-end snapshot testing
* [ ] Generate breakpoint utilities by analysing tailwind config
  + [X] Simple breakpoint module generation
  + [X] Fix tests
  + [ ] Parse all kinds of breakpoints. Test them.
* [ ] Figure out good darkmode support when the darkmode is configured to classes (https://tailwindcss.com/docs/dark-mode#toggling-dark-mode-manually)
* [ ] Improve performance. Main cost centre seems to be in `src/helpers.ts#toElmName`.

## Done

* [X] Remove cli option for looking up postcss
  + [X] Write more extensive docs for using `asPostcssPlugin` in readme
* [X] Simplify call structure in code-generation (get rid of options)
* [X] Extract elm code generation elements
* [X] Use 'property' instead of typed elm-css
* [X] Figure out how to handle custom css:
  + This is the big one.
  + Either: Find component css selectors (group by .prose, e.g.)
  + Or: Run differently for `@tailwind utilities` and `@tailwind components`
  + [X] E.g. Handle tailwindcss' typography plugin: do '.prose' correctly.
* [X] Rename the library
* [X] Recognize keyframe animation stuff
  + [X] Refactor how the postcss walk works. Don't `walkRules`, but `.each`, detect the kind of child (media query/keyframe/rule) and handle accordingly.
  + [X] Detect css properties that end in "animation" or "animation-name".

        Have a list of defined keyframe animations ready.
        Replace any occuring keyframe animation name in those css properties with an empty string.
        Add the css animation via the elm-css animationName mechanism.

* [X] Fix CI
* [X] Fix "font-size: [object Object]"
  + This is a bug of tailwind 2.0 with the tailwindui plugin. Luckly this plugin is obsolete
  + [X] Remove tailwindui
* [X] Add a test that ensures generated modules are formatted
* [X] Add a command line interface
  + [X] Add a cli.ts module
  + [X] Rollup code for that module
  + [X] Add an entry in package.json for "bin"
* [X] Expand possible integration use cases
  + [X] Allow custom postcss
  + [X] Export as postcss plugin
* [X] Write README/docs
  + [X] Add jsdoc for index.ts
* [X] Fix selectors like `.aspect-w-1, .aspect-w-2` or `.ordinal, .slashed-zero`, etc. which are just shortcuts for setting this for all classes individually.
* [X] Clear docs/ and dist/ before builds

## Refactoring

* [X] Use typescript
* [X] Use typescript for tests
* [X] Use rollup to compile to udm/commonjs/esm
* [X] Drop jest, use ava
* [X] Enable more strict typescript

small things

* [X] Remove double-iteration over rules in parser

