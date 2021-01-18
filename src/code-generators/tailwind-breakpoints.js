import * as generate from "./generate.js";
import { toElmName } from "../helpers.js";


export function generateElmModule(moduleName, resolvedConfig) {
    return [
        elmHeader(moduleName),
        Object.entries(resolvedConfig.theme.screens)
            .map(conf => elmBreakpointFunction(convertConfigToBreakpoint(conf)))
            .join(""),
    ].join("");
}


function elmHeader(moduleName) {
    return `module ${moduleName} exposing (..)

import Css
import Css.Media
`;
}

function convertBreakpointName(screen) {
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
function convertConfigToBreakpoint([screen, size]) {
    return {
        name: convertBreakpointName(screen),
        size: size,
    };
}

function elmBreakpointFunction({ name, size }) {
    return `

${name} : List Css.Style -> Css.Style
${name} =
    Css.Media.withMediaQuery [ "(min-width: ${size})" ]
`;
}
