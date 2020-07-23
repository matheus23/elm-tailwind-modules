module TW exposing
    ( bg_auto
    , bg_black
    , bg_blue_100
    , bg_blue_200
    , bg_blue_300
    , bg_blue_400
    , bg_blue_500
    , bg_blue_600
    , bg_blue_700
    , bg_blue_800
    , bg_blue_900
    , bg_bottom
    , bg_center
    , bg_contain
    , bg_cover
    , bg_current
    , bg_fixed
    , bg_gray_100
    , bg_gray_200
    , bg_gray_300
    , bg_gray_400
    , bg_gray_500
    , bg_gray_600
    , bg_gray_700
    , bg_gray_800
    , bg_gray_900
    , bg_green_100
    , bg_green_200
    , bg_green_300
    , bg_green_400
    , bg_green_500
    , bg_green_600
    , bg_green_700
    , bg_green_800
    , bg_green_900
    , bg_indigo_100
    , bg_indigo_200
    , bg_indigo_300
    , bg_indigo_400
    , bg_indigo_500
    , bg_indigo_600
    , bg_indigo_700
    , bg_indigo_800
    , bg_indigo_900
    , bg_left
    , bg_left_bottom
    , bg_left_top
    , bg_local
    , bg_no_repeat
    , bg_orange_100
    , bg_orange_200
    , bg_orange_300
    , bg_orange_400
    , bg_orange_500
    , bg_orange_600
    , bg_orange_700
    , bg_orange_800
    , bg_orange_900
    , bg_pink_100
    , bg_pink_200
    , bg_pink_300
    , bg_pink_400
    , bg_pink_500
    , bg_pink_600
    , bg_pink_700
    , bg_pink_800
    , bg_pink_900
    , bg_purple_100
    , bg_purple_200
    , bg_purple_300
    , bg_purple_400
    , bg_purple_500
    , bg_purple_600
    , bg_purple_700
    , bg_purple_800
    , bg_purple_900
    , bg_red_100
    , bg_red_200
    , bg_red_300
    , bg_red_400
    , bg_red_500
    , bg_red_600
    , bg_red_700
    , bg_red_800
    , bg_red_900
    , bg_repeat
    , bg_repeat_round
    , bg_repeat_space
    , bg_repeat_x
    , bg_repeat_y
    , bg_right
    , bg_right_bottom
    , bg_right_top
    , bg_scroll
    , bg_teal_100
    , bg_teal_200
    , bg_teal_300
    , bg_teal_400
    , bg_teal_500
    , bg_teal_600
    , bg_teal_700
    , bg_teal_800
    , bg_teal_900
    , bg_top
    , bg_transparent
    , bg_white
    , bg_yellow_100
    , bg_yellow_200
    , bg_yellow_300
    , bg_yellow_400
    , bg_yellow_500
    , bg_yellow_600
    , bg_yellow_700
    , bg_yellow_800
    , bg_yellow_900
    , hover__bg_black
    , hover__bg_blue_100
    , hover__bg_blue_200
    , hover__bg_blue_300
    , hover__bg_blue_400
    , hover__bg_blue_500
    , hover__bg_blue_600
    , hover__bg_blue_700
    , hover__bg_blue_800
    , hover__bg_blue_900
    , hover__bg_current
    , hover__bg_gray_100
    , hover__bg_gray_200
    , hover__bg_gray_300
    , hover__bg_gray_400
    , hover__bg_gray_500
    , hover__bg_gray_600
    , hover__bg_gray_700
    , hover__bg_gray_800
    , hover__bg_gray_900
    , hover__bg_green_100
    , hover__bg_green_200
    , hover__bg_green_300
    , hover__bg_green_400
    , hover__bg_green_500
    , hover__bg_green_600
    , hover__bg_green_700
    , hover__bg_green_800
    , hover__bg_green_900
    , hover__bg_indigo_100
    , hover__bg_indigo_200
    , hover__bg_indigo_300
    , hover__bg_indigo_400
    , hover__bg_indigo_500
    , hover__bg_indigo_600
    , hover__bg_indigo_700
    , hover__bg_indigo_800
    , hover__bg_indigo_900
    , hover__bg_orange_100
    , hover__bg_orange_200
    , hover__bg_orange_300
    , hover__bg_orange_400
    , hover__bg_orange_500
    , hover__bg_orange_600
    , hover__bg_orange_700
    , hover__bg_orange_800
    , hover__bg_orange_900
    , hover__bg_pink_100
    , hover__bg_pink_200
    , hover__bg_pink_300
    , hover__bg_pink_400
    , hover__bg_pink_500
    , hover__bg_pink_600
    , hover__bg_pink_700
    , hover__bg_pink_800
    , hover__bg_pink_900
    , hover__bg_purple_100
    , hover__bg_purple_200
    , hover__bg_purple_300
    , hover__bg_purple_400
    , hover__bg_purple_500
    , hover__bg_purple_600
    , hover__bg_purple_700
    , hover__bg_purple_800
    , hover__bg_purple_900
    , hover__bg_red_100
    , hover__bg_red_200
    , hover__bg_red_300
    , hover__bg_red_400
    , hover__bg_red_500
    , hover__bg_red_600
    , hover__bg_red_700
    , hover__bg_red_800
    , hover__bg_red_900
    , hover__bg_teal_100
    , hover__bg_teal_200
    , hover__bg_teal_300
    , hover__bg_teal_400
    , hover__bg_teal_500
    , hover__bg_teal_600
    , hover__bg_teal_700
    , hover__bg_teal_800
    , hover__bg_teal_900
    , hover__bg_transparent
    , hover__bg_white
    , hover__bg_yellow_100
    , hover__bg_yellow_200
    , hover__bg_yellow_300
    , hover__bg_yellow_400
    , hover__bg_yellow_500
    , hover__bg_yellow_600
    , hover__bg_yellow_700
    , hover__bg_yellow_800
    , hover__bg_yellow_900
    , hover__border_black
    , hover__border_blue_100
    , hover__border_blue_200
    , hover__border_blue_300
    , hover__border_blue_400
    , hover__border_blue_500
    , hover__border_blue_600
    , hover__border_blue_700
    , hover__border_blue_800
    , hover__border_blue_900
    , hover__border_current
    , hover__border_gray_100
    , hover__border_gray_200
    , hover__border_gray_300
    , hover__border_gray_400
    , hover__border_gray_500
    , hover__border_gray_600
    , hover__border_gray_700
    , hover__border_gray_800
    , hover__border_gray_900
    , hover__border_green_100
    , hover__border_green_200
    , hover__border_green_300
    , hover__border_green_400
    , hover__border_green_500
    , hover__border_green_600
    , hover__border_green_700
    , hover__border_green_800
    , hover__border_green_900
    , hover__border_indigo_100
    , hover__border_indigo_200
    , hover__border_indigo_300
    , hover__border_indigo_400
    , hover__border_indigo_500
    , hover__border_indigo_600
    , hover__border_indigo_700
    , hover__border_indigo_800
    , hover__border_indigo_900
    , hover__border_orange_100
    , hover__border_orange_200
    , hover__border_orange_300
    , hover__border_orange_400
    , hover__border_orange_500
    , hover__border_orange_600
    , hover__border_orange_700
    , hover__border_orange_800
    , hover__border_orange_900
    , hover__border_pink_100
    , hover__border_pink_200
    , hover__border_pink_300
    , hover__border_pink_400
    , hover__border_pink_500
    , hover__border_pink_600
    , hover__border_pink_700
    , hover__border_pink_800
    , hover__border_pink_900
    , hover__border_purple_100
    , hover__border_purple_200
    , hover__border_purple_300
    , hover__border_purple_400
    , hover__border_purple_500
    , hover__border_purple_600
    , hover__border_purple_700
    , hover__border_purple_800
    , hover__border_purple_900
    , hover__border_red_100
    , hover__border_red_200
    , hover__border_red_300
    , hover__border_red_400
    , hover__border_red_500
    , hover__border_red_600
    , hover__border_red_700
    , hover__border_red_800
    , hover__border_red_900
    , hover__border_teal_100
    , hover__border_teal_200
    , hover__border_teal_300
    , hover__border_teal_400
    , hover__border_teal_500
    , hover__border_teal_600
    , hover__border_teal_700
    , hover__border_teal_800
    , hover__border_teal_900
    , hover__border_transparent
    , hover__border_white
    , hover__border_yellow_100
    , hover__border_yellow_200
    , hover__border_yellow_300
    , hover__border_yellow_400
    , hover__border_yellow_500
    , hover__border_yellow_600
    , hover__border_yellow_700
    , hover__border_yellow_800
    , hover__border_yellow_900
    , hover__font_black
    , hover__font_bold
    , hover__font_extrabold
    , hover__font_hairline
    , hover__font_light
    , hover__font_medium
    , hover__font_normal
    , hover__font_semibold
    , hover__font_thin
    , hover__line_through
    , hover__no_underline
    , hover__opacity_0
    , hover__opacity_100
    , hover__opacity_25
    , hover__opacity_50
    , hover__opacity_75
    , hover__shadow
    , hover__shadow_2xl
    , hover__shadow_inner
    , hover__shadow_lg
    , hover__shadow_md
    , hover__shadow_none
    , hover__shadow_outline
    , hover__shadow_sm
    , hover__shadow_xl
    , hover__shadow_xs
    , hover__text_black
    , hover__text_blue_100
    , hover__text_blue_200
    , hover__text_blue_300
    , hover__text_blue_400
    , hover__text_blue_500
    , hover__text_blue_600
    , hover__text_blue_700
    , hover__text_blue_800
    , hover__text_blue_900
    , hover__text_current
    , hover__text_gray_100
    , hover__text_gray_200
    , hover__text_gray_300
    , hover__text_gray_400
    , hover__text_gray_500
    , hover__text_gray_600
    , hover__text_gray_700
    , hover__text_gray_800
    , hover__text_gray_900
    , hover__text_green_100
    , hover__text_green_200
    , hover__text_green_300
    , hover__text_green_400
    , hover__text_green_500
    , hover__text_green_600
    , hover__text_green_700
    , hover__text_green_800
    , hover__text_green_900
    , hover__text_indigo_100
    , hover__text_indigo_200
    , hover__text_indigo_300
    , hover__text_indigo_400
    , hover__text_indigo_500
    , hover__text_indigo_600
    , hover__text_indigo_700
    , hover__text_indigo_800
    , hover__text_indigo_900
    , hover__text_orange_100
    , hover__text_orange_200
    , hover__text_orange_300
    , hover__text_orange_400
    , hover__text_orange_500
    , hover__text_orange_600
    , hover__text_orange_700
    , hover__text_orange_800
    , hover__text_orange_900
    , hover__text_pink_100
    , hover__text_pink_200
    , hover__text_pink_300
    , hover__text_pink_400
    , hover__text_pink_500
    , hover__text_pink_600
    , hover__text_pink_700
    , hover__text_pink_800
    , hover__text_pink_900
    , hover__text_purple_100
    , hover__text_purple_200
    , hover__text_purple_300
    , hover__text_purple_400
    , hover__text_purple_500
    , hover__text_purple_600
    , hover__text_purple_700
    , hover__text_purple_800
    , hover__text_purple_900
    , hover__text_red_100
    , hover__text_red_200
    , hover__text_red_300
    , hover__text_red_400
    , hover__text_red_500
    , hover__text_red_600
    , hover__text_red_700
    , hover__text_red_800
    , hover__text_red_900
    , hover__text_teal_100
    , hover__text_teal_200
    , hover__text_teal_300
    , hover__text_teal_400
    , hover__text_teal_500
    , hover__text_teal_600
    , hover__text_teal_700
    , hover__text_teal_800
    , hover__text_teal_900
    , hover__text_transparent
    , hover__text_white
    , hover__text_yellow_100
    , hover__text_yellow_200
    , hover__text_yellow_300
    , hover__text_yellow_400
    , hover__text_yellow_500
    , hover__text_yellow_600
    , hover__text_yellow_700
    , hover__text_yellow_800
    , hover__text_yellow_900
    , hover__underline
    , lg__ml_0
    , lg__ml_1
    , lg__ml_10
    , lg__ml_12
    , lg__ml_16
    , lg__ml_2
    , lg__ml_20
    , lg__ml_24
    , lg__ml_3
    , lg__ml_32
    , lg__ml_4
    , lg__ml_40
    , lg__ml_48
    , lg__ml_5
    , lg__ml_56
    , lg__ml_6
    , lg__ml_64
    , lg__ml_8
    , lg__ml_auto
    , lg__ml_px
    , m_0
    , m_1
    , m_10
    , m_12
    , m_16
    , m_2
    , m_20
    , m_24
    , m_3
    , m_32
    , m_4
    , m_40
    , m_48
    , m_5
    , m_56
    , m_6
    , m_64
    , m_8
    , m_auto
    , m_px
    , mx_0
    , mx_1
    , mx_10
    , mx_12
    , mx_16
    , mx_2
    , mx_20
    , mx_24
    , mx_3
    , mx_32
    , mx_4
    , mx_40
    , mx_48
    , mx_5
    , mx_56
    , mx_6
    , mx_64
    , mx_8
    , mx_auto
    , mx_px
    , my_0
    , my_1
    , my_10
    , my_12
    , my_16
    , my_2
    , my_20
    , my_24
    , my_3
    , my_32
    , my_4
    , my_40
    , my_48
    , my_5
    , my_56
    , my_6
    , my_64
    , my_8
    , my_auto
    , my_px
    , p_0
    , p_1
    , p_10
    , p_12
    , p_16
    , p_2
    , p_20
    , p_24
    , p_3
    , p_32
    , p_4
    , p_40
    , p_48
    , p_5
    , p_56
    , p_6
    , p_64
    , p_8
    , p_px
    , px_0
    , px_1
    , px_10
    , px_12
    , px_16
    , px_2
    , px_20
    , px_24
    , px_3
    , px_32
    , px_4
    , px_40
    , px_48
    , px_5
    , px_56
    , px_6
    , px_64
    , px_8
    , px_px
    , py_0
    , py_1
    , py_10
    , py_12
    , py_16
    , py_2
    , py_20
    , py_24
    , py_3
    , py_32
    , py_4
    , py_40
    , py_48
    , py_5
    , py_56
    , py_6
    , py_64
    , py_8
    , py_px
    , shadow
    , shadow_2xl
    , shadow_inner
    , shadow_lg
    , shadow_md
    , shadow_none
    , shadow_outline
    , shadow_sm
    , shadow_xl
    , shadow_xs
    )

