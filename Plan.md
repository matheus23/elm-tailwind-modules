# Plan

* [X] Simplify call structure in code-generation (get rid of options)
* [X] Extract elm code generation elements
* [X] Use 'property' instead of typed elm-css
* [X] Figure out how to handle custom css:
  - This is the big one.
  - Either: Find component css selectors (group by .prose, e.g.)
  - Or: Run differently for `@tailwind utilities` and `@tailwind components`
  - [X] E.g. Handle tailwindcss' typography plugin: do '.prose' correctly.
* [ ] Generate breakpoint utilities by analysing tailwind config
  * [X] Simple breakpoint module generation
  * [X] Fix tests
  * [ ] Parse all kinds of breakpoints. Test them.
* [X] Rename the library
* [X] Recognize keyframe animation stuff
  * [X] Refactor how the postcss walk works. Don't `walkRules`, but `.each`, detect the kind of child (media query/keyframe/rule) and handle accordingly.
  * [X] Detect css properties that end in "animation" or "animation-name".
        Have a list of defined keyframe animations ready.
        Replace any occuring keyframe animation name in those css properties with an empty string.
        Add the css animation via the elm-css animationName mechanism.
* [X] Fix CI
* [X] Fix "font-size: [object Object]"
  * This is a bug of tailwind 2.0 with the tailwindui plugin. Luckly this plugin is obsolete
  * [X] Remove tailwindui
* [X] Add a test that ensures generated modules are formatted
* [ ] Add a command line interface
  * [ ] Add a cli.ts module
  * [ ] Rollup code for that module
  * [ ] Add an entry in package.json for "bin"
* [ ] Expand possible integration use cases
  * [ ] Allow custom postcss
  * [ ] Export as postcss plugin
* [ ] Write README/docs
  * [ ] Add jsdoc for index.ts
* [ ] Support parameterized css
  * [ ] Detect when css uses properties like theme colors
  * [ ] Detect when css uses spacings
* [ ] Do end-to-end snapshot testing
* [X] Fix selectors like `.aspect-w-1, .aspect-w-2` or `.ordinal, .slashed-zero`, etc. which are just shortcuts for setting this for all classes individually.


## Refactoring

* [X] Use typescript
* [X] Use typescript for tests
* [X] Use rollup to compile to udm/commonjs/esm
* [X] Drop jest, use ava
* [X] Enable more strict typescript

small things
* [X] Remove double-iteration over rules in parser
