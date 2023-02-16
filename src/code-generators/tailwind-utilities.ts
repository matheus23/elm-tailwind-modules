import * as generate from "./generate";
import {
    CssProperty,
    GroupedDeclarations,
    RecognizedDeclaration,
    SubselectorRest,
    UnrecognizedDeclaration,
    PseudoSubselectorRest,
    Keyframe,
    ParameterizedDeclaration,
    ParameterizedProperty,
} from "../types";
import { DocumentationGenerator } from "../docs";



// PUBLIC INTERFACE


export function generateElmModule(moduleNamePrefix: string, blocksByClass: GroupedDeclarations, docs: DocumentationGenerator): string {
    const sortedClasses = Array.from([...blocksByClass.recognized.keys(), ...blocksByClass.colorParameterized.keys()]).sort();
    const definedNames = ["globalStyles", ...sortedClasses];
    const moduleName = `${moduleNamePrefix}.Utilities`

    return [
        generate.elmModuleHeader({
            moduleName,
            exposing: docs.utilitiesExposing(definedNames),
            imports: [
                generate.singleLine(`import ${moduleNamePrefix}.Theme exposing (Color)`),
                generate.singleLine("import Tailwind.Color as Tw"),
                generate.singleLine("import Css"),
                generate.singleLine("import Css.Animations"),
                generate.singleLine("import Css.Global"),
                generate.singleLine("import Css.Media"),
            ],
            moduleDocs: docs.utilitiesModuleDocs(definedNames),
        }),
        elmUnrecognizedToFunctions(blocksByClass.unrecognized, docs),
        elmRecognizedToFunctions(blocksByClass.keyframes, blocksByClass.recognized, docs),
        elmParameterizedToFunctions(blocksByClass.keyframes, blocksByClass.colorParameterized, docs),
    ].join("");
}


// PRIVATE INTERFACE

function elmUnrecognizedToFunctions(unrecognizedBlocks: UnrecognizedDeclaration[], docs: DocumentationGenerator): string {
    return `
${docs.utilitiesGlobalStyles()}
globalStyles : List Css.Global.Snippet
globalStyles =
${convertUnrecognizeds(unrecognizedBlocks)({
    indentation: 4,
    preindent: true,
})}
`;
}

function convertUnrecognizeds(unrecognizeds: UnrecognizedDeclaration[]): generate.Indentable {
    return generate.elmList(
        unrecognizeds.flatMap(({ selector, properties, mediaQuery }) => {
            return convertMediaQueryWrap(mediaQuery, `Css.Global.mediaQuery`, [
                generate.elmFunctionCall(
                    `Css.Global.selector ${generate.elmString(selector)}`,
                    generate.elmList(properties.map(decl => convertBasicDeclaration("Css.property", decl.prop, decl.value)))
                )
            ])
        })
    );
}

function elmRecognizedToFunctions(
    keyframes: Map<string, Keyframe[]>,
    recognizedBlocksByClass: Map<string, RecognizedDeclaration>,
    docs: DocumentationGenerator,
): string {
    let body = "";
    Array.from(recognizedBlocksByClass.keys()).sort().forEach(elmClassName => {
        body = body + elmRecognizedFunction(keyframes, elmClassName, recognizedBlocksByClass.get(elmClassName), docs);
    });
    return body;
}

function elmParameterizedToFunctions(
    keyframes: Map<string, Keyframe[]>,
    recognizedBlocksByClass: Map<string, ParameterizedDeclaration>,
    docs: DocumentationGenerator,
): string {
    let body = "";
    Array.from(recognizedBlocksByClass.keys()).sort().forEach(elmClassName => {
        body = body + elmParameterizedFunction(keyframes, elmClassName, recognizedBlocksByClass.get(elmClassName), docs);
    });
    return body;
}

function elmRecognizedFunction(
    keyframes: Map<string, Keyframe[]>,
    elmClassName: string,
    propertiesBlock: RecognizedDeclaration,
    docs: DocumentationGenerator,
): string {
    return `
${docs.utilitiesDefinition(elmClassName, propertiesBlock)}
${elmClassName} : Css.Style
${elmClassName} =
${convertDeclarationBlock(keyframes, {...propertiesBlock, originalColorsReplaced: [] })({
    indentation: 4,
    preindent: true,
})}
`;
}