import Css 
import Css.Media



m_0 : Css.Style
m_0 =
    Css.batch [
      Css.undefined (Css.px 0)
    ]


m_1 : Css.Style
m_1 =
    Css.batch [
      Css.undefined (Css.rem 0.25)
    ]


m_2 : Css.Style
m_2 =
    Css.batch [
      Css.undefined (Css.rem 0.5)
    ]


m_3 : Css.Style
m_3 =
    Css.batch [
      Css.undefined (Css.rem 0.75)
    ]


m_4 : Css.Style
m_4 =
    Css.batch [
      Css.undefined (Css.rem 1)
    ]


m_5 : Css.Style
m_5 =
    Css.batch [
      Css.undefined (Css.rem 1.25)
    ]


m_6 : Css.Style
m_6 =
    Css.batch [
      Css.undefined (Css.rem 1.5)
    ]


m_8 : Css.Style
m_8 =
    Css.batch [
      Css.undefined (Css.rem 2)
    ]


m_10 : Css.Style
m_10 =
    Css.batch [
      Css.undefined (Css.rem 2.5)
    ]


m_12 : Css.Style
m_12 =
    Css.batch [
      Css.undefined (Css.rem 3)
    ]


m_16 : Css.Style
m_16 =
    Css.batch [
      Css.undefined (Css.rem 4)
    ]


m_20 : Css.Style
m_20 =
    Css.batch [
      Css.undefined (Css.rem 5)
    ]


m_24 : Css.Style
m_24 =
    Css.batch [
      Css.undefined (Css.rem 6)
    ]


m_32 : Css.Style
m_32 =
    Css.batch [
      Css.undefined (Css.rem 8)
    ]


m_40 : Css.Style
m_40 =
    Css.batch [
      Css.undefined (Css.rem 10)
    ]


m_48 : Css.Style
m_48 =
    Css.batch [
      Css.undefined (Css.rem 12)
    ]


m_56 : Css.Style
m_56 =
    Css.batch [
      Css.undefined (Css.rem 14)
    ]


m_64 : Css.Style
m_64 =
    Css.batch [
      Css.undefined (Css.rem 16)
    ]


m_auto : Css.Style
m_auto =
    Css.batch [
      Css.undefined Css.auto
    ]


m_px : Css.Style
m_px =
    Css.batch [
      Css.undefined (Css.px 1)
    ]


my_0 : Css.Style
my_0 =
    Css.batch [
      Css.marginTop (Css.px 0), 
      Css.marginBottom (Css.px 0)
    ]


mx_0 : Css.Style
mx_0 =
    Css.batch [
      Css.marginLeft (Css.px 0), 
      Css.marginRight (Css.px 0)
    ]


my_1 : Css.Style
my_1 =
    Css.batch [
      Css.marginTop (Css.rem 0.25), 
      Css.marginBottom (Css.rem 0.25)
    ]


mx_1 : Css.Style
mx_1 =
    Css.batch [
      Css.marginLeft (Css.rem 0.25), 
      Css.marginRight (Css.rem 0.25)
    ]


my_2 : Css.Style
my_2 =
    Css.batch [
      Css.marginTop (Css.rem 0.5), 
      Css.marginBottom (Css.rem 0.5)
    ]


mx_2 : Css.Style
mx_2 =
    Css.batch [
      Css.marginLeft (Css.rem 0.5), 
      Css.marginRight (Css.rem 0.5)
    ]


my_3 : Css.Style
my_3 =
    Css.batch [
      Css.marginTop (Css.rem 0.75), 
      Css.marginBottom (Css.rem 0.75)
    ]


mx_3 : Css.Style
mx_3 =
    Css.batch [
      Css.marginLeft (Css.rem 0.75), 
      Css.marginRight (Css.rem 0.75)
    ]


my_4 : Css.Style
my_4 =
    Css.batch [
      Css.marginTop (Css.rem 1), 
      Css.marginBottom (Css.rem 1)
    ]


mx_4 : Css.Style
mx_4 =
    Css.batch [
      Css.marginLeft (Css.rem 1), 
      Css.marginRight (Css.rem 1)
    ]


my_5 : Css.Style
my_5 =
    Css.batch [
      Css.marginTop (Css.rem 1.25), 
      Css.marginBottom (Css.rem 1.25)
    ]


mx_5 : Css.Style
mx_5 =
    Css.batch [
      Css.marginLeft (Css.rem 1.25), 
      Css.marginRight (Css.rem 1.25)
    ]


my_6 : Css.Style
my_6 =
    Css.batch [
      Css.marginTop (Css.rem 1.5), 
      Css.marginBottom (Css.rem 1.5)
    ]


mx_6 : Css.Style
mx_6 =
    Css.batch [
      Css.marginLeft (Css.rem 1.5), 
      Css.marginRight (Css.rem 1.5)
    ]


my_8 : Css.Style
my_8 =
    Css.batch [
      Css.marginTop (Css.rem 2), 
      Css.marginBottom (Css.rem 2)
    ]


mx_8 : Css.Style
mx_8 =
    Css.batch [
      Css.marginLeft (Css.rem 2), 
      Css.marginRight (Css.rem 2)
    ]


my_10 : Css.Style
my_10 =
    Css.batch [
      Css.marginTop (Css.rem 2.5), 
      Css.marginBottom (Css.rem 2.5)
    ]


mx_10 : Css.Style
mx_10 =
    Css.batch [
      Css.marginLeft (Css.rem 2.5), 
      Css.marginRight (Css.rem 2.5)
    ]


