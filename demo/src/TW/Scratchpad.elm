module TW.Scratchpad exposing (..)

import Css
import Css.Global


space_y_2 : Css.Style
space_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not(template) ~ :not(template)"
                [ Css.property "--space-y-reverse" "0"
                , Css.property "margin-top" "calc(0.5rem * calc(1 - var(--space-y-reverse)))"
                , Css.property "margin-bottom" "calc(0.5rem * var(--space-y-reverse));"
                ]
            ]
        ]



-- space_y_2 : Css.Style
-- space_y_2 =
--     Css.batch
--         [ Css.Global.
--             [ Css.Global.selector "> :not(template) ~ :not(template)"
--                 [ Css.property "--space-y-reverse" "0"
--                 , Css.property "margin-top" "calc(0.5rem * calc(1 - var(--space-y-reverse)))"
--                 , Css.property "margin-bottom" "calc(0.5rem * var(--space-y-reverse))"
--                 ]
--             ]
--         ]
-- space_y_2 : Css.Style
-- space_y_2 =
--     Css.batch
--         [ Css.Global.children
--             [ Css.Global.selector ":not(template)"
--                 [ Css.Global.generalSiblings
--                     [ Css.Global.selector ":not(template)"
--                         [ Css.property "--space-y-reverse" "0"
--                         , Css.property "margin-top" "calc(0.5rem * calc(1 - var(--space-y-reverse)))"
--                         , Css.property "margin-bottom" "calc(0.5rem * var(--space-y-reverse));"
--                         ]
--                     ]
--                 ]
--             ]
--         ]
