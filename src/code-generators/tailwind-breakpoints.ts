import * as generate from "./generate";
import { toElmName } from "../helpers";
import { Breakpoint, NamingOptions } from "../types";
import { DocumentationGenerator } from "../docs";
import type { Config, ResolvableTo } from "tailwindcss/types/config";


type UnwrapResolvables<T> = {
    [K in keyof T]: T[K] extends ResolvableTo<infer R> ? R : T[K]
}

interface TailwindResolvedConfig {
    theme: UnwrapResolvables<Config['theme']>
}

type TailwindScreen = string



export function generateElmModule(
    moduleNamePrefix: string,
    resolvedConfig: TailwindResolvedConfig,
    docs: DocumentationGenerator,
): string {
    const moduleName = `${moduleNamePrefix}.Breakpoints`
    const breakpoints =
        Object
            .entries(resolvedConfig.theme.screens)
            .map(([screen, size]: [TailwindScreen, string]) =>
                convertConfigToBreakpoint(screen, size)
            )
            .sort((a, b) => a.name < b.name ? -1 : 1);

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
function convertConfigToBreakpoint(screen: TailwindScreen, size: string): Breakpoint {
    return {
        name: toElmName(screen),
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