my_12 : Css.Style
my_12 =
    Css.batch [
      Css.marginTop (Css.rem 3), 
      Css.marginBottom (Css.rem 3)
    ]


mx_12 : Css.Style
mx_12 =
    Css.batch [
      Css.marginLeft (Css.rem 3), 
      Css.marginRight (Css.rem 3)
    ]


my_16 : Css.Style
my_16 =
    Css.batch [
      Css.marginTop (Css.rem 4), 
      Css.marginBottom (Css.rem 4)
    ]


mx_16 : Css.Style
mx_16 =
    Css.batch [
      Css.marginLeft (Css.rem 4), 
      Css.marginRight (Css.rem 4)
    ]


my_20 : Css.Style
my_20 =
    Css.batch [
      Css.marginTop (Css.rem 5), 
      Css.marginBottom (Css.rem 5)
    ]


mx_20 : Css.Style
mx_20 =
    Css.batch [
      Css.marginLeft (Css.rem 5), 
      Css.marginRight (Css.rem 5)
    ]


my_24 : Css.Style
my_24 =
    Css.batch [
      Css.marginTop (Css.rem 6), 
      Css.marginBottom (Css.rem 6)
    ]


mx_24 : Css.Style
mx_24 =
    Css.batch [
      Css.marginLeft (Css.rem 6), 
      Css.marginRight (Css.rem 6)
    ]


my_32 : Css.Style
my_32 =
    Css.batch [
      Css.marginTop (Css.rem 8), 
      Css.marginBottom (Css.rem 8)
    ]


mx_32 : Css.Style
mx_32 =
    Css.batch [
      Css.marginLeft (Css.rem 8), 
      Css.marginRight (Css.rem 8)
    ]


my_40 : Css.Style
my_40 =
    Css.batch [
      Css.marginTop (Css.rem 10), 
      Css.marginBottom (Css.rem 10)
    ]


mx_40 : Css.Style
mx_40 =
    Css.batch [
      Css.marginLeft (Css.rem 10), 
      Css.marginRight (Css.rem 10)
    ]


my_48 : Css.Style
my_48 =
    Css.batch [
      Css.marginTop (Css.rem 12), 
      Css.marginBottom (Css.rem 12)
    ]


mx_48 : Css.Style
mx_48 =
    Css.batch [
      Css.marginLeft (Css.rem 12), 
      Css.marginRight (Css.rem 12)
    ]


my_56 : Css.Style
my_56 =
    Css.batch [
      Css.marginTop (Css.rem 14), 
      Css.marginBottom (Css.rem 14)
    ]


mx_56 : Css.Style
mx_56 =
    Css.batch [
      Css.marginLeft (Css.rem 14), 
      Css.marginRight (Css.rem 14)
    ]


my_64 : Css.Style
my_64 =
    Css.batch [
      Css.marginTop (Css.rem 16), 
      Css.marginBottom (Css.rem 16)
    ]


mx_64 : Css.Style
mx_64 =
    Css.batch [
      Css.marginLeft (Css.rem 16), 
      Css.marginRight (Css.rem 16)
    ]


my_auto : Css.Style
my_auto =
    Css.batch [
      Css.marginTop Css.auto, 
      Css.marginBottom Css.auto
    ]


mx_auto : Css.Style
mx_auto =
    Css.batch [
      Css.marginLeft Css.auto, 
      Css.marginRight Css.auto
    ]


my_px : Css.Style
my_px =
    Css.batch [
      Css.marginTop (Css.px 1), 
      Css.marginBottom (Css.px 1)
    ]


mx_px : Css.Style
mx_px =
    Css.batch [
      Css.marginLeft (Css.px 1), 
      Css.marginRight (Css.px 1)
    ]


p_0 : Css.Style
p_0 =
    Css.batch [
      Css.padding (Css.px 0)
    ]


p_1 : Css.Style
p_1 =
    Css.batch [
      Css.padding (Css.rem 0.25)
    ]


p_2 : Css.Style
p_2 =
    Css.batch [
      Css.padding (Css.rem 0.5)
    ]


p_3 : Css.Style
p_3 =
    Css.batch [
      Css.padding (Css.rem 0.75)
    ]


p_4 : Css.Style
p_4 =
    Css.batch [
      Css.padding (Css.rem 1)
    ]


p_5 : Css.Style
p_5 =
    Css.batch [
      Css.padding (Css.rem 1.25)
    ]


p_6 : Css.Style
p_6 =
    Css.batch [
      Css.padding (Css.rem 1.5)
    ]


p_8 : Css.Style
p_8 =
    Css.batch [
      Css.padding (Css.rem 2)
    ]


p_10 : Css.Style
p_10 =
    Css.batch [
      Css.padding (Css.rem 2.5)
    ]


p_12 : Css.Style
p_12 =
    Css.batch [
      Css.padding (Css.rem 3)
    ]


p_16 : Css.Style
p_16 =
    Css.batch [
      Css.padding (Css.rem 4)
    ]


p_20 : Css.Style
p_20 =
    Css.batch [
      Css.padding (Css.rem 5)
    ]


p_24 : Css.Style
p_24 =
    Css.batch [
      Css.padding (Css.rem 6)
    ]


p_32 : Css.Style
p_32 =
    Css.batch [
      Css.padding (Css.rem 8)
    ]


p_40 : Css.Style
p_40 =
    Css.batch [
      Css.padding (Css.rem 10)
    ]


p_48 : Css.Style
p_48 =
    Css.batch [
      Css.padding (Css.rem 12)
    ]


p_56 : Css.Style
p_56 =
    Css.batch [
      Css.padding (Css.rem 14)
    ]


p_64 : Css.Style
p_64 =
    Css.batch [
      Css.padding (Css.rem 16)
    ]


p_px : Css.Style
p_px =
    Css.batch [
      Css.padding (Css.px 1)
    ]


py_0 : Css.Style
py_0 =
    Css.batch [
      Css.paddingTop (Css.px 0), 
      Css.paddingBottom (Css.px 0)
    ]


px_0 : Css.Style
px_0 =
    Css.batch [
      Css.paddingLeft (Css.px 0), 
      Css.paddingRight (Css.px 0)
    ]


py_1 : Css.Style
py_1 =
    Css.batch [
      Css.paddingTop (Css.rem 0.25), 
      Css.paddingBottom (Css.rem 0.25)
    ]


px_1 : Css.Style
px_1 =
    Css.batch [
      Css.paddingLeft (Css.rem 0.25), 
      Css.paddingRight (Css.rem 0.25)
    ]


py_2 : Css.Style
py_2 =
    Css.batch [
      Css.paddingTop (Css.rem 0.5), 
      Css.paddingBottom (Css.rem 0.5)
    ]


px_2 : Css.Style
px_2 =
    Css.batch [
      Css.paddingLeft (Css.rem 0.5), 
      Css.paddingRight (Css.rem 0.5)
    ]


py_3 : Css.Style
py_3 =
    Css.batch [
      Css.paddingTop (Css.rem 0.75), 
      Css.paddingBottom (Css.rem 0.75)
    ]


px_3 : Css.Style
px_3 =
    Css.batch [
      Css.paddingLeft (Css.rem 0.75), 
      Css.paddingRight (Css.rem 0.75)
    ]


py_4 : Css.Style
py_4 =
    Css.batch [
      Css.paddingTop (Css.rem 1), 
      Css.paddingBottom (Css.rem 1)
    ]


px_4 : Css.Style
px_4 =
    Css.batch [
      Css.paddingLeft (Css.rem 1), 
      Css.paddingRight (Css.rem 1)
    ]


py_5 : Css.Style
py_5 =
    Css.batch [
      Css.paddingTop (Css.rem 1.25), 
      Css.paddingBottom (Css.rem 1.25)
    ]


px_5 : Css.Style
px_5 =
    Css.batch [
      Css.paddingLeft (Css.rem 1.25), 
      Css.paddingRight (Css.rem 1.25)
    ]


py_6 : Css.Style
py_6 =
    Css.batch [
      Css.paddingTop (Css.rem 1.5), 
      Css.paddingBottom (Css.rem 1.5)
    ]


px_6 : Css.Style
px_6 =
    Css.batch [
      Css.paddingLeft (Css.rem 1.5), 
      Css.paddingRight (Css.rem 1.5)
    ]


py_8 : Css.Style
py_8 =
    Css.batch [
      Css.paddingTop (Css.rem 2), 
      Css.paddingBottom (Css.rem 2)
    ]


px_8 : Css.Style
px_8 =
    Css.batch [
      Css.paddingLeft (Css.rem 2), 
      Css.paddingRight (Css.rem 2)
    ]


py_10 : Css.Style
py_10 =
    Css.batch [
      Css.paddingTop (Css.rem 2.5), 
      Css.paddingBottom (Css.rem 2.5)
    ]


px_10 : Css.Style
px_10 =
    Css.batch [
      Css.paddingLeft (Css.rem 2.5), 
      Css.paddingRight (Css.rem 2.5)
    ]


py_12 : Css.Style
py_12 =
    Css.batch [
      Css.paddingTop (Css.rem 3), 
      Css.paddingBottom (Css.rem 3)
    ]


px_12 : Css.Style
px_12 =
    Css.batch [
      Css.paddingLeft (Css.rem 3), 
      Css.paddingRight (Css.rem 3)
    ]


py_16 : Css.Style
py_16 =
    Css.batch [
      Css.paddingTop (Css.rem 4), 
      Css.paddingBottom (Css.rem 4)
    ]


px_16 : Css.Style
px_16 =
    Css.batch [
      Css.paddingLeft (Css.rem 4), 
      Css.paddingRight (Css.rem 4)
    ]


py_20 : Css.Style
py_20 =
    Css.batch [
      Css.paddingTop (Css.rem 5), 
      Css.paddingBottom (Css.rem 5)
    ]


px_20 : Css.Style
px_20 =
    Css.batch [
      Css.paddingLeft (Css.rem 5), 
      Css.paddingRight (Css.rem 5)
    ]


