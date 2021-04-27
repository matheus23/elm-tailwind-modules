# Changelog

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
