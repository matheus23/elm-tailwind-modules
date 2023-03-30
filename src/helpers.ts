export function fixClass(cls: string): string {
    // remove the dot
    cls = cls.replace(/^(\.)/, "");
    // make other dots safe
    cls = cls.replace(/\\\./g, ".");
    // remove > anything
    cls = cls.replace(/\s?>\s?.*/, "");
    // remove pseudo-elements (::)
    cls = cls.replace(/::.*$/, "");
    // remove pseudo-classes (:)
    cls = cls.replace(
        /(:(active|after|before|checked|disabled|focus|focus-within|hover|visited|nth-child\((even|odd)\)|(first|last)-child))+$/,
        ""
    );
    // make / safe for elm
    cls = cls.replace(/\\\//g, "/");
    // make \/ safe for elm
    cls = cls.replace(/\\([/])/g, "\\\\$1");
    // make \: safe for elm
    cls = cls.replace(/\\([:])/g, "$1");
    return cls;
}

export function toElmName(cls: string): string {
    var elm = cls;
    // This is faster than a general solution
    elm = elm.replace(/^2(x[ls].*$)/, "x$1");
    elm = elm.replace(/^3(x[ls].*$)/, "xx$1");
    elm = elm.replace(/^4(x[ls].*$)/, "xxx$1");
    elm = elm.replace(/^5(x[ls].*$)/, "xxxx$1");
    // handle negative at start of string
    elm = elm.replace(/^-([a-z])/, "_neg_$1");
    // handle negative with variant
    elm = elm.replace(/:-([a-z])/, "__neg_$1");
    // replace dashes now we have sorted the negative stuff
    elm = elm.replace(/-/g, "_");
    // replace :
    elm = elm.replace(/:/g, "__");
    // replace %
    elm = elm.replace(/%/g, "pct");
    // handle fractions
    elm = elm.replace(/\//g, "over");
    // clean up
    elm = elm.replace(/\\__/g, "_");
    elm = elm.replace(/^_/g, "");
    // handle :nth-child(even), etc
    elm = elm.replace(/_nth_child\(.+\)/, "");
    elm = elm.replace(/_(last|first)_child/, "");
    // replace any other dots
    elm = elm.replace(/\./g, "_dot_");
    return elm;
}
