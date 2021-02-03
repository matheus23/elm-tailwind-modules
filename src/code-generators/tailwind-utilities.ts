import * as generate from "./generate";
import {
    CssProperty,
    GroupedDeclarations,
    RecognizedDeclaration,
    SubselectorRest,
    UnrecognizedDeclaration,
    PseudoSubselectorRest
} from "../types";



// PUBLIC INTERFACE


export function generateElmModule(moduleName: string, blocksByClass: GroupedDeclarations): string {
    return [
        elmHeaderCss(moduleName),
        elmUnrecognizedToFunctions(blocksByClass.unrecognized),
        elmRecognizedToFunctions(blocksByClass.recognized),
    ].join("");
}



// PRIVATE INTERFACE


function elmHeaderCss(moduleName: string): string {
    return `module ${moduleName} exposing (..)

import Css
import Css.Global
import Css.Media
`;
}

function elmUnrecognizedToFunctions(unrecognizedBlocks: UnrecognizedDeclaration[]): string {
    return `

globalStyles : List Css.Global.Snippet
globalStyles =
${convertUnrecognizeds(unrecognizedBlocks)(1)}
`;
}

function convertUnrecognizeds(unrecognizeds: UnrecognizedDeclaration[]): generate.Indentable {
    return generate.elmList(
        unrecognizeds.flatMap(({ selector, properties, mediaQuery }) => {
            return convertMediaQueryWrap(mediaQuery, `Css.Global.mediaQuery`, [
                generate.elmFunctionCall(
                    `Css.Global.selector ${generate.elmString(selector)}`,
                    generate.elmList(properties.map(convertDeclaration))
                )
            ])
        })
    );
}

function elmRecognizedToFunctions(recognizedBlocksByClass: Map<string, RecognizedDeclaration>): string {
    let body = "";
    recognizedBlocksByClass.forEach((propertiesBlock, elmClassName) => {
        body = body + elmRecognizedFunction(elmClassName, propertiesBlock);
    })
    return body;
}

function elmRecognizedFunction(elmClassName: string, propertiesBlock: RecognizedDeclaration): string {
    return `

${elmClassName} : Css.Style
${elmClassName} =
${convertDeclarationBlock(propertiesBlock)(1)}
`;
}

function convertDeclaration(propertiesBlock: CssProperty): generate.Indentable {
    return indentation => `Css.property ${generate.elmString(propertiesBlock.prop)} ${generate.elmString(propertiesBlock.value)}`;
}

function convertProperties(subselector: SubselectorRest, convertedProperties: generate.Indentable[]) {
    switch (subselector.type) {
        case "plain": return convertedProperties;
        case "pseudo": return convertPseudoProperties(subselector.rest, convertedProperties);
        case "child":
        case "descendant":
        case "adjacent":
        case "sibling":
        default: // Heh, it's better with than without it. This way we'd generate an error in subselectorFunctionFromType if something goes wrong.
            const subselectorFunction = subselectorFunctionFromType(subselector.type);
            const subselectorTransformed = generate.elmFunctionCall(
                subselectorFunction,
                generate.elmList([
                    generate.elmFunctionCall(
                        `Css.Global.selector ${generate.elmString(subselector.rest)}`,
                        generate.elmList(convertedProperties)
                    )
                ])
            );
            return [subselectorTransformed];
    }
}

function convertPseudoProperties(selectorList: PseudoSubselectorRest["rest"], convertedProperties: generate.Indentable[]): generate.Indentable[] {
    if (selectorList.length === 0) {
        return convertedProperties;
    }

    const selector = selectorList[0];
    const functionName = pseudoselectorFunction(selector.type);

    return [
        generate.elmFunctionCall(
            `${functionName} ${generate.elmString(selector.name)}`,
            generate.elmList(
                convertPseudoProperties(
                    selectorList.splice(1),
                    convertedProperties
                )
            )
        )
    ];
}

function convertMediaQueryWrap(mediaQuery: string, functionName: string, propertiesExpressions: generate.Indentable[]): generate.Indentable[] {
    if (mediaQuery == null) {
        return propertiesExpressions;
    }

    return [
        generate.elmFunctionCall(
            `${functionName} [ ${generate.elmString(mediaQuery)} ]`,
            generate.elmList(propertiesExpressions)
        )
    ]
}

function convertDeclarationBlock(propertiesBlock: RecognizedDeclaration): generate.Indentable {
    const plainProperties = findPlainProperties(propertiesBlock).map(convertDeclaration);
    const subselectors = propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.rest.type === "plain" && subselector.mediaQuery == null) {
                // We've got these covered in "plainProperties"
                return [];
            }

            return convertMediaQueryWrap(
                subselector.mediaQuery,
                `Css.Media.withMediaQuery`,
                convertProperties(
                    subselector.rest,
                    properties.map(convertDeclaration)
                )
            );
        })
    );

    if (plainProperties.length === 1 && subselectors.length === 0) {
        return generate.indented(plainProperties[0]);
    }

    return generate.indented(
        generate.elmFunctionCall(
            `Css.batch`,
            generate.elmList(plainProperties.concat(Array.from(subselectors).reverse()))
        )
    );
}

function findPlainProperties(propertiesBlock: RecognizedDeclaration): CssProperty[] {
    return propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.rest.type === "plain" && subselector.mediaQuery == null) {
                return properties;
            }
            return [];
        })
    );
}

function subselectorFunctionFromType(t: "child" | "descendant" | "adjacent" | "sibling"): string {
    switch (t) {
        case "child": return "Css.Global.children";
        case "descendant": return "Css.Global.descendants";
        case "adjacent": return "Css.Global.adjacentSiblings";
        case "sibling": return "Css.Global.generalSiblings";
        default: throw new Error("unrecognized subselector type " + t);
    }
}

function pseudoselectorFunction(t: "pseudo" | "pseudo-element"): string {
    switch (t) {
        case "pseudo": return "Css.pseudoClass";
        case "pseudo-element": return "Css.pseudoElement";
        default: throw new Error("unrecognized pseudoselector type " + t);
    }
}
