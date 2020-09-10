import tailwindui from "@tailwindcss/ui";

export default {
    theme: {},
    variants: [], // We can do variants in elm code
    // corePlugins: {
    //   transitionProperty: false,
    //   transitionTimingFunction: false,
    //   transitionDelay: false,
    //   transitionDuration: false,
    // },
    plugins: [tailwindui],
    future: {
        removeDeprecatedGapUtilities: true,
    },
};
