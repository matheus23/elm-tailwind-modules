# Plan

* [X] Simplify call structure in code-generation (get rid of options)
* [ ] Extract elm code generation elements
* [X] Use 'property' instead of typed elm-css
* [ ] Switch to elm-origami
* [X] Figure out how to handle custom css:
  - This is the big one.
  - Either: Find component css selectors (group by .prose, e.g.)
  - Or: Run differently for `@tailwind utilities` and `@tailwind components`
  - [X] E.g. Handle tailwindcss' typography plugin: do '.prose' correctly.
* [ ] Generate breakpoint utilities by analysing tailwind config

# Goals

* Use elm-origami instead of elm-css
  - because it's got `with*`
  - because it's got `toHtmls`
  - because it's got `noStyle`, `noAttribute`, `batchAttributes`
* Generate less and better code for tailwind components like `prose` or `space_x*`
