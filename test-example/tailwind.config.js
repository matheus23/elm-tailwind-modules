/** @type {import('tailwindcss').Config} */
module.exports = {
    theme: {
        extend: {},
    },
    variants: [],
    plugins: [
        require("@tailwindcss/typography"),
        require("@tailwindcss/forms"),
        require("@tailwindcss/aspect-ratio")
    ],
}
