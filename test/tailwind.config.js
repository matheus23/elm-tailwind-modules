import tailwindui from "@tailwindcss/ui";

export default {
    theme: {},
    variants: [], // We can do variants in elm code
    plugins: [tailwindui],
    future: {
        removeDeprecatedGapUtilities: true,
    },
};
