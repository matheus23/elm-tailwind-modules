# Plan

## Auto-abstract css utilities

* [ ] Auto-abstract colors
  * [X] Detect when css uses properties like theme colors
  * [X] Match the abstracted color out of the css property
  * [ ] Detect all color-parameterizable properties (maybe detect everything with color suffixes?)
    * [ ] List all colors for a tailwind config
  * [ ] Detect transparent colors (e.g. blue-500/95)
  * [ ] Make opacity parameterized (maybe generate another set of functions. E.g. bg & bgWithOpacity, use "bg{color}{opacity}" as the identifier)
  * [ ] Use a non-primitive elm type for colors (instead of String)
  * [ ] Get numbers on the size difference
  * [ ] Publish
* [ ] Detect when css uses the same spacing values over and over

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
