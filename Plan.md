# Plan

* [X] Simplify call structure in code-generation (get rid of options)
* [ ] Extract elm code generation elements
* [X] Use 'property' instead of typed elm-css
* [ ] Switch to elm-origami
* [ ] Figure out how to handle custom css:
  - This is the big one.
  - Either: Find component css selectors (group by .prose, e.g.)
  - Or: Run differently for `@tailwind utilities` and `@tailwind components`
  - [ ] E.g. Handle tailwindcss' typography plugin: do '.prose' correctly.
* [ ] [Fuck](https://css-tricks.com/logic-in-media-queries/#overriding)
  - Think about how to do breakpoints differently.
  - Analyse how elm-css/elm-origami generates media queries. Maybe there's no problem if the order is correct?
