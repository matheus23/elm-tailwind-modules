import typescript from "rollup-plugin-typescript2"
import commonjs from "@rollup/plugin-commonjs"
import pkg from "./package.json"

export default {
    input: "src/index.ts",
    output: [
        {
            file: pkg.main,
            format: "cjs",
            exports: "named"
        },
        {
            file: pkg.module,
            format: "es",
        },
    ],
    external: [
        ...Object.keys(pkg.dependencies || {}),
        ...Object.keys(pkg.peerDependencies || {}),
    ],

    plugins: [
        typescript({
            useTsconfigDeclarationDir: true,
            tsconfig: "./tsconfig.json",
            typescript: require("typescript"),
        }),
        commonjs(),
    ],
}
