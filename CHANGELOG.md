# Changelog

## 0.5.0

* Auto-abstraction of colors from tailwind utilities
  This means your tailwind files are likely *much* smaller.
  To upgrade, import the new module `Tailwind.Theme` and transform utilities like `bg_blue_500` into calls of the form `bg_color blue_500`.
* Abstracted out commonly used code in all generated code into `matheus23/elm-tailwind-modules-base` package.
* Support percentage signs in tailwind class names

## 0.4.1

* Relaxed tailwindcss `peerDependency` version bounds to include `^3.1.6`.

## 0.4.0

* Support for tailwind v3 by turning off the JIT using tailwind's `safelist` option

## 0.3.2

* Added the `docs` submodule and made it possible to inject custom documentation generators via the `generateDocumentation` setting.

## 0.3.1

* Fix the --tailwind-config CLI argument not being relative to the current working directory

## 0.3.0

* Changed node API:
  + Added documentation to `run` and `asPostcssPlugin`
  + Exposed `writeGeneratedFiles`
  + Removed `postcssFile` configuration option from `run`
  + Made `asPostcssPlugin` parameters named

## 0.2.0

* Added a new flag: --with-docs
* Added `generateDocumentation` parameter to node API to generate documentation

## 0.1.1

* Fix: Make a non-null `postcssFile` option work.

## 0.1.0

* First release
