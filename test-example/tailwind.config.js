module.exports = {
    theme: {},
    variants: [], // We can do variants in elm code
    plugins: [
        require("@tailwindcss/typography"),
        require("@tailwindcss/forms"),
        require("@tailwindcss/aspect-ratio")
    ],
    future: {
        removeDeprecatedGapUtilities: true,
    },
};
