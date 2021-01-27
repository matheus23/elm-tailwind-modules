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
  * [ ] Fix tests
  * [ ] Parse all kinds of breakpoints. Test them.

## Refactoring

* [X] Use typescript
* [ ] Use typescript for tests
* [ ] Use rollup to compile to udm/commonjs/esm
* [X] Drop jest, use ava

small things
* [ ] Remove double-iteration over rules in parser
