import typescript from "@rollup/plugin-typescript"
import commonjs from "@rollup/plugin-commonjs"
import pkg from "./package.json"

export default {
    input: "src/index.ts",
    output: [
        {
            dir: "./",
            entryFileNames: pkg.main,
            format: "cjs",
            exports: "named"
        },
        {
            file: pkg.module,
            format: "es",
        },
    ],
    external: [
        ...Object.keys(pkg.dependencies),
        ...Object.keys(pkg.peerDependencies),
    ],

    plugins: [
        typescript({
            declaration: true,
            declarationDir: "dist/",
            rootDir: "src/",
        }),
        commonjs(),
    ],
}