py_24 : Css.Style
py_24 =
    Css.batch [
      Css.paddingTop (Css.rem 6), 
      Css.paddingBottom (Css.rem 6)
    ]


px_24 : Css.Style
px_24 =
    Css.batch [
      Css.paddingLeft (Css.rem 6), 
      Css.paddingRight (Css.rem 6)
    ]


py_32 : Css.Style
py_32 =
    Css.batch [
      Css.paddingTop (Css.rem 8), 
      Css.paddingBottom (Css.rem 8)
    ]


px_32 : Css.Style
px_32 =
    Css.batch [
      Css.paddingLeft (Css.rem 8), 
      Css.paddingRight (Css.rem 8)
    ]


py_40 : Css.Style
py_40 =
    Css.batch [
      Css.paddingTop (Css.rem 10), 
      Css.paddingBottom (Css.rem 10)
    ]


px_40 : Css.Style
px_40 =
    Css.batch [
      Css.paddingLeft (Css.rem 10), 
      Css.paddingRight (Css.rem 10)
    ]


py_48 : Css.Style
py_48 =
    Css.batch [
      Css.paddingTop (Css.rem 12), 
      Css.paddingBottom (Css.rem 12)
    ]


px_48 : Css.Style
px_48 =
    Css.batch [
      Css.paddingLeft (Css.rem 12), 
      Css.paddingRight (Css.rem 12)
    ]


py_56 : Css.Style
py_56 =
    Css.batch [
      Css.paddingTop (Css.rem 14), 
      Css.paddingBottom (Css.rem 14)
    ]


px_56 : Css.Style
px_56 =
    Css.batch [
      Css.paddingLeft (Css.rem 14), 
      Css.paddingRight (Css.rem 14)
    ]


py_64 : Css.Style
py_64 =
    Css.batch [
      Css.paddingTop (Css.rem 16), 
      Css.paddingBottom (Css.rem 16)
    ]


px_64 : Css.Style
px_64 =
    Css.batch [
      Css.paddingLeft (Css.rem 16), 
      Css.paddingRight (Css.rem 16)
    ]


py_px : Css.Style
py_px =
    Css.batch [
      Css.paddingTop (Css.px 1), 
      Css.paddingBottom (Css.px 1)
    ]


px_px : Css.Style
px_px =
    Css.batch [
      Css.paddingLeft (Css.px 1), 
      Css.paddingRight (Css.px 1)
    ]


bg_fixed : Css.Style
bg_fixed =
    Css.batch [
      Css.backgroundAttachment Css.fixed
    ]


bg_local : Css.Style
bg_local =
    Css.batch [
      Css.backgroundAttachment Css.local
    ]


bg_scroll : Css.Style
bg_scroll =
    Css.batch [
      Css.backgroundAttachment Css.scroll
    ]


bg_transparent : Css.Style
bg_transparent =
    Css.batch [
      Css.backgroundColor Css.transparent
    ]


bg_current : Css.Style
bg_current =
    Css.batch [
      Css.backgroundColor Css.currentColor
    ]


bg_black : Css.Style
bg_black =
    Css.batch [
      Css.backgroundColor (Css.hex "#000")
    ]


bg_white : Css.Style
bg_white =
    Css.batch [
      Css.backgroundColor (Css.hex "#fff")
    ]


bg_gray_100 : Css.Style
bg_gray_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#f7fafc")
    ]


bg_gray_200 : Css.Style
bg_gray_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#edf2f7")
    ]


bg_gray_300 : Css.Style
bg_gray_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#e2e8f0")
    ]


bg_gray_400 : Css.Style
bg_gray_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#cbd5e0")
    ]


bg_gray_500 : Css.Style
bg_gray_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#a0aec0")
    ]


bg_gray_600 : Css.Style
bg_gray_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#718096")
    ]


bg_gray_700 : Css.Style
bg_gray_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#4a5568")
    ]


bg_gray_800 : Css.Style
bg_gray_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#2d3748")
    ]


bg_gray_900 : Css.Style
bg_gray_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#1a202c")
    ]


bg_red_100 : Css.Style
bg_red_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fff5f5")
    ]


bg_red_200 : Css.Style
bg_red_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fed7d7")
    ]


bg_red_300 : Css.Style
bg_red_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#feb2b2")
    ]


bg_red_400 : Css.Style
bg_red_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fc8181")
    ]


bg_red_500 : Css.Style
bg_red_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#f56565")
    ]


bg_red_600 : Css.Style
bg_red_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#e53e3e")
    ]


bg_red_700 : Css.Style
bg_red_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#c53030")
    ]


bg_red_800 : Css.Style
bg_red_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#9b2c2c")
    ]


bg_red_900 : Css.Style
bg_red_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#742a2a")
    ]


bg_orange_100 : Css.Style
bg_orange_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fffaf0")
    ]


bg_orange_200 : Css.Style
bg_orange_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#feebc8")
    ]


bg_orange_300 : Css.Style
bg_orange_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fbd38d")
    ]


bg_orange_400 : Css.Style
bg_orange_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#f6ad55")
    ]


bg_orange_500 : Css.Style
bg_orange_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#ed8936")
    ]


bg_orange_600 : Css.Style
bg_orange_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#dd6b20")
    ]


bg_orange_700 : Css.Style
bg_orange_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#c05621")
    ]


bg_orange_800 : Css.Style
bg_orange_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#9c4221")
    ]


bg_orange_900 : Css.Style
bg_orange_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#7b341e")
    ]


bg_yellow_100 : Css.Style
bg_yellow_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fffff0")
    ]


bg_yellow_200 : Css.Style
bg_yellow_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fefcbf")
    ]


bg_yellow_300 : Css.Style
bg_yellow_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#faf089")
    ]


bg_yellow_400 : Css.Style
bg_yellow_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#f6e05e")
    ]


bg_yellow_500 : Css.Style
bg_yellow_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#ecc94b")
    ]


bg_yellow_600 : Css.Style
bg_yellow_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#d69e2e")
    ]


bg_yellow_700 : Css.Style
bg_yellow_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#b7791f")
    ]


bg_yellow_800 : Css.Style
bg_yellow_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#975a16")
    ]


bg_yellow_900 : Css.Style
bg_yellow_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#744210")
    ]


bg_green_100 : Css.Style
bg_green_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#f0fff4")
    ]


bg_green_200 : Css.Style
bg_green_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#c6f6d5")
    ]


bg_green_300 : Css.Style
bg_green_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#9ae6b4")
    ]


bg_green_400 : Css.Style
bg_green_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#68d391")
    ]


bg_green_500 : Css.Style
bg_green_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#48bb78")
    ]


bg_green_600 : Css.Style
bg_green_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#38a169")
    ]


bg_green_700 : Css.Style
bg_green_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#2f855a")
    ]


bg_green_800 : Css.Style
bg_green_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#276749")
    ]


bg_green_900 : Css.Style
bg_green_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#22543d")
    ]


bg_teal_100 : Css.Style
bg_teal_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#e6fffa")
    ]


bg_teal_200 : Css.Style
bg_teal_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#b2f5ea")
    ]


bg_teal_300 : Css.Style
bg_teal_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#81e6d9")
    ]


bg_teal_400 : Css.Style
bg_teal_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#4fd1c5")
    ]


bg_teal_500 : Css.Style
bg_teal_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#38b2ac")
    ]


bg_teal_600 : Css.Style
bg_teal_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#319795")
    ]


bg_teal_700 : Css.Style
bg_teal_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#2c7a7b")
    ]


bg_teal_800 : Css.Style
bg_teal_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#285e61")
    ]


bg_teal_900 : Css.Style
bg_teal_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#234e52")
    ]


bg_blue_100 : Css.Style
bg_blue_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#ebf8ff")
    ]


bg_blue_200 : Css.Style
bg_blue_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#bee3f8")
    ]


bg_blue_300 : Css.Style
bg_blue_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#90cdf4")
    ]


bg_blue_400 : Css.Style
bg_blue_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#63b3ed")
    ]


bg_blue_500 : Css.Style
bg_blue_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#4299e1")
    ]


bg_blue_600 : Css.Style
bg_blue_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#3182ce")
    ]


bg_blue_700 : Css.Style
bg_blue_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#2b6cb0")
    ]


bg_blue_800 : Css.Style
bg_blue_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#2c5282")
    ]


bg_blue_900 : Css.Style
bg_blue_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#2a4365")
    ]


bg_indigo_100 : Css.Style
bg_indigo_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#ebf4ff")
    ]


bg_indigo_200 : Css.Style
bg_indigo_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#c3dafe")
    ]


bg_indigo_300 : Css.Style
bg_indigo_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#a3bffa")
    ]


bg_indigo_400 : Css.Style
bg_indigo_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#7f9cf5")
    ]


bg_indigo_500 : Css.Style
bg_indigo_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#667eea")
    ]


bg_indigo_600 : Css.Style
bg_indigo_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#5a67d8")
    ]


bg_indigo_700 : Css.Style
bg_indigo_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#4c51bf")
    ]


bg_indigo_800 : Css.Style
bg_indigo_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#434190")
    ]


bg_indigo_900 : Css.Style
bg_indigo_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#3c366b")
    ]


bg_purple_100 : Css.Style
bg_purple_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#faf5ff")
    ]


bg_purple_200 : Css.Style
bg_purple_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#e9d8fd")
    ]


bg_purple_300 : Css.Style
bg_purple_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#d6bcfa")
    ]


bg_purple_400 : Css.Style
bg_purple_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#b794f4")
    ]


bg_purple_500 : Css.Style
bg_purple_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#9f7aea")
    ]


bg_purple_600 : Css.Style
bg_purple_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#805ad5")
    ]


bg_purple_700 : Css.Style
bg_purple_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#6b46c1")
    ]


bg_purple_800 : Css.Style
bg_purple_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#553c9a")
    ]


bg_purple_900 : Css.Style
bg_purple_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#44337a")
    ]


bg_pink_100 : Css.Style
bg_pink_100 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fff5f7")
    ]