function elmParameterizedFunction(
    keyframes: Map<string, Keyframe[]>,
    elmClassName: string,
    propertiesBlock: ParameterizedDeclaration,
    docs: DocumentationGenerator,
): string {
    return `
${docs.utilitiesParameterizedDefinition(elmClassName, propertiesBlock)}
${elmClassName} : Color -> Css.Style
${elmClassName} color =
${convertDeclarationBlock(keyframes, propertiesBlock)({
    indentation: 4,
    preindent: true,
})}
`;
}
function convertDeclaration(keyframes: Map<string, Keyframe[]>, declaration: CssProperty | ParameterizedProperty, cssVarNames: string[]): generate.Indentable[] {
    if (cssVarNames.includes(declaration.prop)) {
        // We intentionally drop e.g. "--tw-bg-opacity" properties.
        // They'll get re-added in `Tw.propertyWithColor`, if the color doesn't have an opacity set.
        return [];
    }

    if ("valuePrefix" in declaration) {
        return [convertColorDeclaration(declaration)];
    }

    if (declaration.prop.endsWith("animation") || declaration.prop.endsWith("animation-name")) {
        const animationName = Array.from(keyframes.keys()).find(name => declaration.value.indexOf(name) >= 0);
        if (animationName == null) {
            return [convertBasicDeclaration("Css.property", declaration.prop, declaration.value)];
        }
        const strippedValue = declaration.value.replace(animationName, "").trim();
        const keyframesConverted = convertKeyframes(keyframes.get(animationName));

        if (strippedValue === "") {
            return [ keyframesConverted ];
        }

        return [
            generate.singleLine(`Css.property ${generate.elmString(declaration.prop)} ${generate.elmString(strippedValue)}`),
            keyframesConverted
        ];
    }

    return [convertBasicDeclaration("Css.property", declaration.prop, declaration.value)];
}

function convertBasicDeclaration(functionName: string, property: string, value: string): generate.Indentable {
    return generate.singleLine(`${functionName} ${generate.elmString(property)} ${generate.elmString(value)}`);
}


function convertColorDeclaration(property: ParameterizedProperty): generate.Indentable {
    const propertyName = generate.elmString(property.prop);
    const valuePrefix = generate.elmString(property.valuePrefix);
    const valueSuffix = generate.elmString(property.valueSuffix);

    const colorExpression = property.valuePrefix === "" && property.valueSuffix === ""
        ? "c"
        : `${valuePrefix} ++ c ++ ${valueSuffix}`;

    if (property.opacity == null) {
        return generate.singleLine(`Tw.propertyWithColor ${propertyName} (\\c -> ${colorExpression}) Nothing color`)
    } else if ("variableName" in property.opacity) {
        const variableName = generate.elmString(property.opacity.variableName);
        return generate.singleLine(`Tw.propertyWithColor ${propertyName} (\\c -> ${colorExpression}) (Just ${variableName}) color`)
    } else {
        const literal = generate.elmString(property.opacity.literal);
        return generate.elmFunctionCall(
            `Tw.withOpacity (Tw.Opacity ${literal}) color`,
            generate.singleLine(`|> Tw.propertyWithColor ${propertyName} (\\c -> ${colorExpression}) Nothing`)
        );
    }
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

function convertKeyframes(keyframes: Keyframe[]): generate.Indentable {
    return generate.elmFunctionCall("Css.animationName",
        generate.elmParen(
            generate.elmFunctionCall("Css.Animations.keyframes",
                generate.elmList(keyframes.map(convertKeyframe))
            )
        )
    );
}

function convertKeyframe(keyframe: Keyframe): generate.Indentable {
    return generate.elmTuple([
        generate.singleLine(keyframe.percentage.toFixed(0)),
        generate.elmList(
            keyframe.properties.map(prop =>
                convertBasicDeclaration("Css.Animations.property", prop.prop, prop.value)
            )
        )
    ]);
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

function convertDeclarationBlock(keyframes: Map<string, Keyframe[]>, propertiesBlock: ParameterizedDeclaration): generate.Indentable {
    const plainProperties = findPlainProperties(propertiesBlock);
    const cssVarNames = findColorCssVarNames(plainProperties);
    const plainPropertiesCode = plainProperties.flatMap(d => convertDeclaration(keyframes, d, cssVarNames));

    const mediaQueriedPropertiesCode = propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.rest.type === "plain" && subselector.mediaQuery == null) {
                // We've got these covered in "plainProperties"
                return [];
            }

            const cssVarNames = findColorCssVarNames(properties);

            return convertMediaQueryWrap(
                subselector.mediaQuery,
                `Css.Media.withMediaQuery`,
                convertProperties(
                    subselector.rest,
                    properties.flatMap(d => convertDeclaration(keyframes, d, cssVarNames))
                )
            );
        })
    );

    return batchIfNeeded(plainPropertiesCode.concat(Array.from(mediaQueriedPropertiesCode).reverse()));
}

function batchIfNeeded(expressions: generate.Indentable[]): generate.Indentable {
    if (expressions.length === 1) {
        return expressions[0];
    }

    return generate.elmFunctionCall(
        `Css.batch`,
        generate.elmList(expressions)
    );
}

function findPlainProperties(propertiesBlock: ParameterizedDeclaration): (CssProperty | ParameterizedProperty)[] {
    return propertiesBlock.propertiesBySelector.flatMap(({ subselectors, properties }) =>
        subselectors.flatMap(subselector => {
            if (subselector.rest.type === "plain" && subselector.mediaQuery == null) {
                return properties;
            }
            return [];
        })
    );
}

function findColorCssVarNames(properties: (CssProperty | ParameterizedProperty)[]): string[] {
    return properties.flatMap(property =>
        "valuePrefix" in property && property.opacity != null && "variableName" in property.opacity
            ? [property.opacity.variableName]
            : []
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
