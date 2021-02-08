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
): string {
    return [
        elmHeader(moduleName),
        Object.entries(resolvedConfig.theme.screens)
            .map(([screen, size]: [TailwindScreen, string]) =>
                elmBreakpointFunction(convertConfigToBreakpoint(screen, size, namingOptions))
            )
            .join(""),
    ].join("");
}


function elmHeader(moduleName: string): string {
    return `module ${moduleName} exposing (..)

import Css
import Css.Media
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

function elmBreakpointFunction({ name, size }: Breakpoint): string {
    return `

${name} : List Css.Style -> Css.Style
${name} =
    Css.Media.withMediaQuery [ "(min-width: ${size})" ]
`;
}
