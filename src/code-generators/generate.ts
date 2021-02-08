export interface Indentable {
    (context: { indentation: number, preindent: boolean }): string
}


export function elmString(content: string): string {
    return `"${content
        .replace(/\\/g, "\\\\")
        .replace(/"/g, '\\"')
        .replace(/\n/g, "\\n")
        .replace(/\t/g, "\\t")
        }"`;
}

export const singleLine = (content: string): Indentable => ({ indentation, preindent }) =>
    (preindent ? spaces(indentation) : "") + content

export const elmFunctionCall = (firstLine: string, nextLine: Indentable): Indentable => ({ indentation, preindent }) =>
    [ (preindent ? spaces(indentation) : "") + firstLine
    , nextLine({ indentation: align(indentation + 4, 4), preindent: true })
    ].join("\n")

export const elmList = (elements: Array<Indentable>): Indentable => ({ indentation, preindent }) => {
    const indent = spaces(indentation);
    if (elements.length === 0) {
        return indent + "[]";
    }
    let str = "";
    let idx = 0;
    elements.forEach(elem => {
        if (idx != 0 || preindent) {
            str += indent;
        }
        str += idx === 0 ? "[ " : ", ";
        str += elem({ indentation: indentation + 2, preindent: false });
        str += "\n";
        idx++;
    });
    str += indent;
    str += "]";
    return str;
}

export const elmTuple = (first: Indentable, second: Indentable): Indentable => ({ indentation, preindent }) => {
    const indent = spaces(indentation);
    return [
        (preindent ? indent : "") + "( " + first({ indentation: indentation + 2, preindent: false }),
        indent + ", " + second({ indentation: indentation + 2, preindent: false }),
        indent + ")"
    ].join("\n");
}

export const elmParen = (around: Indentable): Indentable => ({ indentation, preindent }) => {
    const indent = spaces(indentation);
    return [
        (preindent ? indent : "") + "(" + around({ indentation, preindent: false }),
        indent + ")"
    ].join("\n");
}

const spaces = (n: number): string => " ".repeat(Math.max(0, n))

const align = (n: number, to: number): number => Math.floor(n / to) * to