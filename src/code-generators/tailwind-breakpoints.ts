import * as generate from "./generate";
import { toElmName } from "../helpers";
import { NamingOptions } from "../types";


interface TailwindResolvedConfig {
    theme: {
        screens: { [_: string]: TailwindScreen },
    },
}

type TailwindScreen = string


interface Breakpoint {
    name: string,
    size: string,
}


export function generateElmModule(
    moduleName: string,
    resolvedConfig: TailwindResolvedConfig,
    namingOptions: NamingOptions,
    docs: boolean,
): string {
    const breakpoints =
        Object
            .entries(resolvedConfig.theme.screens)
            .map(([screen, size]: [TailwindScreen, string]) =>
                convertConfigToBreakpoint(screen, size, namingOptions)
            );

    return [
        elmHeader(moduleName, docs ? breakpoints.map(b => b.name) : null),
        breakpoints.map(b => elmBreakpointFunction(b, docs)).join(""),
    ].join("");
}


function elmHeader(moduleName: string, exposing: string[] | null): string {
    return generate.elmModuleHeader({
        moduleName,
        exposing,
        moduleDocs: exposing == null ? null : elmModuleDocs(exposing),
        imports: [
            generate.singleLine("import Css"),
            generate.singleLine("import Css.Media"),
        ],
    });
}

function elmModuleDocs(exposing: string[]): string {
    return `
{-|


## Tailwind Breakpoints


### How tailwind's breakpoints work

Tailwind (by default) uses min-width breakpoints.

The workflow with them should be like this:

1.  You define styles for mobile without breakpoints
2.  You adjust the styling for devices _bigger than_ the \`sm\` (or \`lg\`, etc.) breakpoint
3.  You in turn override these styles with even higher breakpoints

Read more about breakpoints in the [tailwind documentation].


### A not about breakpoint usage oder

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

${exposing.map(name => `@docs ${name}`).join("\n")}

[tailwind documentation]: https://tailwindcss.com/docs/responsive-design

-}
`;
}


function convertBreakpointName(screen: TailwindScreen, namingOptions: NamingOptions): string {
    if (screen.endsWith("xl") || screen.endsWith("xs")) {
        const ending = screen.slice(screen.length - 2, screen.length);
        const start = screen.slice(0, screen.length - 2);
        try {
            const number = parseInt(start);
            return "x".repeat(number - 1) + ending;
        } catch (e) {
            return "_" + toElmName(screen, namingOptions);
        }
    }
    return toElmName(screen, namingOptions);
}


// Full breakpointSize reference: https://tailwindcss.com/docs/breakpoints
function convertConfigToBreakpoint(screen: TailwindScreen, size: string, namingOptions: NamingOptions): Breakpoint {
    return {
        name: convertBreakpointName(screen, namingOptions),
        size: size,
    };
}


function elmBreakpointFunction({ name, size }: Breakpoint, docs: boolean = true): string {
    return `
${docs ? elmBreakpointFunctionDocs({ name, size }) : ""}
${name} : List Css.Style -> Css.Style
${name} =
    Css.Media.withMediaQuery [ "(min-width: ${size})" ]
`;
}


function elmBreakpointFunctionDocs({ name, size }: Breakpoint): string {
    return `
{-| Media query breakpoint for minimum width ${size}

CSS: \`@media (min-width: ${size}) { ... }\`

Also see the [tailwind documentation](https://tailwindcss.com/docs/responsive-design)

-}`
}