bg_pink_200 : Css.Style
bg_pink_200 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fed7e2")
    ]


bg_pink_300 : Css.Style
bg_pink_300 =
    Css.batch [
      Css.backgroundColor (Css.hex "#fbb6ce")
    ]


bg_pink_400 : Css.Style
bg_pink_400 =
    Css.batch [
      Css.backgroundColor (Css.hex "#f687b3")
    ]


bg_pink_500 : Css.Style
bg_pink_500 =
    Css.batch [
      Css.backgroundColor (Css.hex "#ed64a6")
    ]


bg_pink_600 : Css.Style
bg_pink_600 =
    Css.batch [
      Css.backgroundColor (Css.hex "#d53f8c")
    ]


bg_pink_700 : Css.Style
bg_pink_700 =
    Css.batch [
      Css.backgroundColor (Css.hex "#b83280")
    ]


bg_pink_800 : Css.Style
bg_pink_800 =
    Css.batch [
      Css.backgroundColor (Css.hex "#97266d")
    ]


bg_pink_900 : Css.Style
bg_pink_900 =
    Css.batch [
      Css.backgroundColor (Css.hex "#702459")
    ]


bg_bottom : Css.Style
bg_bottom =
    Css.batch [
      Css.property "background-position" "bottom"
    ]


bg_center : Css.Style
bg_center =
    Css.batch [
      Css.property "background-position" "center"
    ]


bg_left : Css.Style
bg_left =
    Css.batch [
      Css.property "background-position" "left"
    ]


bg_left_bottom : Css.Style
bg_left_bottom =
    Css.batch [
      Css.property "background-position" "left bottom"
    ]


bg_left_top : Css.Style
bg_left_top =
    Css.batch [
      Css.property "background-position" "left top"
    ]


bg_right : Css.Style
bg_right =
    Css.batch [
      Css.property "background-position" "right"
    ]


bg_right_bottom : Css.Style
bg_right_bottom =
    Css.batch [
      Css.property "background-position" "right bottom"
    ]


bg_right_top : Css.Style
bg_right_top =
    Css.batch [
      Css.property "background-position" "right top"
    ]


bg_top : Css.Style
bg_top =
    Css.batch [
      Css.property "background-position" "top"
    ]


bg_repeat : Css.Style
bg_repeat =
    Css.batch [
      Css.backgroundRepeat Css.repeat
    ]


bg_no_repeat : Css.Style
bg_no_repeat =
    Css.batch [
      Css.backgroundRepeat Css.noRepeat
    ]


bg_repeat_x : Css.Style
bg_repeat_x =
    Css.batch [
      Css.backgroundRepeat Css.repeatX
    ]


bg_repeat_y : Css.Style
bg_repeat_y =
    Css.batch [
      Css.backgroundRepeat Css.repeatY
    ]


bg_repeat_round : Css.Style
bg_repeat_round =
    Css.batch [
      Css.backgroundRepeat Css.round
    ]


bg_repeat_space : Css.Style
bg_repeat_space =
    Css.batch [
      Css.backgroundRepeat Css.space
    ]


bg_auto : Css.Style
bg_auto =
    Css.batch [
      Css.backgroundSize Css.auto
    ]


bg_cover : Css.Style
bg_cover =
    Css.batch [
      Css.backgroundSize Css.cover
    ]


bg_contain : Css.Style
bg_contain =
    Css.batch [
      Css.backgroundSize Css.contain
    ]


shadow_xs : Css.Style
shadow_xs =
    Css.batch [
      Css.property "box-shadow" "0 0 0 1px rgba(0, 0, 0, 0.05)"
    ]


shadow_sm : Css.Style
shadow_sm =
    Css.batch [
      Css.property "box-shadow" "0 1px 2px 0 rgba(0, 0, 0, 0.05)"
    ]


shadow : Css.Style
shadow =
    Css.batch [
      Css.property "box-shadow" "0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)"
    ]


shadow_md : Css.Style
shadow_md =
    Css.batch [
      Css.property "box-shadow" "0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
    ]


shadow_lg : Css.Style
shadow_lg =
    Css.batch [
      Css.property "box-shadow" "0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)"
    ]


shadow_xl : Css.Style
shadow_xl =
    Css.batch [
      Css.property "box-shadow" "0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04)"
    ]


shadow_2xl : Css.Style
shadow_2xl =
    Css.batch [
      Css.property "box-shadow" "0 25px 50px -12px rgba(0, 0, 0, 0.25)"
    ]


shadow_inner : Css.Style
shadow_inner =
    Css.batch [
      Css.property "box-shadow" "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)"
    ]


shadow_outline : Css.Style
shadow_outline =
    Css.batch [
      Css.property "box-shadow" "0 0 0 3px rgba(66, 153, 225, 0.5)"
    ]


shadow_none : Css.Style
shadow_none =
    Css.batch [
      Css.property "box-shadow" "none"
    ]


hover__bg_transparent : Css.Style
hover__bg_transparent =
    Css.batch [
      Css.hover [
        Css.backgroundColor Css.transparent
      ]
    ]


hover__bg_current : Css.Style
hover__bg_current =
    Css.batch [
      Css.hover [
        Css.backgroundColor Css.currentColor
      ]
    ]


hover__bg_black : Css.Style
hover__bg_black =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#000")
      ]
    ]


hover__bg_white : Css.Style
hover__bg_white =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fff")
      ]
    ]


hover__bg_gray_100 : Css.Style
hover__bg_gray_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#f7fafc")
      ]
    ]


hover__bg_gray_200 : Css.Style
hover__bg_gray_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#edf2f7")
      ]
    ]


hover__bg_gray_300 : Css.Style
hover__bg_gray_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#e2e8f0")
      ]
    ]


hover__bg_gray_400 : Css.Style
hover__bg_gray_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#cbd5e0")
      ]
    ]


hover__bg_gray_500 : Css.Style
hover__bg_gray_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#a0aec0")
      ]
    ]


hover__bg_gray_600 : Css.Style
hover__bg_gray_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#718096")
      ]
    ]


hover__bg_gray_700 : Css.Style
hover__bg_gray_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#4a5568")
      ]
    ]


hover__bg_gray_800 : Css.Style
hover__bg_gray_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#2d3748")
      ]
    ]


hover__bg_gray_900 : Css.Style
hover__bg_gray_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#1a202c")
      ]
    ]


hover__bg_red_100 : Css.Style
hover__bg_red_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fff5f5")
      ]
    ]


hover__bg_red_200 : Css.Style
hover__bg_red_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fed7d7")
      ]
    ]


hover__bg_red_300 : Css.Style
hover__bg_red_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#feb2b2")
      ]
    ]


hover__bg_red_400 : Css.Style
hover__bg_red_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fc8181")
      ]
    ]


hover__bg_red_500 : Css.Style
hover__bg_red_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#f56565")
      ]
    ]


hover__bg_red_600 : Css.Style
hover__bg_red_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#e53e3e")
      ]
    ]


hover__bg_red_700 : Css.Style
hover__bg_red_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#c53030")
      ]
    ]


hover__bg_red_800 : Css.Style
hover__bg_red_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#9b2c2c")
      ]
    ]


hover__bg_red_900 : Css.Style
hover__bg_red_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#742a2a")
      ]
    ]


hover__bg_orange_100 : Css.Style
hover__bg_orange_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fffaf0")
      ]
    ]


hover__bg_orange_200 : Css.Style
hover__bg_orange_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#feebc8")
      ]
    ]


hover__bg_orange_300 : Css.Style
hover__bg_orange_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fbd38d")
      ]
    ]


hover__bg_orange_400 : Css.Style
hover__bg_orange_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#f6ad55")
      ]
    ]


hover__bg_orange_500 : Css.Style
hover__bg_orange_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#ed8936")
      ]
    ]


hover__bg_orange_600 : Css.Style
hover__bg_orange_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#dd6b20")
      ]
    ]


hover__bg_orange_700 : Css.Style
hover__bg_orange_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#c05621")
      ]
    ]


hover__bg_orange_800 : Css.Style
hover__bg_orange_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#9c4221")
      ]
    ]


hover__bg_orange_900 : Css.Style
hover__bg_orange_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#7b341e")
      ]
    ]


hover__bg_yellow_100 : Css.Style
hover__bg_yellow_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fffff0")
      ]
    ]


hover__bg_yellow_200 : Css.Style
hover__bg_yellow_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fefcbf")
      ]
    ]


hover__bg_yellow_300 : Css.Style
hover__bg_yellow_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#faf089")
      ]
    ]


hover__bg_yellow_400 : Css.Style
hover__bg_yellow_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#f6e05e")
      ]
    ]


hover__bg_yellow_500 : Css.Style
hover__bg_yellow_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#ecc94b")
      ]
    ]


hover__bg_yellow_600 : Css.Style
hover__bg_yellow_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#d69e2e")
      ]
    ]


hover__bg_yellow_700 : Css.Style
hover__bg_yellow_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#b7791f")
      ]
    ]


hover__bg_yellow_800 : Css.Style
hover__bg_yellow_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#975a16")
      ]
    ]


hover__bg_yellow_900 : Css.Style
hover__bg_yellow_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#744210")
      ]
    ]


hover__bg_green_100 : Css.Style
hover__bg_green_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#f0fff4")
      ]
    ]


hover__bg_green_200 : Css.Style
hover__bg_green_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#c6f6d5")
      ]
    ]


hover__bg_green_300 : Css.Style
hover__bg_green_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#9ae6b4")
      ]
    ]


hover__bg_green_400 : Css.Style
hover__bg_green_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#68d391")
      ]
    ]


hover__bg_green_500 : Css.Style
hover__bg_green_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#48bb78")
      ]
    ]


hover__bg_green_600 : Css.Style
hover__bg_green_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#38a169")
      ]
    ]


hover__bg_green_700 : Css.Style
hover__bg_green_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#2f855a")
      ]
    ]


hover__bg_green_800 : Css.Style
hover__bg_green_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#276749")
      ]
    ]


