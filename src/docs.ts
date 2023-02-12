import { Breakpoint, ParameterizedDeclaration, RecognizedDeclaration } from "./types"

/* This interface encapsulates documentation generation for
 * all generated functions.
 */
export interface DocumentationGenerator {
    /**
     * Choose the order of definitions in the `exposing` clause for the utilities module.
     * `null` indicates that `exposing (..)` should be generated.
     */
    utilitiesExposing: (definedNames: string[]) => string[] | null;
    /**
     * Return a doc string for the utilities module, given all definitions that will be generated.
     * The resulting string has to contain the `{-|` and `-}` parts. 
     * `null` indicates no documentation should be generated.
     */
    utilitiesModuleDocs: (definedNames: string[]) => string | null;
    /**
     * Called for documentation generation for the globalStyles definition.
     * The output string can be empty or otherwise has to contain the `{-|` and `-}` parts.
     */
    utilitiesGlobalStyles: () => string;
    /**
     * Called for every generated tailwind utility definition.
     * The output string can be empty or otherwise has to contain the `{-|` and `-}` parts.
     */
    utilitiesDefinition: (name: string, declaration: RecognizedDeclaration) => string;
    /**
     * Called for groups of abstracted tailwind utility definitions.
     * The output string can be empty or otherwise has to contian the `{-|` and `-}` parts.
     */
    utilitiesParameterizedDefinition: (name: string, declaration: ParameterizedDeclaration) => string;

    /**
     * Choose the order of definitions in the `exposing` clause for the breakpoints module.
     * `null` indicates that `exposing (..)` should be generated.
     */
    breakpointsExposing: (definedNames: string[]) => string[] | null;
    /**
     * Return a doc string for the breakpoints module, given all definitions that will be generated.
     * The resulting string has to contain the `{-|` and `-}` parts. 
     * `null` indicates no documentation should be generated.
     */
    breakpointsModuleDocs: (definedNames: string[]) => string | null;
    /**
     * Called for every generated tailwind breakpoints definition.
     * The output string can be empty or otherwise has to contain the `{-|` and `-}` parts.
     */
    breakpointsDefinition: (breakpoint: Breakpoint) => string;

    /**
     * Called for every tailwind theme color definition.
     */
    themeColorDefinition: (name: string, value: string) => string;
    /**
     * Called for every tailwind theme opacity definition.
     */
    themeOpacityDefinition: (name: string, value: string) => string;
}

export const noDocumentationGenerator: DocumentationGenerator = {
    utilitiesExposing: _definedNames => null,
    utilitiesModuleDocs: _definedNames => null,
    utilitiesGlobalStyles: () => "",
    utilitiesDefinition: (_name, _declaration) => "",
    utilitiesParameterizedDefinition: (_name, _declaration) => "",

    breakpointsExposing: _definedNames => null,
    breakpointsModuleDocs: _definedNames => null,
    breakpointsDefinition: (_breakpoint) => "",

    themeColorDefinition: (_name, _value) => "",
    themeOpacityDefinition: (_name, _value) => "",
}


export const defaultDocumentationGenerator: DocumentationGenerator = {
    utilitiesExposing: definedNames => definedNames,

    utilitiesModuleDocs: definedNames => `
{-|


## Tailwind Utilities

This module contains

1.  Tailwind's style reset in the \`globalStyles\` definition.
    Make sure to include this in your HTML via elm-css' \`Css.Global.global\` function.
2.  All default tailwind css utility classes. You can browse the documentation on
    [tailwind's website](https://tailwindcss.com/docs)

${definedNames.map(c => `@docs ${c}`).join("\n")}

-}
`,

    utilitiesGlobalStyles: () => `
{-| This contains tailwind's style reset.

This is something similar to normalize.css, if you're familiar with it.

You **need to include this in your html** at any time you use this module,
as some of the classes in here depend on css variables defined in the global styles.

You include it like so:

    import Css.Global
    import Html.Styled as Html exposing (Html)
    import Tailwind.Utilities exposing (globalStyles)

    view : Html msg
    view =
        div []
            [ -- Like this:
              Css.Global.global globalStyles

            -- Continue with any other Html
            ]

It only needs to be included once.

-}`,

    utilitiesDefinition: (_name, declaration) => `
{-| ${declaration.originalRules.length > 1
            ? "This class combines the effects of following css declarations:"
            : "This class has the effect of following css declaration:"
        }

\`\`\`css
${declaration.originalRules.map(rule => rule.toString()).join("\n\n")}
\`\`\`

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}`,

    utilitiesParameterizedDefinition: (_name, declaration) => `
{-| This class has effects of css declarations similar to the following:

\`\`\`css
${replaceOriginalColorsWithPlaceholder(declaration.originalRules.map(rule => rule.toString()).join("\n\n"), declaration.originalColorsReplaced)}
\`\`\`

The \`<color>\` can be chosen with the first parameter.

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}`,

    breakpointsExposing: definedNames => definedNames,

    breakpointsModuleDocs: definedNames => `
{-|


## Tailwind Breakpoints


### How tailwind's breakpoints work

Tailwind (by default) uses min-width breakpoints.

The workflow with them should be like this:

1.  You define styles for mobile without breakpoints
2.  You adjust the styling for devices _bigger than_ the \`sm\` (or \`lg\`, etc.) breakpoint
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

${definedNames.map(name => `@docs ${name}`).join("\n")}

[tailwind documentation]: https://tailwindcss.com/docs/responsive-design

-}
`,

    breakpointsDefinition: ({ name, size }) => `
{-| Media query breakpoint for minimum width ${size}

CSS: \`@media (min-width: ${size}) { ... }\`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}`,

    themeColorDefinition: (name, value) => `
{-| The color \`${name}\` from the tailwind configuration.

Its value is \`${value}\`.

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}`,

    themeOpacityDefinition: (name, value) => `
{-| The opacity \`${name}\` from the tailwind configuration.

It is set to \`${value}\` (likely a number between 0 and 1, where 1 means opaque and 0 means transparent)

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}`,
}

export const themeModuleDocumentation = (definedColors: string[], definedOpacities: string[]) => `
{-|


## This Tailwind Theme

This module contains all colors and opacities from your tailwind configuration.

It also contains some internal utilities, which need to be exposed to make them available to
the \`Utilities.elm\` module, but are only meant for internal usage.

If you want to extend the set of available colors or opacities, take a look [configuring tailwind].


### Colors

@docs Color
${definedColors.map(name => `@docs ${name}`).join("\n")}


### Opacities

@docs Opacity
@docs withOpacity
${definedOpacities.map(name => `@docs ${name}`).join("\n")}


### Custom values

@docs arbitraryRgb
@docs arbitraryRgba
@docs arbitraryOpacityPct


### Internal

@docs internal

[tailwind documentation]: https://tailwindcss.com/docs/responsive-design

-}
`;


function replaceOriginalColorsWithPlaceholder(rule: string, originalColorsReplaced: string[]) {
    for (const replacedColor of originalColorsReplaced) {
        rule = rule.replace(replacedColor, "<color>");
    }
    return rule;
}
