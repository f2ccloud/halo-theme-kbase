import {defineConfig} from "vite";
import {resolve} from "path";
import watch from "rollup-plugin-watch";

export default defineConfig({
    plugins: [watch({dir: "./", exclude: ["dist", "node_modules"]})],
    build: {
        lib: {
            entry: resolve(__dirname, "src/main.ts"),
            name: "main",
            fileName: "main",
            formats: ["umd"],
        },
    },
});
