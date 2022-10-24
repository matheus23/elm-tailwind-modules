import allCols from 'color-name'

const namedColors: Record<string, RGB> = Object.entries(allCols)
    .reduce(
        (acc, [name, col]) =>
            Object.assign(acc, { [name]: fromNumbered(col as [number, number, number]) }),
        {}
    )

// Adapted from https://github.com/tailwindlabs/tailwindcss/blob/547f9f674a28fc46cc4e02b51f9afefc6418a765/src/util/color.js

let HEX = /^#([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})?$/i
let SHORT_HEX = /^#([a-f\d])([a-f\d])([a-f\d])([a-f\d])?$/i
let VALUE = /(?:\d+|\d*\.\d+)%?/
let SEP = /(?:\s*,\s*|\s+)/
let ALPHA_SEP = /\s*[,/]\s*/
let CUSTOM_PROPERTY = /var\(--(?:[^ )]*?)\)/

let RGB = new RegExp(
    `^(rgb)a?\\(\\s*(${VALUE.source}|${CUSTOM_PROPERTY.source})(?:${SEP.source}(${VALUE.source}|${CUSTOM_PROPERTY.source}))?(?:${SEP.source}(${VALUE.source}|${CUSTOM_PROPERTY.source}))?(?:${ALPHA_SEP.source}(${VALUE.source}|${CUSTOM_PROPERTY.source}))?\\s*\\)$`
)
let HSL = new RegExp(
    `^(hsl)a?\\(\\s*((?:${VALUE.source})(?:deg|rad|grad|turn)?|${CUSTOM_PROPERTY.source})(?:${SEP.source}(${VALUE.source}|${CUSTOM_PROPERTY.source}))?(?:${SEP.source}(${VALUE.source}|${CUSTOM_PROPERTY.source}))?(?:${ALPHA_SEP.source}(${VALUE.source}|${CUSTOM_PROPERTY.source}))?\\s*\\)$`
)

export type RGB = [string, string, string];
export type Color = { mode: string; color: RGB; alpha?: string };

// In "loose" mode the color may contain fewer than 3 parts, as long as at least
// one of the parts is variable.
export function parseColor(value: string, { loose = false } = {}): null | Color {
    if (typeof value !== 'string') {
        return null
    }

    value = value.trim()
    if (value === 'transparent') {
        return { mode: 'rgb', color: ['0', '0', '0'], alpha: '0' }
    }

    if (value in namedColors) {
        return { mode: 'rgb', color: namedColors[value], }
    }

    let hex = value
        .replace(SHORT_HEX, (_, r, g, b, a) => ['#', r, r, g, g, b, b, a ? a + a : ''].join(''))
        .match(HEX)

    if (hex !== null) {
        return {
            mode: 'rgb',
            color: [
                parseInt(hex[1], 16).toString(),
                parseInt(hex[2], 16).toString(),
                parseInt(hex[3], 16).toString()
            ],
            alpha: hex[4] ? (parseInt(hex[4], 16) / 255).toString() : undefined,
        }
    }

    let match = value.match(RGB) ?? value.match(HSL)

    if (match === null) {
        return null
    }

    let color = [match[2], match[3], match[4]].filter(Boolean).map((v) => v.toString())

    if (!loose && color.length !== 3) {
        return null
    }

    if (color.length < 3 && !color.some((part) => /^var\(.*?\)$/.test(part))) {
        return null
    }

    return {
        mode: match[1],
        color: color as RGB,
        alpha: match[5]?.toString?.(),
    }
}

export function formatColor({ mode, color, alpha }: Color) {
    let hasAlpha = alpha !== undefined
    return `${mode}(${color.join(' ')}${hasAlpha ? ` / ${alpha}` : ''})`
}

export function colorDetectionRegex({ mode, color, alpha }: Color): RegExp {
    let hasAlpha = alpha !== undefined
    
    if (hasAlpha) {
        return new RegExp(String.raw`${mode}\(${color.join(' ')} / ${alpha}\)`)
    }

    return new RegExp(String.raw`${mode}\(${color.join(' ')} / var\([^)]+\)\)`)
}

function fromNumbered(rgb: [number, number, number]): RGB {
    return [
        rgb[0].toString(),
        rgb[1].toString(),
        rgb[2].toString(),
    ]
}
