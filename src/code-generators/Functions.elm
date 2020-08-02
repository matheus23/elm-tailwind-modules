--  scratch pad for function definition ideas so I don't lose them


-- For a given breakpoint, apply a list of styles. 
atBreakpoint : Breakpoint -> List Css.Style -> Css.Style
atBreakpoint bp styles =
    case bp of
        Breakpoint mediaQueryString ->
            Css.batch [ Css.Media.withMediaQuery [ mediaQueryString ] styles ]