import typescript from "@rollup/plugin-typescript";
import commonjs from "@rollup/plugin-commonjs";
import resolve from "@rollup/plugin-node-resolve";
import json from "@rollup/plugin-json";
import MagicString from "magic-string";
import pkg from "./package.json"

const destination = "dist/cli.js";
const shebang = "#!/usr/bin/env node\n\n";

export default {
    input: "src/cli.ts",
    output: [
        {
            file: destination,
            format: "cjs",
            exports: "none"
        },
    ],
    external: [
        ...Object.keys(pkg.peerDependencies || {}),
    ],
    plugins: [
        typescript(),
        commonjs(),
        {
            name: 'shebang',
            renderChunk(code, _chunk, { file, sourcemap }) {
                if (file !== destination) {
                    return null;
                }

                const s = new MagicString(code);
                s.prepend(shebang);

                if (sourcemap) {
                    return {
                        code: s.toString(),
                        map: s.generateMap({ hires: true }),
                    };
                } else {
                    return s.toString();
                }
            },
        },
        resolve(),
        json(),
    ],
}
