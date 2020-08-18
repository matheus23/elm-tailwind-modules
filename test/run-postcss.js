import { plugins } from "./postcss.config.js"
import postcss from "postcss";
import { promises as fs } from "fs";
import path from "path";
import { fileURLToPath } from 'url';

// like common js __dirname
const dirname = path.dirname(fileURLToPath(import.meta.url));

// postcss -o dist/main.css tailwind.css

async function run() {
    const from = path.join(dirname, "tailwind.css");
    const to = path.join(dirname, "dist/main.css");
    const result = await postcss(plugins).process(await fs.readFile(from), { from, to });
    await fs.writeFile(to, result.css);
}

run();
