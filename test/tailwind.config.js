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
    safelist: [
        // only the colors
        {pattern: /bg-.*00?/, variants: []},
        {pattern: /text-.*00?/, variants: []},
    ]
}
