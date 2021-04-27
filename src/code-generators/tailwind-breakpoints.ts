import * as generate from "./generate";
import { toElmName } from "../helpers";
import { Breakpoint, NamingOptions } from "../types";
import { DocumentationGenerator } from "../docs";


interface TailwindResolvedConfig {
    theme: {
        screens: { [_: string]: TailwindScreen },
    },
}

type TailwindScreen = string



export function generateElmModule(
    moduleName: string,
    resolvedConfig: TailwindResolvedConfig,
    namingOptions: NamingOptions,
    docs: DocumentationGenerator,
): string {
    const breakpoints =
        Object
            .entries(resolvedConfig.theme.screens)
            .map(([screen, size]: [TailwindScreen, string]) =>
                convertConfigToBreakpoint(screen, size, namingOptions)
            );

    return [
        elmHeader(moduleName, breakpoints.map(b => b.name), docs),
        breakpoints.map(b => elmBreakpointFunction(b, docs)).join(""),
    ].join("");
}


function elmHeader(moduleName: string, definitions: string[], docs: DocumentationGenerator): string {
    return generate.elmModuleHeader({
        moduleName,
        exposing: docs.breakpointsExposing(definitions),
        moduleDocs: docs.breakpointsModuleDocs(definitions),
        imports: [
            generate.singleLine("import Css"),
            generate.singleLine("import Css.Media"),
        ],
    });
}

// Full breakpointSize reference: https://tailwindcss.com/docs/breakpoints
function convertConfigToBreakpoint(screen: TailwindScreen, size: string, namingOptions: NamingOptions): Breakpoint {
    return {
        name: toElmName(screen, namingOptions),
        size: size,
    };
}


function elmBreakpointFunction({ name, size }: Breakpoint, docs: DocumentationGenerator): string {
    return `
${docs.breakpointsDefinition({ name, size })}
${name} : List Css.Style -> Css.Style
${name} =
    Css.Media.withMediaQuery [ "(min-width: ${size})" ]
`;
}
