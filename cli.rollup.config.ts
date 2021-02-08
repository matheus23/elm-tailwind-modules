import typescript from "@rollup/plugin-typescript"
import commonjs from "@rollup/plugin-commonjs"
import MagicString from "magic-string";

const destination = "dist/cli.js";
const shebang = "#!/usr/bin/env node\n\n";

export default {
    input: "src/cli.ts",
    output: [
        {
            file: destination,
            format: "cjs",
            exports: "named"
        },
    ],
    external: [],
    plugins: [
        typescript(),
        commonjs(),
        {
            name: 'shebang',
            renderChunk(code, chunk, { file, sourcemap }) {
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
    ],
}
