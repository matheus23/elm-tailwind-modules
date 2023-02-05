import CssWhat from "css-what";
import * as postcss from "postcss";

export interface LogFunction {
    (message: string): void,
}

export interface GroupedDeclarations {
    recognized: Map<string, RecognizedDeclaration>,
    colorParameterized: Map<string, ParameterizedDeclaration>,
    unrecognized: UnrecognizedDeclaration[],
    keyframes: Map<string, Keyframe[]>,
}

/*
Example values:

.container:
{
  "propertiesBySelector": [
    {
      "subselectors": [
        {
          "mediaQuery": null,
          "rest": {
            "type": "plain"
          }
        }
      ],
      "properties": [
        {
          "prop": "width",
          "value": "100%"
        }
      ]
    },
    {
      "subselectors": [
        {
          "mediaQuery": "(min-width: 640px)",
          "rest": {
            "type": "plain"
          }
        }
      ],
      "properties": [
        {
          "prop": "max-width",
          "value": "640px"
        }
      ]
    },
    {
      "subselectors": [
        {
          "mediaQuery": "(min-width: 768px)",
          "rest": {
            "type": "plain"
          }
        }
      ],
      "properties": [
        {
          "prop": "max-width",
          "value": "768px"
        }
      ]
    },
    {
      "subselectors": [
        {
          "mediaQuery": "(min-width: 1024px)",
          "rest": {
            "type": "plain"
          }
        }
      ],
      "properties": [
        {
          "prop": "max-width",
          "value": "1024px"
        }
      ]
    },
    {
      "subselectors": [
        {
          "mediaQuery": "(min-width: 1280px)",
          "rest": {
            "type": "plain"
          }
        }
      ],
      "properties": [
        {
          "prop": "max-width",
          "value": "1280px"
        }
      ]
    },
    {
      "subselectors": [
        {
          "mediaQuery": "(min-width: 1536px)",
          "rest": {
            "type": "plain"
          }
        }
      ],
      "properties": [
        {
          "prop": "max-width",
          "value": "1536px"
        }
      ]
    }
  ]
}

.space_x_8:
{
  "propertiesBySelector": [
    {
      "subselectors": [
        {
          "mediaQuery": null,
          "rest": {
            "type": "child",
            "rest": ":not([hidden]) ~ :not([hidden])"
          }
        }
      ],
      "properties": [
        {
          "prop": "--tw-space-x-reverse",
          "value": "0"
        },
        {
          "prop": "margin-right",
          "value": "calc(2rem * var(--tw-space-x-reverse))"
        },
        {
          "prop": "margin-left",
          "value": "calc(2rem * calc(1 - var(--tw-space-x-reverse)))"
        }
      ]
    }
  ]

*/
export interface RecognizedDeclaration {
    propertiesBySelector: PropertiesBySelector[],
    originalRules: (postcss.Rule | postcss.Container<postcss.ChildNode>)[],
    originalClassName: string,
}

export interface PropertiesBySelector {
    subselectors: Subselector[],
    properties: CssProperty[],
}

export interface ParameterizedDeclaration {
    propertiesBySelector: ParameterizedPropertiesBySelector[],
    originalRules: (postcss.Rule | postcss.Container<postcss.ChildNode>)[],
    originalColorsReplaced: string[],
    originalClassName: string,
}

export interface ParameterizedPropertiesBySelector {
    subselectors: Subselector[],
    properties: (CssProperty | ParameterizedProperty)[],
}


export interface Subselector {
    mediaQuery: null | string,
    rest: SubselectorRest,
}

export interface Keyframe {
    percentage: number,
    properties: CssProperty[],
}

export type SubselectorRest = PlainSubselectorRest | BasicSubselectorRest | PseudoSubselectorRest;

export interface PlainSubselectorRest {
    type: "plain"
}

export interface BasicSubselectorRest {
    type: "child" | "descendant" | "adjacent" | "sibling",
    rest: string,
}

export interface PseudoSubselectorRest {
    type: "pseudo",
    rest: {
        type: "pseudo" | "pseudo-element",
        name: string,
    }[],
}

export interface CssProperty {
    prop: string,
    value: string,
}

export interface ParameterizedProperty {
    prop: string,
    valuePrefix: string,
    valueSuffix: string,
    opacity?: OpacityVariableName | OpacityLiteral
}

export interface OpacityVariableName {
  variableName: string
}

export interface OpacityLiteral {
  literal: string
}


export interface UnrecognizedDeclaration {
    selector: string,
    properties: Array<CssProperty>,
    mediaQuery: string | null,
}

//

export interface Breakpoint {
    name: string,
    size: string,
}


//

export function isPlainSubselectorRest(selector: SubselectorRest): selector is PlainSubselectorRest {
    return selector.type === "plain";
}

export function isBasicSubselectorRest(selector: SubselectorRest): selector is BasicSubselectorRest {
    return ["child", "descendant", "adjacent", "sibling"].some(basic => basic === selector.type);
}

export function isPseudoSubselectorRest(selector: SubselectorRest): selector is PseudoSubselectorRest {
    return selector.type === "pseudo";
}

export function isBasicSubselectorType(type: string): type is BasicSubselectorRest["type"] {
    return ["child", "descendant", "adjacent", "sibling"].some(basic => basic === type);
}

export function isPseudoSelector(selector: CssWhat.Selector): selector is CssWhat.PseudoSelector {
    return selector.type === "pseudo";
}

export function isPseudoElementSelector(selector: CssWhat.Selector): selector is CssWhat.PseudoElement {
    return selector.type === "pseudo-element";
}

export interface NamingOptions {
  prefix?: string;
  nameStyle: "camel" | "snake";
}
