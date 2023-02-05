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

const defaultListOptions = {
    open: "[",
    separator: ",",
    close: "]",
};

export interface ListOptions {
    open: string;
    separator: string;
    close: string;
}

export const elmList = (elements: Indentable[], options: ListOptions = defaultListOptions): Indentable => ({ indentation, preindent }) => {
    const indent = spaces(indentation);
    if (elements.length === 0) {
        return indent + options.open + options.close;
    }
    let str = "";
    let idx = 0;
    elements.forEach(elem => {
        if (idx != 0 || preindent) {
            str += indent;
        }
        str += idx === 0 ? options.open + " " : options.separator + " ";
        str += elem({ indentation: indentation + 2, preindent: false });
        str += "\n";
        idx++;
    });
    str += indent;
    str += options.close;
    return str;
}

const tupleOptions = {
    open: "(",
    separator: ",",
    close: ")",
}

export const elmTuple = (elements: Indentable[]): Indentable =>
    elmList(elements, tupleOptions)

export const elmParen = (around: Indentable): Indentable => ({ indentation, preindent }) => {
    const indent = spaces(indentation);
    return [
        (preindent ? indent : "") + "(" + around({ indentation, preindent: false }),
        indent + ")"
    ].join("\n");
}


export interface HeaderOptions {
    moduleName: string;
    exposing: string[] | null;
    moduleDocs: string | null;
    imports: Indentable[];
}

export const elmModuleHeader = (header: HeaderOptions): string => {
    const imports = header.imports
        .map(i => i({ indentation: 0, preindent: false }))
        .sort()
        .join("\n");
    return `module ${header.moduleName}${elmExposing(header.exposing)({ indentation: 0, preindent: false })}
${header.moduleDocs == null ? "" : header.moduleDocs}
${imports}
`;
}

function elmExposing(exposing: string[] | null): Indentable {
    if (exposing == null) {
        return singleLine(" exposing (..)");
    }

    return elmFunctionCall(
        " exposing",
        elmTuple(exposing.map(singleLine))
    );
}

const spaces = (n: number): string => " ".repeat(Math.max(0, n))

const align = (n: number, to: number): number => Math.floor(n / to) * to