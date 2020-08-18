const fs = require("fs");
const path = require("path");
const postcss = require("postcss");
const tailwind = require("tailwindcss");
const elmCssTailwind = require("../../src/index");

const parser = require("../../src/parser");

let runner = function (css, testFn) {
    let run = postcss.plugin("test-postcss", testFn);
    run.process(css, { from: undefined }, {}).then((res) => console.log("done"));
};

describe("process declaration", () => {
    it("handles space helpers", (done) => {
        let css = `
    .mx-4 {
        margin-left: 1rem;
        margin-right: 1rem;
    }
    .hover\:bg-black:hover {
        --bg-opacity: 1;
        background-color: #000;
        background-color: rgba(0, 0, 0, var(--bg-opacity));
    }
    .-space-y-0 > :not(template) ~ :not(template) {
        --space-y-reverse: 0;
        margin-top: calc(0px * calc(1 - var(--space-y-reverse)));
        margin-bottom: calc(0px * var(--space-y-reverse));
    }
    @media (min-width: 640px) {
        .sm\\:space-y-0 > :not(template) ~ :not(template) {
        --space-y-reverse: 0;
        margin-top: calc(0px * calc(1 - var(--space-y-reverse)));
        margin-bottom: calc(0px * var(--space-y-reverse));
        }
    }
    `;
        runner(css, () => {
            return (root) => {
                let rawDeclarations = [];
                root.walkDecls((decl) => {
                    rawDeclarations.push(decl);
                });

                let standardizedDeclarationList = parser.toStandardDeclarationList(
                    rawDeclarations
                );

                const classes = parser.fromDeclarationListToGroupedMap(
                    standardizedDeclarationList.filter((d) => !d.mediaQuery)
                );

                let mediaQueries = parser.toMediaQueryDefinitionMap(rawDeclarations);

                // snapshtos of basic expected data structures from the different parsing functions
                expect(standardizedDeclarationList).toMatchSnapshot();
                expect(mediaQueries).toMatchSnapshot();
                expect(classes).toMatchSnapshot();

                done();
            };
        });
    });
});
