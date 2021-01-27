import * as generate from "./generate";
import { toElmName } from "../helpers";


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


export function generateElmModule(moduleName: string, resolvedConfig: TailwindResolvedConfig): string {
    return [
        elmHeader(moduleName),
        Object.entries(resolvedConfig.theme.screens)
            .map(([screen, size]: [TailwindScreen, string]) =>
                elmBreakpointFunction(convertConfigToBreakpoint(screen, size))
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

function convertBreakpointName(screen: TailwindScreen): string {
    if (screen.endsWith("xl") || screen.endsWith("xs")) {
        const ending = screen.slice(screen.length - 2, screen.length);
        const start = screen.slice(0, screen.length - 2);
        try {
            const number = parseInt(start);
            return "x".repeat(number - 1) + ending;
        } catch (e) {
            return "_" + toElmName(screen);
        }
    }
    return toElmName(screen);
}

// Full breakpointSize reference: https://tailwindcss.com/docs/breakpoints
function convertConfigToBreakpoint(screen: TailwindScreen, size: string): Breakpoint {
    return {
        name: convertBreakpointName(screen),
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