hover__bg_green_900 : Css.Style
hover__bg_green_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#22543d")
      ]
    ]


hover__bg_teal_100 : Css.Style
hover__bg_teal_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#e6fffa")
      ]
    ]


hover__bg_teal_200 : Css.Style
hover__bg_teal_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#b2f5ea")
      ]
    ]


hover__bg_teal_300 : Css.Style
hover__bg_teal_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#81e6d9")
      ]
    ]


hover__bg_teal_400 : Css.Style
hover__bg_teal_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#4fd1c5")
      ]
    ]


hover__bg_teal_500 : Css.Style
hover__bg_teal_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#38b2ac")
      ]
    ]


hover__bg_teal_600 : Css.Style
hover__bg_teal_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#319795")
      ]
    ]


hover__bg_teal_700 : Css.Style
hover__bg_teal_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#2c7a7b")
      ]
    ]


hover__bg_teal_800 : Css.Style
hover__bg_teal_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#285e61")
      ]
    ]


hover__bg_teal_900 : Css.Style
hover__bg_teal_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#234e52")
      ]
    ]


hover__bg_blue_100 : Css.Style
hover__bg_blue_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#ebf8ff")
      ]
    ]


hover__bg_blue_200 : Css.Style
hover__bg_blue_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#bee3f8")
      ]
    ]


hover__bg_blue_300 : Css.Style
hover__bg_blue_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#90cdf4")
      ]
    ]


hover__bg_blue_400 : Css.Style
hover__bg_blue_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#63b3ed")
      ]
    ]


hover__bg_blue_500 : Css.Style
hover__bg_blue_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#4299e1")
      ]
    ]


hover__bg_blue_600 : Css.Style
hover__bg_blue_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#3182ce")
      ]
    ]


hover__bg_blue_700 : Css.Style
hover__bg_blue_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#2b6cb0")
      ]
    ]


hover__bg_blue_800 : Css.Style
hover__bg_blue_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#2c5282")
      ]
    ]


hover__bg_blue_900 : Css.Style
hover__bg_blue_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#2a4365")
      ]
    ]


hover__bg_indigo_100 : Css.Style
hover__bg_indigo_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#ebf4ff")
      ]
    ]


hover__bg_indigo_200 : Css.Style
hover__bg_indigo_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#c3dafe")
      ]
    ]


hover__bg_indigo_300 : Css.Style
hover__bg_indigo_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#a3bffa")
      ]
    ]


hover__bg_indigo_400 : Css.Style
hover__bg_indigo_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#7f9cf5")
      ]
    ]


hover__bg_indigo_500 : Css.Style
hover__bg_indigo_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#667eea")
      ]
    ]


hover__bg_indigo_600 : Css.Style
hover__bg_indigo_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#5a67d8")
      ]
    ]


hover__bg_indigo_700 : Css.Style
hover__bg_indigo_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#4c51bf")
      ]
    ]


hover__bg_indigo_800 : Css.Style
hover__bg_indigo_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#434190")
      ]
    ]


hover__bg_indigo_900 : Css.Style
hover__bg_indigo_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#3c366b")
      ]
    ]


hover__bg_purple_100 : Css.Style
hover__bg_purple_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#faf5ff")
      ]
    ]


hover__bg_purple_200 : Css.Style
hover__bg_purple_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#e9d8fd")
      ]
    ]


hover__bg_purple_300 : Css.Style
hover__bg_purple_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#d6bcfa")
      ]
    ]


hover__bg_purple_400 : Css.Style
hover__bg_purple_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#b794f4")
      ]
    ]


hover__bg_purple_500 : Css.Style
hover__bg_purple_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#9f7aea")
      ]
    ]


hover__bg_purple_600 : Css.Style
hover__bg_purple_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#805ad5")
      ]
    ]


hover__bg_purple_700 : Css.Style
hover__bg_purple_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#6b46c1")
      ]
    ]


hover__bg_purple_800 : Css.Style
hover__bg_purple_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#553c9a")
      ]
    ]


hover__bg_purple_900 : Css.Style
hover__bg_purple_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#44337a")
      ]
    ]


hover__bg_pink_100 : Css.Style
hover__bg_pink_100 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fff5f7")
      ]
    ]


hover__bg_pink_200 : Css.Style
hover__bg_pink_200 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fed7e2")
      ]
    ]


hover__bg_pink_300 : Css.Style
hover__bg_pink_300 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#fbb6ce")
      ]
    ]


hover__bg_pink_400 : Css.Style
hover__bg_pink_400 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#f687b3")
      ]
    ]


hover__bg_pink_500 : Css.Style
hover__bg_pink_500 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#ed64a6")
      ]
    ]


hover__bg_pink_600 : Css.Style
hover__bg_pink_600 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#d53f8c")
      ]
    ]


hover__bg_pink_700 : Css.Style
hover__bg_pink_700 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#b83280")
      ]
    ]


hover__bg_pink_800 : Css.Style
hover__bg_pink_800 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#97266d")
      ]
    ]


hover__bg_pink_900 : Css.Style
hover__bg_pink_900 =
    Css.batch [
      Css.hover [
        Css.backgroundColor (Css.hex "#702459")
      ]
    ]


hover__border_transparent : Css.Style
hover__border_transparent =
    Css.batch [
      Css.hover [
        Css.borderColor Css.transparent
      ]
    ]


hover__border_current : Css.Style
hover__border_current =
    Css.batch [
      Css.hover [
        Css.borderColor Css.currentColor
      ]
    ]


hover__border_black : Css.Style
hover__border_black =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#000")
      ]
    ]


hover__border_white : Css.Style
hover__border_white =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fff")
      ]
    ]


hover__border_gray_100 : Css.Style
hover__border_gray_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#f7fafc")
      ]
    ]


hover__border_gray_200 : Css.Style
hover__border_gray_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#edf2f7")
      ]
    ]


hover__border_gray_300 : Css.Style
hover__border_gray_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#e2e8f0")
      ]
    ]


hover__border_gray_400 : Css.Style
hover__border_gray_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#cbd5e0")
      ]
    ]


hover__border_gray_500 : Css.Style
hover__border_gray_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#a0aec0")
      ]
    ]


hover__border_gray_600 : Css.Style
hover__border_gray_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#718096")
      ]
    ]


hover__border_gray_700 : Css.Style
hover__border_gray_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#4a5568")
      ]
    ]


hover__border_gray_800 : Css.Style
hover__border_gray_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#2d3748")
      ]
    ]


hover__border_gray_900 : Css.Style
hover__border_gray_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#1a202c")
      ]
    ]


hover__border_red_100 : Css.Style
hover__border_red_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fff5f5")
      ]
    ]


hover__border_red_200 : Css.Style
hover__border_red_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fed7d7")
      ]
    ]


hover__border_red_300 : Css.Style
hover__border_red_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#feb2b2")
      ]
    ]


hover__border_red_400 : Css.Style
hover__border_red_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fc8181")
      ]
    ]


hover__border_red_500 : Css.Style
hover__border_red_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#f56565")
      ]
    ]


hover__border_red_600 : Css.Style
hover__border_red_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#e53e3e")
      ]
    ]


hover__border_red_700 : Css.Style
hover__border_red_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#c53030")
      ]
    ]


hover__border_red_800 : Css.Style
hover__border_red_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#9b2c2c")
      ]
    ]


hover__border_red_900 : Css.Style
hover__border_red_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#742a2a")
      ]
    ]


hover__border_orange_100 : Css.Style
hover__border_orange_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fffaf0")
      ]
    ]


hover__border_orange_200 : Css.Style
hover__border_orange_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#feebc8")
      ]
    ]


hover__border_orange_300 : Css.Style
hover__border_orange_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fbd38d")
      ]
    ]


hover__border_orange_400 : Css.Style
hover__border_orange_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#f6ad55")
      ]
    ]


hover__border_orange_500 : Css.Style
hover__border_orange_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#ed8936")
      ]
    ]


hover__border_orange_600 : Css.Style
hover__border_orange_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#dd6b20")
      ]
    ]


hover__border_orange_700 : Css.Style
hover__border_orange_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#c05621")
      ]
    ]


hover__border_orange_800 : Css.Style
hover__border_orange_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#9c4221")
      ]
    ]


hover__border_orange_900 : Css.Style
hover__border_orange_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#7b341e")
      ]
    ]


hover__border_yellow_100 : Css.Style
hover__border_yellow_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fffff0")
      ]
    ]


hover__border_yellow_200 : Css.Style
hover__border_yellow_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fefcbf")
      ]
    ]


hover__border_yellow_300 : Css.Style
hover__border_yellow_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#faf089")
      ]
    ]


hover__border_yellow_400 : Css.Style
hover__border_yellow_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#f6e05e")
      ]
    ]


hover__border_yellow_500 : Css.Style
hover__border_yellow_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#ecc94b")
      ]
    ]


hover__border_yellow_600 : Css.Style
hover__border_yellow_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#d69e2e")
      ]
    ]


hover__border_yellow_700 : Css.Style
hover__border_yellow_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#b7791f")
      ]
    ]


hover__border_yellow_800 : Css.Style
hover__border_yellow_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#975a16")
      ]
    ]


hover__border_yellow_900 : Css.Style
hover__border_yellow_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#744210")
      ]
    ]


hover__border_green_100 : Css.Style
hover__border_green_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#f0fff4")
      ]
    ]


hover__border_green_200 : Css.Style
hover__border_green_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#c6f6d5")
      ]
    ]


hover__border_green_300 : Css.Style
hover__border_green_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#9ae6b4")
      ]
    ]


hover__border_green_400 : Css.Style
hover__border_green_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#68d391")
      ]
    ]


hover__border_green_500 : Css.Style
hover__border_green_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#48bb78")
      ]
    ]


hover__border_green_600 : Css.Style
hover__border_green_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#38a169")
      ]
    ]


hover__border_green_700 : Css.Style
hover__border_green_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#2f855a")
      ]
    ]


hover__border_green_800 : Css.Style
hover__border_green_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#276749")
      ]
    ]


