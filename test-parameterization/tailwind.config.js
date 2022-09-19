/** @type {import('tailwindcss').Config} */
module.exports = {
    theme: {
        extend: {},
    },
    variants: [],
    safelist: ["bg-blue-500", "text-blue-500", "bg-red-100", "text-red-100"],
    plugins: [
        require("@tailwindcss/typography"),
        require("@tailwindcss/forms"),
        require("@tailwindcss/aspect-ratio")
    ],
}