hover__border_green_900 : Css.Style
hover__border_green_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#22543d")
      ]
    ]


hover__border_teal_100 : Css.Style
hover__border_teal_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#e6fffa")
      ]
    ]


hover__border_teal_200 : Css.Style
hover__border_teal_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#b2f5ea")
      ]
    ]


hover__border_teal_300 : Css.Style
hover__border_teal_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#81e6d9")
      ]
    ]


hover__border_teal_400 : Css.Style
hover__border_teal_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#4fd1c5")
      ]
    ]


hover__border_teal_500 : Css.Style
hover__border_teal_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#38b2ac")
      ]
    ]


hover__border_teal_600 : Css.Style
hover__border_teal_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#319795")
      ]
    ]


hover__border_teal_700 : Css.Style
hover__border_teal_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#2c7a7b")
      ]
    ]


hover__border_teal_800 : Css.Style
hover__border_teal_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#285e61")
      ]
    ]


hover__border_teal_900 : Css.Style
hover__border_teal_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#234e52")
      ]
    ]


hover__border_blue_100 : Css.Style
hover__border_blue_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#ebf8ff")
      ]
    ]


hover__border_blue_200 : Css.Style
hover__border_blue_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#bee3f8")
      ]
    ]


hover__border_blue_300 : Css.Style
hover__border_blue_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#90cdf4")
      ]
    ]


hover__border_blue_400 : Css.Style
hover__border_blue_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#63b3ed")
      ]
    ]


hover__border_blue_500 : Css.Style
hover__border_blue_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#4299e1")
      ]
    ]


hover__border_blue_600 : Css.Style
hover__border_blue_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#3182ce")
      ]
    ]


hover__border_blue_700 : Css.Style
hover__border_blue_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#2b6cb0")
      ]
    ]


hover__border_blue_800 : Css.Style
hover__border_blue_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#2c5282")
      ]
    ]


hover__border_blue_900 : Css.Style
hover__border_blue_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#2a4365")
      ]
    ]


hover__border_indigo_100 : Css.Style
hover__border_indigo_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#ebf4ff")
      ]
    ]


hover__border_indigo_200 : Css.Style
hover__border_indigo_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#c3dafe")
      ]
    ]


hover__border_indigo_300 : Css.Style
hover__border_indigo_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#a3bffa")
      ]
    ]


hover__border_indigo_400 : Css.Style
hover__border_indigo_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#7f9cf5")
      ]
    ]


hover__border_indigo_500 : Css.Style
hover__border_indigo_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#667eea")
      ]
    ]


hover__border_indigo_600 : Css.Style
hover__border_indigo_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#5a67d8")
      ]
    ]


hover__border_indigo_700 : Css.Style
hover__border_indigo_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#4c51bf")
      ]
    ]


hover__border_indigo_800 : Css.Style
hover__border_indigo_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#434190")
      ]
    ]


hover__border_indigo_900 : Css.Style
hover__border_indigo_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#3c366b")
      ]
    ]


hover__border_purple_100 : Css.Style
hover__border_purple_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#faf5ff")
      ]
    ]


hover__border_purple_200 : Css.Style
hover__border_purple_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#e9d8fd")
      ]
    ]


hover__border_purple_300 : Css.Style
hover__border_purple_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#d6bcfa")
      ]
    ]


hover__border_purple_400 : Css.Style
hover__border_purple_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#b794f4")
      ]
    ]


hover__border_purple_500 : Css.Style
hover__border_purple_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#9f7aea")
      ]
    ]


hover__border_purple_600 : Css.Style
hover__border_purple_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#805ad5")
      ]
    ]


hover__border_purple_700 : Css.Style
hover__border_purple_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#6b46c1")
      ]
    ]


hover__border_purple_800 : Css.Style
hover__border_purple_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#553c9a")
      ]
    ]


hover__border_purple_900 : Css.Style
hover__border_purple_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#44337a")
      ]
    ]


hover__border_pink_100 : Css.Style
hover__border_pink_100 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fff5f7")
      ]
    ]


hover__border_pink_200 : Css.Style
hover__border_pink_200 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fed7e2")
      ]
    ]


hover__border_pink_300 : Css.Style
hover__border_pink_300 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#fbb6ce")
      ]
    ]


hover__border_pink_400 : Css.Style
hover__border_pink_400 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#f687b3")
      ]
    ]


hover__border_pink_500 : Css.Style
hover__border_pink_500 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#ed64a6")
      ]
    ]


hover__border_pink_600 : Css.Style
hover__border_pink_600 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#d53f8c")
      ]
    ]


hover__border_pink_700 : Css.Style
hover__border_pink_700 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#b83280")
      ]
    ]


hover__border_pink_800 : Css.Style
hover__border_pink_800 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#97266d")
      ]
    ]


hover__border_pink_900 : Css.Style
hover__border_pink_900 =
    Css.batch [
      Css.hover [
        Css.borderColor (Css.hex "#702459")
      ]
    ]


hover__font_hairline : Css.Style
hover__font_hairline =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 100)
      ]
    ]


hover__font_thin : Css.Style
hover__font_thin =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 200)
      ]
    ]


hover__font_light : Css.Style
hover__font_light =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 300)
      ]
    ]


hover__font_normal : Css.Style
hover__font_normal =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 400)
      ]
    ]


hover__font_medium : Css.Style
hover__font_medium =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 500)
      ]
    ]


hover__font_semibold : Css.Style
hover__font_semibold =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 600)
      ]
    ]


hover__font_bold : Css.Style
hover__font_bold =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 700)
      ]
    ]


hover__font_extrabold : Css.Style
hover__font_extrabold =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 800)
      ]
    ]


hover__font_black : Css.Style
hover__font_black =
    Css.batch [
      Css.hover [
        Css.fontWeight (Css.int 900)
      ]
    ]


hover__opacity_0 : Css.Style
hover__opacity_0 =
    Css.batch [
      Css.hover [
        Css.opacity (Css.int 0)
      ]
    ]


hover__opacity_25 : Css.Style
hover__opacity_25 =
    Css.batch [
      Css.hover [
        Css.opacity (Css.num 0.25)
      ]
    ]


hover__opacity_50 : Css.Style
hover__opacity_50 =
    Css.batch [
      Css.hover [
        Css.opacity (Css.num 0.5)
      ]
    ]


hover__opacity_75 : Css.Style
hover__opacity_75 =
    Css.batch [
      Css.hover [
        Css.opacity (Css.num 0.75)
      ]
    ]


hover__opacity_100 : Css.Style
hover__opacity_100 =
    Css.batch [
      Css.hover [
        Css.opacity (Css.int 1)
      ]
    ]


hover__shadow_xs : Css.Style
hover__shadow_xs =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 0 0 1px rgba(0, 0, 0, 0.05)"
      ]
    ]


hover__shadow_sm : Css.Style
hover__shadow_sm =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 1px 2px 0 rgba(0, 0, 0, 0.05)"
      ]
    ]


hover__shadow : Css.Style
hover__shadow =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)"
      ]
    ]


hover__shadow_md : Css.Style
hover__shadow_md =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
      ]
    ]


hover__shadow_lg : Css.Style
hover__shadow_lg =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)"
      ]
    ]


hover__shadow_xl : Css.Style
hover__shadow_xl =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04)"
      ]
    ]


hover__shadow_2xl : Css.Style
hover__shadow_2xl =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 25px 50px -12px rgba(0, 0, 0, 0.25)"
      ]
    ]


hover__shadow_inner : Css.Style
hover__shadow_inner =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)"
      ]
    ]


hover__shadow_outline : Css.Style
hover__shadow_outline =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "0 0 0 3px rgba(66, 153, 225, 0.5)"
      ]
    ]


hover__shadow_none : Css.Style
hover__shadow_none =
    Css.batch [
      Css.hover [
        Css.property "box-shadow" "none"
      ]
    ]


hover__text_transparent : Css.Style
hover__text_transparent =
    Css.batch [
      Css.hover [
        Css.color Css.transparent
      ]
    ]


hover__text_current : Css.Style
hover__text_current =
    Css.batch [
      Css.hover [
        Css.color Css.currentColor
      ]
    ]


hover__text_black : Css.Style
hover__text_black =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#000")
      ]
    ]


hover__text_white : Css.Style
hover__text_white =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fff")
      ]
    ]


hover__text_gray_100 : Css.Style
hover__text_gray_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#f7fafc")
      ]
    ]


hover__text_gray_200 : Css.Style
hover__text_gray_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#edf2f7")
      ]
    ]


hover__text_gray_300 : Css.Style
hover__text_gray_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#e2e8f0")
      ]
    ]


hover__text_gray_400 : Css.Style
hover__text_gray_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#cbd5e0")
      ]
    ]


hover__text_gray_500 : Css.Style
hover__text_gray_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#a0aec0")
      ]
    ]


hover__text_gray_600 : Css.Style
hover__text_gray_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#718096")
      ]
    ]


hover__text_gray_700 : Css.Style
hover__text_gray_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#4a5568")
      ]
    ]


hover__text_gray_800 : Css.Style
hover__text_gray_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#2d3748")
      ]
    ]


hover__text_gray_900 : Css.Style
hover__text_gray_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#1a202c")
      ]
    ]


hover__text_red_100 : Css.Style
hover__text_red_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fff5f5")
      ]
    ]


hover__text_red_200 : Css.Style
hover__text_red_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fed7d7")
      ]
    ]


hover__text_red_300 : Css.Style
hover__text_red_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#feb2b2")
      ]
    ]


hover__text_red_400 : Css.Style
hover__text_red_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fc8181")
      ]
    ]


hover__text_red_500 : Css.Style
hover__text_red_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#f56565")
      ]
    ]


hover__text_red_600 : Css.Style
hover__text_red_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#e53e3e")
      ]
    ]


hover__text_red_700 : Css.Style
hover__text_red_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#c53030")
      ]
    ]


hover__text_red_800 : Css.Style
hover__text_red_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#9b2c2c")
      ]
    ]


hover__text_red_900 : Css.Style
hover__text_red_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#742a2a")
      ]
    ]


hover__text_orange_100 : Css.Style
hover__text_orange_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fffaf0")
      ]
    ]


hover__text_orange_200 : Css.Style
hover__text_orange_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#feebc8")
      ]
    ]


hover__text_orange_300 : Css.Style
hover__text_orange_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fbd38d")
      ]
    ]


hover__text_orange_400 : Css.Style
hover__text_orange_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#f6ad55")
      ]
    ]


hover__text_orange_500 : Css.Style
hover__text_orange_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#ed8936")
      ]
    ]


hover__text_orange_600 : Css.Style
hover__text_orange_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#dd6b20")
      ]
    ]


hover__text_orange_700 : Css.Style
hover__text_orange_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#c05621")
      ]
    ]


hover__text_orange_800 : Css.Style
hover__text_orange_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#9c4221")
      ]
    ]


hover__text_orange_900 : Css.Style
hover__text_orange_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#7b341e")
      ]
    ]


hover__text_yellow_100 : Css.Style
hover__text_yellow_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fffff0")
      ]
    ]


hover__text_yellow_200 : Css.Style
hover__text_yellow_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fefcbf")
      ]
    ]


hover__text_yellow_300 : Css.Style
hover__text_yellow_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#faf089")
      ]
    ]


hover__text_yellow_400 : Css.Style
hover__text_yellow_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#f6e05e")
      ]
    ]


hover__text_yellow_500 : Css.Style
hover__text_yellow_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#ecc94b")
      ]
    ]


hover__text_yellow_600 : Css.Style
hover__text_yellow_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#d69e2e")
      ]
    ]


hover__text_yellow_700 : Css.Style
hover__text_yellow_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#b7791f")
      ]
    ]


hover__text_yellow_800 : Css.Style
hover__text_yellow_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#975a16")
      ]
    ]


hover__text_yellow_900 : Css.Style
hover__text_yellow_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#744210")
      ]
    ]


hover__text_green_100 : Css.Style
hover__text_green_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#f0fff4")
      ]
    ]


hover__text_green_200 : Css.Style
hover__text_green_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#c6f6d5")
      ]
    ]


hover__text_green_300 : Css.Style
hover__text_green_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#9ae6b4")
      ]
    ]


hover__text_green_400 : Css.Style
hover__text_green_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#68d391")
      ]
    ]


hover__text_green_500 : Css.Style
hover__text_green_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#48bb78")
      ]
    ]


hover__text_green_600 : Css.Style
hover__text_green_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#38a169")
      ]
    ]


hover__text_green_700 : Css.Style
hover__text_green_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#2f855a")
      ]
    ]


hover__text_green_800 : Css.Style
hover__text_green_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#276749")
      ]
    ]


hover__text_green_900 : Css.Style
hover__text_green_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#22543d")
      ]
    ]


hover__text_teal_100 : Css.Style
hover__text_teal_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#e6fffa")
      ]
    ]


hover__text_teal_200 : Css.Style
hover__text_teal_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#b2f5ea")
      ]
    ]


hover__text_teal_300 : Css.Style
hover__text_teal_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#81e6d9")
      ]
    ]


hover__text_teal_400 : Css.Style
hover__text_teal_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#4fd1c5")
      ]
    ]


hover__text_teal_500 : Css.Style
hover__text_teal_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#38b2ac")
      ]
    ]


hover__text_teal_600 : Css.Style
hover__text_teal_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#319795")
      ]
    ]


hover__text_teal_700 : Css.Style
hover__text_teal_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#2c7a7b")
      ]
    ]


hover__text_teal_800 : Css.Style
hover__text_teal_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#285e61")
      ]
    ]


hover__text_teal_900 : Css.Style
hover__text_teal_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#234e52")
      ]
    ]


hover__text_blue_100 : Css.Style
hover__text_blue_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#ebf8ff")
      ]
    ]


hover__text_blue_200 : Css.Style
hover__text_blue_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#bee3f8")
      ]
    ]


hover__text_blue_300 : Css.Style
hover__text_blue_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#90cdf4")
      ]
    ]


hover__text_blue_400 : Css.Style
hover__text_blue_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#63b3ed")
      ]
    ]


hover__text_blue_500 : Css.Style
hover__text_blue_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#4299e1")
      ]
    ]


hover__text_blue_600 : Css.Style
hover__text_blue_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#3182ce")
      ]
    ]


hover__text_blue_700 : Css.Style
hover__text_blue_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#2b6cb0")
      ]
    ]


hover__text_blue_800 : Css.Style
hover__text_blue_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#2c5282")
      ]
    ]


hover__text_blue_900 : Css.Style
hover__text_blue_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#2a4365")
      ]
    ]


hover__text_indigo_100 : Css.Style
hover__text_indigo_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#ebf4ff")
      ]
    ]


hover__text_indigo_200 : Css.Style
hover__text_indigo_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#c3dafe")
      ]
    ]


hover__text_indigo_300 : Css.Style
hover__text_indigo_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#a3bffa")
      ]
    ]


hover__text_indigo_400 : Css.Style
hover__text_indigo_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#7f9cf5")
      ]
    ]


hover__text_indigo_500 : Css.Style
hover__text_indigo_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#667eea")
      ]
    ]


hover__text_indigo_600 : Css.Style
hover__text_indigo_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#5a67d8")
      ]
    ]


hover__text_indigo_700 : Css.Style
hover__text_indigo_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#4c51bf")
      ]
    ]


hover__text_indigo_800 : Css.Style
hover__text_indigo_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#434190")
      ]
    ]


hover__text_indigo_900 : Css.Style
hover__text_indigo_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#3c366b")
      ]
    ]


hover__text_purple_100 : Css.Style
hover__text_purple_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#faf5ff")
      ]
    ]


hover__text_purple_200 : Css.Style
hover__text_purple_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#e9d8fd")
      ]
    ]


hover__text_purple_300 : Css.Style
hover__text_purple_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#d6bcfa")
      ]
    ]


hover__text_purple_400 : Css.Style
hover__text_purple_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#b794f4")
      ]
    ]


hover__text_purple_500 : Css.Style
hover__text_purple_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#9f7aea")
      ]
    ]


hover__text_purple_600 : Css.Style
hover__text_purple_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#805ad5")
      ]
    ]


hover__text_purple_700 : Css.Style
hover__text_purple_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#6b46c1")
      ]
    ]


hover__text_purple_800 : Css.Style
hover__text_purple_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#553c9a")
      ]
    ]


hover__text_purple_900 : Css.Style
hover__text_purple_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#44337a")
      ]
    ]


hover__text_pink_100 : Css.Style
hover__text_pink_100 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fff5f7")
      ]
    ]


hover__text_pink_200 : Css.Style
hover__text_pink_200 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fed7e2")
      ]
    ]


hover__text_pink_300 : Css.Style
hover__text_pink_300 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#fbb6ce")
      ]
    ]


hover__text_pink_400 : Css.Style
hover__text_pink_400 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#f687b3")
      ]
    ]


hover__text_pink_500 : Css.Style
hover__text_pink_500 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#ed64a6")
      ]
    ]


hover__text_pink_600 : Css.Style
hover__text_pink_600 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#d53f8c")
      ]
    ]


hover__text_pink_700 : Css.Style
hover__text_pink_700 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#b83280")
      ]
    ]


hover__text_pink_800 : Css.Style
hover__text_pink_800 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#97266d")
      ]
    ]


hover__text_pink_900 : Css.Style
hover__text_pink_900 =
    Css.batch [
      Css.hover [
        Css.color (Css.hex "#702459")
      ]
    ]


hover__underline : Css.Style
hover__underline =
    Css.batch [
      Css.hover [
        Css.textDecoration Css.underline
      ]
    ]


hover__line_through : Css.Style
hover__line_through =
    Css.batch [
      Css.hover [
        Css.textDecoration Css.lineThrough
      ]
    ]


hover__no_underline : Css.Style
hover__no_underline =
    Css.batch [
      Css.hover [
        Css.textDecoration Css.none
      ]
    ]


lg__ml_0 : Css.Style
lg__ml_0 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.px 0)
      ]
    ]


lg__ml_1 : Css.Style
lg__ml_1 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 0.25)
      ]
    ]


lg__ml_2 : Css.Style
lg__ml_2 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 0.5)
      ]
    ]


lg__ml_3 : Css.Style
lg__ml_3 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 0.75)
      ]
    ]


lg__ml_4 : Css.Style
lg__ml_4 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 1)
      ]
    ]


lg__ml_5 : Css.Style
lg__ml_5 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 1.25)
      ]
    ]


lg__ml_6 : Css.Style
lg__ml_6 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 1.5)
      ]
    ]


lg__ml_8 : Css.Style
lg__ml_8 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 2)
      ]
    ]


lg__ml_10 : Css.Style
lg__ml_10 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 2.5)
      ]
    ]


lg__ml_12 : Css.Style
lg__ml_12 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 3)
      ]
    ]


lg__ml_16 : Css.Style
lg__ml_16 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 4)
      ]
    ]


lg__ml_20 : Css.Style
lg__ml_20 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 5)
      ]
    ]


lg__ml_24 : Css.Style
lg__ml_24 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 6)
      ]
    ]


lg__ml_32 : Css.Style
lg__ml_32 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 8)
      ]
    ]


lg__ml_40 : Css.Style
lg__ml_40 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 10)
      ]
    ]


lg__ml_48 : Css.Style
lg__ml_48 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 12)
      ]
    ]


lg__ml_56 : Css.Style
lg__ml_56 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 14)
      ]
    ]


lg__ml_64 : Css.Style
lg__ml_64 =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.rem 16)
      ]
    ]


lg__ml_auto : Css.Style
lg__ml_auto =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft Css.auto
      ]
    ]


lg__ml_px : Css.Style
lg__ml_px =
    Css.batch [
      Css.Media.withMediaQuery ["(min-width: 1024px)"] [
        Css.marginLeft (Css.px 1)
      ]
    ]
