module TW.Utilities exposing
    ( absolute
    , align_baseline
    , align_bottom
    , align_middle
    , align_text_bottom
    , align_text_top
    , align_top
    , antialiased
    , appearance_none
    , bg_auto
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
    , block
    , border
    , border_0
    , border_2
    , border_4
    , border_8
    , border_b
    , border_b_0
    , border_b_2
    , border_b_4
    , border_b_8
    , border_black
    , border_blue_100
    , border_blue_200
    , border_blue_300
    , border_blue_400
    , border_blue_500
    , border_blue_600
    , border_blue_700
    , border_blue_800
    , border_blue_900
    , border_collapse
    , border_current
    , border_dashed
    , border_dotted
    , border_double
    , border_gray_100
    , border_gray_200
    , border_gray_300
    , border_gray_400
    , border_gray_500
    , border_gray_600
    , border_gray_700
    , border_gray_800
    , border_gray_900
    , border_green_100
    , border_green_200
    , border_green_300
    , border_green_400
    , border_green_500
    , border_green_600
    , border_green_700
    , border_green_800
    , border_green_900
    , border_indigo_100
    , border_indigo_200
    , border_indigo_300
    , border_indigo_400
    , border_indigo_500
    , border_indigo_600
    , border_indigo_700
    , border_indigo_800
    , border_indigo_900
    , border_l
    , border_l_0
    , border_l_2
    , border_l_4
    , border_l_8
    , border_none
    , border_orange_100
    , border_orange_200
    , border_orange_300
    , border_orange_400
    , border_orange_500
    , border_orange_600
    , border_orange_700
    , border_orange_800
    , border_orange_900
    , border_pink_100
    , border_pink_200
    , border_pink_300
    , border_pink_400
    , border_pink_500
    , border_pink_600
    , border_pink_700
    , border_pink_800
    , border_pink_900
    , border_purple_100
    , border_purple_200
    , border_purple_300
    , border_purple_400
    , border_purple_500
    , border_purple_600
    , border_purple_700
    , border_purple_800
    , border_purple_900
    , border_r
    , border_r_0
    , border_r_2
    , border_r_4
    , border_r_8
    , border_red_100
    , border_red_200
    , border_red_300
    , border_red_400
    , border_red_500
    , border_red_600
    , border_red_700
    , border_red_800
    , border_red_900
    , border_separate
    , border_solid
    , border_t
    , border_t_0
    , border_t_2
    , border_t_4
    , border_t_8
    , border_teal_100
    , border_teal_200
    , border_teal_300
    , border_teal_400
    , border_teal_500
    , border_teal_600
    , border_teal_700
    , border_teal_800
    , border_teal_900
    , border_transparent
    , border_white
    , border_yellow_100
    , border_yellow_200
    , border_yellow_300
    , border_yellow_400
    , border_yellow_500
    , border_yellow_600
    , border_yellow_700
    , border_yellow_800
    , border_yellow_900
    , bottom_0
    , bottom_auto
    , box_border
    , box_content
    , break_all
    , break_normal
    , break_words
    , capitalize
    , clear_both
    , clear_left
    , clear_none
    , clear_right
    , clearfix
    , container
    , content_around
    , content_between
    , content_center
    , content_end
    , content_start
    , cursor_auto
    , cursor_default
    , cursor_move
    , cursor_not_allowed
    , cursor_pointer
    , cursor_text
    , cursor_wait
    , divide_black
    , divide_blue_100
    , divide_blue_200
    , divide_blue_300
    , divide_blue_400
    , divide_blue_500
    , divide_blue_600
    , divide_blue_700
    , divide_blue_800
    , divide_blue_900
    , divide_current
    , divide_gray_100
    , divide_gray_200
    , divide_gray_300
    , divide_gray_400
    , divide_gray_500
    , divide_gray_600
    , divide_gray_700
    , divide_gray_800
    , divide_gray_900
    , divide_green_100
    , divide_green_200
    , divide_green_300
    , divide_green_400
    , divide_green_500
    , divide_green_600
    , divide_green_700
    , divide_green_800
    , divide_green_900
    , divide_indigo_100
    , divide_indigo_200
    , divide_indigo_300
    , divide_indigo_400
    , divide_indigo_500
    , divide_indigo_600
    , divide_indigo_700
    , divide_indigo_800
    , divide_indigo_900
    , divide_orange_100
    , divide_orange_200
    , divide_orange_300
    , divide_orange_400
    , divide_orange_500
    , divide_orange_600
    , divide_orange_700
    , divide_orange_800
    , divide_orange_900
    , divide_pink_100
    , divide_pink_200
    , divide_pink_300
    , divide_pink_400
    , divide_pink_500
    , divide_pink_600
    , divide_pink_700
    , divide_pink_800
    , divide_pink_900
    , divide_purple_100
    , divide_purple_200
    , divide_purple_300
    , divide_purple_400
    , divide_purple_500
    , divide_purple_600
    , divide_purple_700
    , divide_purple_800
    , divide_purple_900
    , divide_red_100
    , divide_red_200
    , divide_red_300
    , divide_red_400
    , divide_red_500
    , divide_red_600
    , divide_red_700
    , divide_red_800
    , divide_red_900
    , divide_teal_100
    , divide_teal_200
    , divide_teal_300
    , divide_teal_400
    , divide_teal_500
    , divide_teal_600
    , divide_teal_700
    , divide_teal_800
    , divide_teal_900
    , divide_transparent
    , divide_white
    , divide_yellow_100
    , divide_yellow_200
    , divide_yellow_300
    , divide_yellow_400
    , divide_yellow_500
    , divide_yellow_600
    , divide_yellow_700
    , divide_yellow_800
    , divide_yellow_900
    , fill_current
    , fixed
    , flex
    , flex_1
    , flex_auto
    , flex_col
    , flex_col_reverse
    , flex_grow
    , flex_grow_0
    , flex_initial
    , flex_no_wrap
    , flex_none
    , flex_row
    , flex_row_reverse
    , flex_shrink
    , flex_shrink_0
    , flex_wrap
    , flex_wrap_reverse
    , float_left
    , float_none
    , float_right
    , flow_root
    , focus__bg_black
    , focus__bg_blue_100
    , focus__bg_blue_200
    , focus__bg_blue_300
    , focus__bg_blue_400
    , focus__bg_blue_500
    , focus__bg_blue_600
    , focus__bg_blue_700
    , focus__bg_blue_800
    , focus__bg_blue_900
    , focus__bg_current
    , focus__bg_gray_100
    , focus__bg_gray_200
    , focus__bg_gray_300
    , focus__bg_gray_400
    , focus__bg_gray_500
    , focus__bg_gray_600
    , focus__bg_gray_700
    , focus__bg_gray_800
    , focus__bg_gray_900
    , focus__bg_green_100
    , focus__bg_green_200
    , focus__bg_green_300
    , focus__bg_green_400
    , focus__bg_green_500
    , focus__bg_green_600
    , focus__bg_green_700
    , focus__bg_green_800
    , focus__bg_green_900
    , focus__bg_indigo_100
    , focus__bg_indigo_200
    , focus__bg_indigo_300
    , focus__bg_indigo_400
    , focus__bg_indigo_500
    , focus__bg_indigo_600
    , focus__bg_indigo_700
    , focus__bg_indigo_800
    , focus__bg_indigo_900
    , focus__bg_orange_100
    , focus__bg_orange_200
    , focus__bg_orange_300
    , focus__bg_orange_400
    , focus__bg_orange_500
    , focus__bg_orange_600
    , focus__bg_orange_700
    , focus__bg_orange_800
    , focus__bg_orange_900
    , focus__bg_pink_100
    , focus__bg_pink_200
    , focus__bg_pink_300
    , focus__bg_pink_400
    , focus__bg_pink_500
    , focus__bg_pink_600
    , focus__bg_pink_700
    , focus__bg_pink_800
    , focus__bg_pink_900
    , focus__bg_purple_100
    , focus__bg_purple_200
    , focus__bg_purple_300
    , focus__bg_purple_400
    , focus__bg_purple_500
    , focus__bg_purple_600
    , focus__bg_purple_700
    , focus__bg_purple_800
    , focus__bg_purple_900
    , focus__bg_red_100
    , focus__bg_red_200
    , focus__bg_red_300
    , focus__bg_red_400
    , focus__bg_red_500
    , focus__bg_red_600
    , focus__bg_red_700
    , focus__bg_red_800
    , focus__bg_red_900
    , focus__bg_teal_100
    , focus__bg_teal_200
    , focus__bg_teal_300
    , focus__bg_teal_400
    , focus__bg_teal_500
    , focus__bg_teal_600
    , focus__bg_teal_700
    , focus__bg_teal_800
    , focus__bg_teal_900
    , focus__bg_transparent
    , focus__bg_white
    , focus__bg_yellow_100
    , focus__bg_yellow_200
    , focus__bg_yellow_300
    , focus__bg_yellow_400
    , focus__bg_yellow_500
    , focus__bg_yellow_600
    , focus__bg_yellow_700
    , focus__bg_yellow_800
    , focus__bg_yellow_900
    , focus__border_black
    , focus__border_blue_100
    , focus__border_blue_200
    , focus__border_blue_300
    , focus__border_blue_400
    , focus__border_blue_500
    , focus__border_blue_600
    , focus__border_blue_700
    , focus__border_blue_800
    , focus__border_blue_900
    , focus__border_current
    , focus__border_gray_100
    , focus__border_gray_200
    , focus__border_gray_300
    , focus__border_gray_400
    , focus__border_gray_500
    , focus__border_gray_600
    , focus__border_gray_700
    , focus__border_gray_800
    , focus__border_gray_900
    , focus__border_green_100
    , focus__border_green_200
    , focus__border_green_300
    , focus__border_green_400
    , focus__border_green_500
    , focus__border_green_600
    , focus__border_green_700
    , focus__border_green_800
    , focus__border_green_900
    , focus__border_indigo_100
    , focus__border_indigo_200
    , focus__border_indigo_300
    , focus__border_indigo_400
    , focus__border_indigo_500
    , focus__border_indigo_600
    , focus__border_indigo_700
    , focus__border_indigo_800
    , focus__border_indigo_900
    , focus__border_orange_100
    , focus__border_orange_200
    , focus__border_orange_300
    , focus__border_orange_400
    , focus__border_orange_500
    , focus__border_orange_600
    , focus__border_orange_700
    , focus__border_orange_800
    , focus__border_orange_900
    , focus__border_pink_100
    , focus__border_pink_200
    , focus__border_pink_300
    , focus__border_pink_400
    , focus__border_pink_500
    , focus__border_pink_600
    , focus__border_pink_700
    , focus__border_pink_800
    , focus__border_pink_900
    , focus__border_purple_100
    , focus__border_purple_200
    , focus__border_purple_300
    , focus__border_purple_400
    , focus__border_purple_500
    , focus__border_purple_600
    , focus__border_purple_700
    , focus__border_purple_800
    , focus__border_purple_900
    , focus__border_red_100
    , focus__border_red_200
    , focus__border_red_300
    , focus__border_red_400
    , focus__border_red_500
    , focus__border_red_600
    , focus__border_red_700
    , focus__border_red_800
    , focus__border_red_900
    , focus__border_teal_100
    , focus__border_teal_200
    , focus__border_teal_300
    , focus__border_teal_400
    , focus__border_teal_500
    , focus__border_teal_600
    , focus__border_teal_700
    , focus__border_teal_800
    , focus__border_teal_900
    , focus__border_transparent
    , focus__border_white
    , focus__border_yellow_100
    , focus__border_yellow_200
    , focus__border_yellow_300
    , focus__border_yellow_400
    , focus__border_yellow_500
    , focus__border_yellow_600
    , focus__border_yellow_700
    , focus__border_yellow_800
    , focus__border_yellow_900
    , focus__font_black
    , focus__font_bold
    , focus__font_extrabold
    , focus__font_hairline
    , focus__font_light
    , focus__font_medium
    , focus__font_normal
    , focus__font_semibold
    , focus__font_thin
    , focus__line_through
    , focus__no_underline
    , focus__not_sr_only
    , focus__opacity_0
    , focus__opacity_100
    , focus__opacity_25
    , focus__opacity_50
    , focus__opacity_75
    , focus__outline_none
    , focus__placeholder_black
    , focus__placeholder_blue_100
    , focus__placeholder_blue_200
    , focus__placeholder_blue_300
    , focus__placeholder_blue_400
    , focus__placeholder_blue_500
    , focus__placeholder_blue_600
    , focus__placeholder_blue_700
    , focus__placeholder_blue_800
    , focus__placeholder_blue_900
    , focus__placeholder_current
    , focus__placeholder_gray_100
    , focus__placeholder_gray_200
    , focus__placeholder_gray_300
    , focus__placeholder_gray_400
    , focus__placeholder_gray_500
    , focus__placeholder_gray_600
    , focus__placeholder_gray_700
    , focus__placeholder_gray_800
    , focus__placeholder_gray_900
    , focus__placeholder_green_100
    , focus__placeholder_green_200
    , focus__placeholder_green_300
    , focus__placeholder_green_400
    , focus__placeholder_green_500
    , focus__placeholder_green_600
    , focus__placeholder_green_700
    , focus__placeholder_green_800
    , focus__placeholder_green_900
    , focus__placeholder_indigo_100
    , focus__placeholder_indigo_200
    , focus__placeholder_indigo_300
    , focus__placeholder_indigo_400
    , focus__placeholder_indigo_500
    , focus__placeholder_indigo_600
    , focus__placeholder_indigo_700
    , focus__placeholder_indigo_800
    , focus__placeholder_indigo_900
    , focus__placeholder_orange_100
    , focus__placeholder_orange_200
    , focus__placeholder_orange_300
    , focus__placeholder_orange_400
    , focus__placeholder_orange_500
    , focus__placeholder_orange_600
    , focus__placeholder_orange_700
    , focus__placeholder_orange_800
    , focus__placeholder_orange_900
    , focus__placeholder_pink_100
    , focus__placeholder_pink_200
    , focus__placeholder_pink_300
    , focus__placeholder_pink_400
    , focus__placeholder_pink_500
    , focus__placeholder_pink_600
    , focus__placeholder_pink_700
    , focus__placeholder_pink_800
    , focus__placeholder_pink_900
    , focus__placeholder_purple_100
    , focus__placeholder_purple_200
    , focus__placeholder_purple_300
    , focus__placeholder_purple_400
    , focus__placeholder_purple_500
    , focus__placeholder_purple_600
    , focus__placeholder_purple_700
    , focus__placeholder_purple_800
    , focus__placeholder_purple_900
    , focus__placeholder_red_100
    , focus__placeholder_red_200
    , focus__placeholder_red_300
    , focus__placeholder_red_400
    , focus__placeholder_red_500
    , focus__placeholder_red_600
    , focus__placeholder_red_700
    , focus__placeholder_red_800
    , focus__placeholder_red_900
    , focus__placeholder_teal_100
    , focus__placeholder_teal_200
    , focus__placeholder_teal_300
    , focus__placeholder_teal_400
    , focus__placeholder_teal_500
    , focus__placeholder_teal_600
    , focus__placeholder_teal_700
    , focus__placeholder_teal_800
    , focus__placeholder_teal_900
    , focus__placeholder_transparent
    , focus__placeholder_white
    , focus__placeholder_yellow_100
    , focus__placeholder_yellow_200
    , focus__placeholder_yellow_300
    , focus__placeholder_yellow_400
    , focus__placeholder_yellow_500
    , focus__placeholder_yellow_600
    , focus__placeholder_yellow_700
    , focus__placeholder_yellow_800
    , focus__placeholder_yellow_900
    , focus__shadow
    , focus__shadow_2xl
    , focus__shadow_inner
    , focus__shadow_lg
    , focus__shadow_md
    , focus__shadow_none
    , focus__shadow_outline
    , focus__shadow_sm
    , focus__shadow_xl
    , focus__shadow_xs
    , focus__sr_only
    , focus__text_black
    , focus__text_blue_100
    , focus__text_blue_200
    , focus__text_blue_300
    , focus__text_blue_400
    , focus__text_blue_500
    , focus__text_blue_600
    , focus__text_blue_700
    , focus__text_blue_800
    , focus__text_blue_900
    , focus__text_current
    , focus__text_gray_100
    , focus__text_gray_200
    , focus__text_gray_300
    , focus__text_gray_400
    , focus__text_gray_500
    , focus__text_gray_600
    , focus__text_gray_700
    , focus__text_gray_800
    , focus__text_gray_900
    , focus__text_green_100
    , focus__text_green_200
    , focus__text_green_300
    , focus__text_green_400
    , focus__text_green_500
    , focus__text_green_600
    , focus__text_green_700
    , focus__text_green_800
    , focus__text_green_900
    , focus__text_indigo_100
    , focus__text_indigo_200
    , focus__text_indigo_300
    , focus__text_indigo_400
    , focus__text_indigo_500
    , focus__text_indigo_600
    , focus__text_indigo_700
    , focus__text_indigo_800
    , focus__text_indigo_900
    , focus__text_orange_100
    , focus__text_orange_200
    , focus__text_orange_300
    , focus__text_orange_400
    , focus__text_orange_500
    , focus__text_orange_600
    , focus__text_orange_700
    , focus__text_orange_800
    , focus__text_orange_900
    , focus__text_pink_100
    , focus__text_pink_200
    , focus__text_pink_300
    , focus__text_pink_400
    , focus__text_pink_500
    , focus__text_pink_600
    , focus__text_pink_700
    , focus__text_pink_800
    , focus__text_pink_900
    , focus__text_purple_100
    , focus__text_purple_200
    , focus__text_purple_300
    , focus__text_purple_400
    , focus__text_purple_500
    , focus__text_purple_600
    , focus__text_purple_700
    , focus__text_purple_800
    , focus__text_purple_900
    , focus__text_red_100
    , focus__text_red_200
    , focus__text_red_300
    , focus__text_red_400
    , focus__text_red_500
    , focus__text_red_600
    , focus__text_red_700
    , focus__text_red_800
    , focus__text_red_900
    , focus__text_teal_100
    , focus__text_teal_200
    , focus__text_teal_300
    , focus__text_teal_400
    , focus__text_teal_500
    , focus__text_teal_600
    , focus__text_teal_700
    , focus__text_teal_800
    , focus__text_teal_900
    , focus__text_transparent
    , focus__text_white
    , focus__text_yellow_100
    , focus__text_yellow_200
    , focus__text_yellow_300
    , focus__text_yellow_400
    , focus__text_yellow_500
    , focus__text_yellow_600
    , focus__text_yellow_700
    , focus__text_yellow_800
    , focus__text_yellow_900
    , focus__underline
    , font_black
    , font_bold
    , font_extrabold
    , font_hairline
    , font_light
    , font_medium
    , font_mono
    , font_normal
    , font_sans
    , font_semibold
    , font_serif
    , font_thin
    , grid
    , h_0
    , h_1
    , h_10
    , h_12
    , h_16
    , h_2
    , h_20
    , h_24
    , h_3
    , h_32
    , h_4
    , h_40
    , h_48
    , h_5
    , h_56
    , h_6
    , h_64
    , h_8
    , h_auto
    , h_full
    , h_px
    , h_screen
    , hidden
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
    , inline
    , inline_block
    , inline_flex
    , inline_grid
    , inset_0
    , inset_auto
    , inset_x_0
    , inset_x_auto
    , inset_y_0
    , inset_y_auto
    , invisible
    , italic
    , items_baseline
    , items_center
    , items_end
    , items_start
    , items_stretch
    , justify_around
    , justify_between
    , justify_center
    , justify_end
    , justify_evenly
    , justify_start
    , leading_10
    , leading_3
    , leading_4
    , leading_5
    , leading_6
    , leading_7
    , leading_8
    , leading_9
    , leading_loose
    , leading_none
    , leading_normal
    , leading_relaxed
    , leading_snug
    , leading_tight
    , left_0
    , left_auto
    , line_through
    , list_decimal
    , list_disc
    , list_inside
    , list_none
    , list_outside
    , lowercase
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
    , max_h_full
    , max_h_screen
    , max_w_2xl
    , max_w_3xl
    , max_w_4xl
    , max_w_5xl
    , max_w_6xl
    , max_w_full
    , max_w_lg
    , max_w_md
    , max_w_none
    , max_w_screen_lg
    , max_w_screen_md
    , max_w_screen_sm
    , max_w_screen_xl
    , max_w_sm
    , max_w_xl
    , max_w_xs
    , mb_0
    , mb_1
    , mb_10
    , mb_12
    , mb_16
    , mb_2
    , mb_20
    , mb_24
    , mb_3
    , mb_32
    , mb_4
    , mb_40
    , mb_48
    , mb_5
    , mb_56
    , mb_6
    , mb_64
    , mb_8
    , mb_auto
    , mb_px
    , min_h_0
    , min_h_full
    , min_h_screen
    , min_w_0
    , min_w_full
    , ml_0
    , ml_1
    , ml_10
    , ml_12
    , ml_16
    , ml_2
    , ml_20
    , ml_24
    , ml_3
    , ml_32
    , ml_4
    , ml_40
    , ml_48
    , ml_5
    , ml_56
    , ml_6
    , ml_64
    , ml_8
    , ml_auto
    , ml_px
    , mr_0
    , mr_1
    , mr_10
    , mr_12
    , mr_16
    , mr_2
    , mr_20
    , mr_24
    , mr_3
    , mr_32
    , mr_4
    , mr_40
    , mr_48
    , mr_5
    , mr_56
    , mr_6
    , mr_64
    , mr_8
    , mr_auto
    , mr_px
    , mt_0
    , mt_1
    , mt_10
    , mt_12
    , mt_16
    , mt_2
    , mt_20
    , mt_24
    , mt_3
    , mt_32
    , mt_4
    , mt_40
    , mt_48
    , mt_5
    , mt_56
    , mt_6
    , mt_64
    , mt_8
    , mt_auto
    , mt_px
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
    , neg_m_1
    , neg_m_10
    , neg_m_12
    , neg_m_16
    , neg_m_2
    , neg_m_20
    , neg_m_24
    , neg_m_3
    , neg_m_32
    , neg_m_4
    , neg_m_40
    , neg_m_48
    , neg_m_5
    , neg_m_56
    , neg_m_6
    , neg_m_64
    , neg_m_8
    , neg_m_px
    , neg_mb_1
    , neg_mb_10
    , neg_mb_12
    , neg_mb_16
    , neg_mb_2
    , neg_mb_20
    , neg_mb_24
    , neg_mb_3
    , neg_mb_32
    , neg_mb_4
    , neg_mb_40
    , neg_mb_48
    , neg_mb_5
    , neg_mb_56
    , neg_mb_6
    , neg_mb_64
    , neg_mb_8
    , neg_mb_px
    , neg_ml_1
    , neg_ml_10
    , neg_ml_12
    , neg_ml_16
    , neg_ml_2
    , neg_ml_20
    , neg_ml_24
    , neg_ml_3
    , neg_ml_32
    , neg_ml_4
    , neg_ml_40
    , neg_ml_48
    , neg_ml_5
    , neg_ml_56
    , neg_ml_6
    , neg_ml_64
    , neg_ml_8
    , neg_ml_px
    , neg_mr_1
    , neg_mr_10
    , neg_mr_12
    , neg_mr_16
    , neg_mr_2
    , neg_mr_20
    , neg_mr_24
    , neg_mr_3
    , neg_mr_32
    , neg_mr_4
    , neg_mr_40
    , neg_mr_48
    , neg_mr_5
    , neg_mr_56
    , neg_mr_6
    , neg_mr_64
    , neg_mr_8
    , neg_mr_px
    , neg_mt_1
    , neg_mt_10
    , neg_mt_12
    , neg_mt_16
    , neg_mt_2
    , neg_mt_20
    , neg_mt_24
    , neg_mt_3
    , neg_mt_32
    , neg_mt_4
    , neg_mt_40
    , neg_mt_48
    , neg_mt_5
    , neg_mt_56
    , neg_mt_6
    , neg_mt_64
    , neg_mt_8
    , neg_mt_px
    , neg_mx_1
    , neg_mx_10
    , neg_mx_12
    , neg_mx_16
    , neg_mx_2
    , neg_mx_20
    , neg_mx_24
    , neg_mx_3
    , neg_mx_32
    , neg_mx_4
    , neg_mx_40
    , neg_mx_48
    , neg_mx_5
    , neg_mx_56
    , neg_mx_6
    , neg_mx_64
    , neg_mx_8
    , neg_mx_px
    , neg_my_1
    , neg_my_10
    , neg_my_12
    , neg_my_16
    , neg_my_2
    , neg_my_20
    , neg_my_24
    , neg_my_3
    , neg_my_32
    , neg_my_4
    , neg_my_40
    , neg_my_48
    , neg_my_5
    , neg_my_56
    , neg_my_6
    , neg_my_64
    , neg_my_8
    , neg_my_px
    , no_underline
    , normal_case
    , not_italic
    , not_sr_only
    , object_bottom
    , object_center
    , object_contain
    , object_cover
    , object_fill
    , object_left
    , object_left_bottom
    , object_left_top
    , object_none
    , object_right
    , object_right_bottom
    , object_right_top
    , object_scale_down
    , object_top
    , opacity_0
    , opacity_100
    , opacity_25
    , opacity_50
    , opacity_75
    , order_1
    , order_10
    , order_11
    , order_12
    , order_2
    , order_3
    , order_4
    , order_5
    , order_6
    , order_7
    , order_8
    , order_9
    , order_first
    , order_last
    , order_none
    , origin_bottom
    , origin_bottom_left
    , origin_bottom_right
    , origin_center
    , origin_left
    , origin_right
    , origin_top
    , origin_top_left
    , origin_top_right
    , outline_none
    , overflow_auto
    , overflow_hidden
    , overflow_scroll
    , overflow_visible
    , overflow_x_auto
    , overflow_x_hidden
    , overflow_x_scroll
    , overflow_x_visible
    , overflow_y_auto
    , overflow_y_hidden
    , overflow_y_scroll
    , overflow_y_visible
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
    , pb_0
    , pb_1
    , pb_10
    , pb_12
    , pb_16
    , pb_2
    , pb_20
    , pb_24
    , pb_3
    , pb_32
    , pb_4
    , pb_40
    , pb_48
    , pb_5
    , pb_56
    , pb_6
    , pb_64
    , pb_8
    , pb_px
    , pl_0
    , pl_1
    , pl_10
    , pl_12
    , pl_16
    , pl_2
    , pl_20
    , pl_24
    , pl_3
    , pl_32
    , pl_4
    , pl_40
    , pl_48
    , pl_5
    , pl_56
    , pl_6
    , pl_64
    , pl_8
    , pl_px
    , placeholder_black
    , placeholder_blue_100
    , placeholder_blue_200
    , placeholder_blue_300
    , placeholder_blue_400
    , placeholder_blue_500
    , placeholder_blue_600
    , placeholder_blue_700
    , placeholder_blue_800
    , placeholder_blue_900
    , placeholder_current
    , placeholder_gray_100
    , placeholder_gray_200
    , placeholder_gray_300
    , placeholder_gray_400
    , placeholder_gray_500
    , placeholder_gray_600
    , placeholder_gray_700
    , placeholder_gray_800
    , placeholder_gray_900
    , placeholder_green_100
    , placeholder_green_200
    , placeholder_green_300
    , placeholder_green_400
    , placeholder_green_500
    , placeholder_green_600
    , placeholder_green_700
    , placeholder_green_800
    , placeholder_green_900
    , placeholder_indigo_100
    , placeholder_indigo_200
    , placeholder_indigo_300
    , placeholder_indigo_400
    , placeholder_indigo_500
    , placeholder_indigo_600
    , placeholder_indigo_700
    , placeholder_indigo_800
    , placeholder_indigo_900
    , placeholder_orange_100
    , placeholder_orange_200
    , placeholder_orange_300
    , placeholder_orange_400
    , placeholder_orange_500
    , placeholder_orange_600
    , placeholder_orange_700
    , placeholder_orange_800
    , placeholder_orange_900
    , placeholder_pink_100
    , placeholder_pink_200
    , placeholder_pink_300
    , placeholder_pink_400
    , placeholder_pink_500
    , placeholder_pink_600
    , placeholder_pink_700
    , placeholder_pink_800
    , placeholder_pink_900
    , placeholder_purple_100
    , placeholder_purple_200
    , placeholder_purple_300
    , placeholder_purple_400
    , placeholder_purple_500
    , placeholder_purple_600
    , placeholder_purple_700
    , placeholder_purple_800
    , placeholder_purple_900
    , placeholder_red_100
    , placeholder_red_200
    , placeholder_red_300
    , placeholder_red_400
    , placeholder_red_500
    , placeholder_red_600
    , placeholder_red_700
    , placeholder_red_800
    , placeholder_red_900
    , placeholder_teal_100
    , placeholder_teal_200
    , placeholder_teal_300
    , placeholder_teal_400
    , placeholder_teal_500
    , placeholder_teal_600
    , placeholder_teal_700
    , placeholder_teal_800
    , placeholder_teal_900
    , placeholder_transparent
    , placeholder_white
    , placeholder_yellow_100
    , placeholder_yellow_200
    , placeholder_yellow_300
    , placeholder_yellow_400
    , placeholder_yellow_500
    , placeholder_yellow_600
    , placeholder_yellow_700
    , placeholder_yellow_800
    , placeholder_yellow_900
    , pointer_events_auto
    , pointer_events_none
    , pr_0
    , pr_1
    , pr_10
    , pr_12
    , pr_16
    , pr_2
    , pr_20
    , pr_24
    , pr_3
    , pr_32
    , pr_4
    , pr_40
    , pr_48
    , pr_5
    , pr_56
    , pr_6
    , pr_64
    , pr_8
    , pr_px
    , pt_0
    , pt_1
    , pt_10
    , pt_12
    , pt_16
    , pt_2
    , pt_20
    , pt_24
    , pt_3
    , pt_32
    , pt_4
    , pt_40
    , pt_48
    , pt_5
    , pt_56
    , pt_6
    , pt_64
    , pt_8
    , pt_px
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
    , relative
    , resize
    , resize_none
    , resize_x
    , resize_y
    , right_0
    , right_auto
    , rounded
    , rounded_b
    , rounded_b_full
    , rounded_b_lg
    , rounded_b_md
    , rounded_b_none
    , rounded_b_sm
    , rounded_bl
    , rounded_bl_full
    , rounded_bl_lg
    , rounded_bl_md
    , rounded_bl_none
    , rounded_bl_sm
    , rounded_br
    , rounded_br_full
    , rounded_br_lg
    , rounded_br_md
    , rounded_br_none
    , rounded_br_sm
    , rounded_full
    , rounded_l
    , rounded_l_full
    , rounded_l_lg
    , rounded_l_md
    , rounded_l_none
    , rounded_l_sm
    , rounded_lg
    , rounded_md
    , rounded_none
    , rounded_r
    , rounded_r_full
    , rounded_r_lg
    , rounded_r_md
    , rounded_r_none
    , rounded_r_sm
    , rounded_sm
    , rounded_t
    , rounded_t_full
    , rounded_t_lg
    , rounded_t_md
    , rounded_t_none
    , rounded_t_sm
    , rounded_tl
    , rounded_tl_full
    , rounded_tl_lg
    , rounded_tl_md
    , rounded_tl_none
    , rounded_tl_sm
    , rounded_tr
    , rounded_tr_full
    , rounded_tr_lg
    , rounded_tr_md
    , rounded_tr_none
    , rounded_tr_sm
    , scrolling_auto
    , scrolling_touch
    , select_all
    , select_auto
    , select_none
    , select_text
    , self_auto
    , self_center
    , self_end
    , self_start
    , self_stretch
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
    , sr_only
    , static
    , sticky
    , stroke_0
    , stroke_1
    , stroke_2
    , stroke_current
    , subpixel_antialiased
    , table
    , table_auto
    , table_caption
    , table_cell
    , table_column
    , table_column_group
    , table_fixed
    , table_footer_group
    , table_header_group
    , table_row
    , table_row_group
    , text_2xl
    , text_3xl
    , text_4xl
    , text_5xl
    , text_6xl
    , text_base
    , text_black
    , text_blue_100
    , text_blue_200
    , text_blue_300
    , text_blue_400
    , text_blue_500
    , text_blue_600
    , text_blue_700
    , text_blue_800
    , text_blue_900
    , text_center
    , text_current
    , text_gray_100
    , text_gray_200
    , text_gray_300
    , text_gray_400
    , text_gray_500
    , text_gray_600
    , text_gray_700
    , text_gray_800
    , text_gray_900
    , text_green_100
    , text_green_200
    , text_green_300
    , text_green_400
    , text_green_500
    , text_green_600
    , text_green_700
    , text_green_800
    , text_green_900
    , text_indigo_100
    , text_indigo_200
    , text_indigo_300
    , text_indigo_400
    , text_indigo_500
    , text_indigo_600
    , text_indigo_700
    , text_indigo_800
    , text_indigo_900
    , text_justify
    , text_left
    , text_lg
    , text_orange_100
    , text_orange_200
    , text_orange_300
    , text_orange_400
    , text_orange_500
    , text_orange_600
    , text_orange_700
    , text_orange_800
    , text_orange_900
    , text_pink_100
    , text_pink_200
    , text_pink_300
    , text_pink_400
    , text_pink_500
    , text_pink_600
    , text_pink_700
    , text_pink_800
    , text_pink_900
    , text_purple_100
    , text_purple_200
    , text_purple_300
    , text_purple_400
    , text_purple_500
    , text_purple_600
    , text_purple_700
    , text_purple_800
    , text_purple_900
    , text_red_100
    , text_red_200
    , text_red_300
    , text_red_400
    , text_red_500
    , text_red_600
    , text_red_700
    , text_red_800
    , text_red_900
    , text_right
    , text_sm
    , text_teal_100
    , text_teal_200
    , text_teal_300
    , text_teal_400
    , text_teal_500
    , text_teal_600
    , text_teal_700
    , text_teal_800
    , text_teal_900
    , text_transparent
    , text_white
    , text_xl
    , text_xs
    , text_yellow_100
    , text_yellow_200
    , text_yellow_300
    , text_yellow_400
    , text_yellow_500
    , text_yellow_600
    , text_yellow_700
    , text_yellow_800
    , text_yellow_900
    , top_0
    , top_auto
    , tracking_normal
    , tracking_tight
    , tracking_tighter
    , tracking_wide
    , tracking_wider
    , tracking_widest
    , transform_none
    , truncate
    , underline
    , uppercase
    , visible
    , w_0
    , w_1
    , w_10
    , w_10over12
    , w_11over12
    , w_12
    , w_16
    , w_1over12
    , w_1over2
    , w_1over3
    , w_1over4
    , w_1over5
    , w_1over6
    , w_2
    , w_20
    , w_24
    , w_2over12
    , w_2over3
    , w_2over4
    , w_2over5
    , w_2over6
    , w_3
    , w_32
    , w_3over12
    , w_3over4
    , w_3over5
    , w_3over6
    , w_4
    , w_40
    , w_48
    , w_4over12
    , w_4over5
    , w_4over6
    , w_5
    , w_56
    , w_5over12
    , w_5over6
    , w_6
    , w_64
    , w_6over12
    , w_7over12
    , w_8
    , w_8over12
    , w_9over12
    , w_auto
    , w_full
    , w_px
    , w_screen
    , whitespace_no_wrap
    , whitespace_normal
    , whitespace_pre
    , whitespace_pre_line
    , whitespace_pre_wrap
    , z_0
    , z_10
    , z_20
    , z_30
    , z_40
    , z_50
    , z_auto
    )

import Css
import Css.Media


container : Css.Style
container =
    Css.batch
        [ Css.width (Css.pct 100)
        ]


divide_transparent : Css.Style
divide_transparent =
    Css.batch
        [ Css.borderColor Css.transparent
        ]


divide_current : Css.Style
divide_current =
    Css.batch
        [ Css.borderColor Css.currentColor
        ]


divide_black : Css.Style
divide_black =
    Css.batch
        [ Css.borderColor (Css.hex "#000")
        ]


divide_white : Css.Style
divide_white =
    Css.batch
        [ Css.borderColor (Css.hex "#fff")
        ]


divide_gray_100 : Css.Style
divide_gray_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#f7fafc")
        ]


divide_gray_200 : Css.Style
divide_gray_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#edf2f7")
        ]


divide_gray_300 : Css.Style
divide_gray_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#e2e8f0")
        ]


divide_gray_400 : Css.Style
divide_gray_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#cbd5e0")
        ]


divide_gray_500 : Css.Style
divide_gray_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#a0aec0")
        ]


divide_gray_600 : Css.Style
divide_gray_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#718096")
        ]


divide_gray_700 : Css.Style
divide_gray_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#4a5568")
        ]


divide_gray_800 : Css.Style
divide_gray_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#2d3748")
        ]


divide_gray_900 : Css.Style
divide_gray_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#1a202c")
        ]


divide_red_100 : Css.Style
divide_red_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fff5f5")
        ]


divide_red_200 : Css.Style
divide_red_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#fed7d7")
        ]


divide_red_300 : Css.Style
divide_red_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#feb2b2")
        ]


divide_red_400 : Css.Style
divide_red_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#fc8181")
        ]


divide_red_500 : Css.Style
divide_red_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#f56565")
        ]


divide_red_600 : Css.Style
divide_red_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#e53e3e")
        ]


divide_red_700 : Css.Style
divide_red_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#c53030")
        ]


divide_red_800 : Css.Style
divide_red_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#9b2c2c")
        ]


divide_red_900 : Css.Style
divide_red_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#742a2a")
        ]


divide_orange_100 : Css.Style
divide_orange_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fffaf0")
        ]


divide_orange_200 : Css.Style
divide_orange_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#feebc8")
        ]


divide_orange_300 : Css.Style
divide_orange_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#fbd38d")
        ]


divide_orange_400 : Css.Style
divide_orange_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#f6ad55")
        ]


divide_orange_500 : Css.Style
divide_orange_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#ed8936")
        ]


divide_orange_600 : Css.Style
divide_orange_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#dd6b20")
        ]


divide_orange_700 : Css.Style
divide_orange_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#c05621")
        ]


divide_orange_800 : Css.Style
divide_orange_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#9c4221")
        ]


divide_orange_900 : Css.Style
divide_orange_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#7b341e")
        ]


divide_yellow_100 : Css.Style
divide_yellow_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fffff0")
        ]


divide_yellow_200 : Css.Style
divide_yellow_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#fefcbf")
        ]


divide_yellow_300 : Css.Style
divide_yellow_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#faf089")
        ]


divide_yellow_400 : Css.Style
divide_yellow_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#f6e05e")
        ]


divide_yellow_500 : Css.Style
divide_yellow_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#ecc94b")
        ]


divide_yellow_600 : Css.Style
divide_yellow_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#d69e2e")
        ]


divide_yellow_700 : Css.Style
divide_yellow_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#b7791f")
        ]


divide_yellow_800 : Css.Style
divide_yellow_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#975a16")
        ]


divide_yellow_900 : Css.Style
divide_yellow_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#744210")
        ]


divide_green_100 : Css.Style
divide_green_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#f0fff4")
        ]


divide_green_200 : Css.Style
divide_green_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#c6f6d5")
        ]


divide_green_300 : Css.Style
divide_green_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#9ae6b4")
        ]


divide_green_400 : Css.Style
divide_green_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#68d391")
        ]


divide_green_500 : Css.Style
divide_green_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#48bb78")
        ]


divide_green_600 : Css.Style
divide_green_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#38a169")
        ]


divide_green_700 : Css.Style
divide_green_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#2f855a")
        ]


divide_green_800 : Css.Style
divide_green_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#276749")
        ]


divide_green_900 : Css.Style
divide_green_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#22543d")
        ]


divide_teal_100 : Css.Style
divide_teal_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#e6fffa")
        ]


divide_teal_200 : Css.Style
divide_teal_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#b2f5ea")
        ]


divide_teal_300 : Css.Style
divide_teal_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#81e6d9")
        ]


divide_teal_400 : Css.Style
divide_teal_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#4fd1c5")
        ]


divide_teal_500 : Css.Style
divide_teal_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#38b2ac")
        ]


divide_teal_600 : Css.Style
divide_teal_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#319795")
        ]


divide_teal_700 : Css.Style
divide_teal_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#2c7a7b")
        ]


divide_teal_800 : Css.Style
divide_teal_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#285e61")
        ]


divide_teal_900 : Css.Style
divide_teal_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#234e52")
        ]


divide_blue_100 : Css.Style
divide_blue_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#ebf8ff")
        ]


divide_blue_200 : Css.Style
divide_blue_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#bee3f8")
        ]


divide_blue_300 : Css.Style
divide_blue_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#90cdf4")
        ]


divide_blue_400 : Css.Style
divide_blue_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#63b3ed")
        ]


divide_blue_500 : Css.Style
divide_blue_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#4299e1")
        ]


divide_blue_600 : Css.Style
divide_blue_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#3182ce")
        ]


divide_blue_700 : Css.Style
divide_blue_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#2b6cb0")
        ]


divide_blue_800 : Css.Style
divide_blue_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#2c5282")
        ]


divide_blue_900 : Css.Style
divide_blue_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#2a4365")
        ]


divide_indigo_100 : Css.Style
divide_indigo_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#ebf4ff")
        ]


divide_indigo_200 : Css.Style
divide_indigo_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#c3dafe")
        ]


divide_indigo_300 : Css.Style
divide_indigo_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#a3bffa")
        ]


divide_indigo_400 : Css.Style
divide_indigo_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#7f9cf5")
        ]


divide_indigo_500 : Css.Style
divide_indigo_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#667eea")
        ]


divide_indigo_600 : Css.Style
divide_indigo_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#5a67d8")
        ]


divide_indigo_700 : Css.Style
divide_indigo_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#4c51bf")
        ]


divide_indigo_800 : Css.Style
divide_indigo_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#434190")
        ]


divide_indigo_900 : Css.Style
divide_indigo_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#3c366b")
        ]


divide_purple_100 : Css.Style
divide_purple_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#faf5ff")
        ]


divide_purple_200 : Css.Style
divide_purple_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#e9d8fd")
        ]


divide_purple_300 : Css.Style
divide_purple_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#d6bcfa")
        ]


divide_purple_400 : Css.Style
divide_purple_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#b794f4")
        ]


divide_purple_500 : Css.Style
divide_purple_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#9f7aea")
        ]


divide_purple_600 : Css.Style
divide_purple_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#805ad5")
        ]


divide_purple_700 : Css.Style
divide_purple_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#6b46c1")
        ]


divide_purple_800 : Css.Style
divide_purple_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#553c9a")
        ]


divide_purple_900 : Css.Style
divide_purple_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#44337a")
        ]


divide_pink_100 : Css.Style
divide_pink_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fff5f7")
        ]


divide_pink_200 : Css.Style
divide_pink_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#fed7e2")
        ]


divide_pink_300 : Css.Style
divide_pink_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#fbb6ce")
        ]


divide_pink_400 : Css.Style
divide_pink_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#f687b3")
        ]


divide_pink_500 : Css.Style
divide_pink_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#ed64a6")
        ]


divide_pink_600 : Css.Style
divide_pink_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#d53f8c")
        ]


divide_pink_700 : Css.Style
divide_pink_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#b83280")
        ]


divide_pink_800 : Css.Style
divide_pink_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#97266d")
        ]


divide_pink_900 : Css.Style
divide_pink_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#702459")
        ]


sr_only : Css.Style
sr_only =
    Css.batch
        [ Css.position Css.absolute
        , Css.width (Css.px 1)
        , Css.height (Css.px 1)
        , Css.padding (Css.px 0)
        , Css.margin (Css.px -1)
        , Css.overflow Css.hidden
        , Css.property "clip" "rect(0, 0, 0, 0)"
        , Css.whiteSpace Css.noWrap
        , Css.borderWidth (Css.px 0)
        ]


not_sr_only : Css.Style
not_sr_only =
    Css.batch
        [ Css.position Css.static
        , Css.width Css.auto
        , Css.height Css.auto
        , Css.padding (Css.px 0)
        , Css.margin (Css.px 0)
        , Css.overflow Css.visible
        , Css.property "clip" "auto"
        , Css.whiteSpace Css.normal
        ]


focus__sr_only : Css.Style
focus__sr_only =
    Css.batch
        [ Css.focus
            [ Css.position Css.absolute
            , Css.width (Css.px 1)
            , Css.height (Css.px 1)
            , Css.padding (Css.px 0)
            , Css.margin (Css.px -1)
            , Css.overflow Css.hidden
            , Css.property "clip" "rect(0, 0, 0, 0)"
            , Css.whiteSpace Css.noWrap
            , Css.borderWidth (Css.px 0)
            ]
        ]


focus__not_sr_only : Css.Style
focus__not_sr_only =
    Css.batch
        [ Css.focus
            [ Css.position Css.static
            , Css.width Css.auto
            , Css.height Css.auto
            , Css.padding (Css.px 0)
            , Css.margin (Css.px 0)
            , Css.overflow Css.visible
            , Css.property "clip" "auto"
            , Css.whiteSpace Css.normal
            ]
        ]


appearance_none : Css.Style
appearance_none =
    Css.batch
        [ Css.property "appearance" "none"
        ]


bg_fixed : Css.Style
bg_fixed =
    Css.batch
        [ Css.backgroundAttachment Css.fixed
        ]


bg_local : Css.Style
bg_local =
    Css.batch
        [ Css.backgroundAttachment Css.local
        ]


bg_scroll : Css.Style
bg_scroll =
    Css.batch
        [ Css.backgroundAttachment Css.scroll
        ]


bg_transparent : Css.Style
bg_transparent =
    Css.batch
        [ Css.backgroundColor Css.transparent
        ]


bg_current : Css.Style
bg_current =
    Css.batch
        [ Css.backgroundColor Css.currentColor
        ]


bg_black : Css.Style
bg_black =
    Css.batch
        [ Css.backgroundColor (Css.hex "#000")
        ]


bg_white : Css.Style
bg_white =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fff")
        ]


bg_gray_100 : Css.Style
bg_gray_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#f7fafc")
        ]


bg_gray_200 : Css.Style
bg_gray_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#edf2f7")
        ]


bg_gray_300 : Css.Style
bg_gray_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#e2e8f0")
        ]


bg_gray_400 : Css.Style
bg_gray_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#cbd5e0")
        ]


bg_gray_500 : Css.Style
bg_gray_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#a0aec0")
        ]


bg_gray_600 : Css.Style
bg_gray_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#718096")
        ]


bg_gray_700 : Css.Style
bg_gray_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#4a5568")
        ]


bg_gray_800 : Css.Style
bg_gray_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#2d3748")
        ]


bg_gray_900 : Css.Style
bg_gray_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#1a202c")
        ]


bg_red_100 : Css.Style
bg_red_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fff5f5")
        ]


bg_red_200 : Css.Style
bg_red_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fed7d7")
        ]


bg_red_300 : Css.Style
bg_red_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#feb2b2")
        ]


bg_red_400 : Css.Style
bg_red_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fc8181")
        ]


bg_red_500 : Css.Style
bg_red_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#f56565")
        ]


bg_red_600 : Css.Style
bg_red_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#e53e3e")
        ]


bg_red_700 : Css.Style
bg_red_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#c53030")
        ]


bg_red_800 : Css.Style
bg_red_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#9b2c2c")
        ]


bg_red_900 : Css.Style
bg_red_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#742a2a")
        ]


bg_orange_100 : Css.Style
bg_orange_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fffaf0")
        ]


bg_orange_200 : Css.Style
bg_orange_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#feebc8")
        ]


bg_orange_300 : Css.Style
bg_orange_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fbd38d")
        ]


bg_orange_400 : Css.Style
bg_orange_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#f6ad55")
        ]


bg_orange_500 : Css.Style
bg_orange_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#ed8936")
        ]


bg_orange_600 : Css.Style
bg_orange_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#dd6b20")
        ]


bg_orange_700 : Css.Style
bg_orange_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#c05621")
        ]


bg_orange_800 : Css.Style
bg_orange_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#9c4221")
        ]


bg_orange_900 : Css.Style
bg_orange_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#7b341e")
        ]


bg_yellow_100 : Css.Style
bg_yellow_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fffff0")
        ]


bg_yellow_200 : Css.Style
bg_yellow_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fefcbf")
        ]


bg_yellow_300 : Css.Style
bg_yellow_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#faf089")
        ]


bg_yellow_400 : Css.Style
bg_yellow_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#f6e05e")
        ]


bg_yellow_500 : Css.Style
bg_yellow_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#ecc94b")
        ]


bg_yellow_600 : Css.Style
bg_yellow_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#d69e2e")
        ]


bg_yellow_700 : Css.Style
bg_yellow_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#b7791f")
        ]


bg_yellow_800 : Css.Style
bg_yellow_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#975a16")
        ]


bg_yellow_900 : Css.Style
bg_yellow_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#744210")
        ]


bg_green_100 : Css.Style
bg_green_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#f0fff4")
        ]


bg_green_200 : Css.Style
bg_green_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#c6f6d5")
        ]


bg_green_300 : Css.Style
bg_green_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#9ae6b4")
        ]


bg_green_400 : Css.Style
bg_green_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#68d391")
        ]


bg_green_500 : Css.Style
bg_green_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#48bb78")
        ]


bg_green_600 : Css.Style
bg_green_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#38a169")
        ]


bg_green_700 : Css.Style
bg_green_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#2f855a")
        ]


bg_green_800 : Css.Style
bg_green_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#276749")
        ]


bg_green_900 : Css.Style
bg_green_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#22543d")
        ]


bg_teal_100 : Css.Style
bg_teal_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#e6fffa")
        ]


bg_teal_200 : Css.Style
bg_teal_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#b2f5ea")
        ]


bg_teal_300 : Css.Style
bg_teal_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#81e6d9")
        ]


bg_teal_400 : Css.Style
bg_teal_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#4fd1c5")
        ]


bg_teal_500 : Css.Style
bg_teal_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#38b2ac")
        ]


bg_teal_600 : Css.Style
bg_teal_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#319795")
        ]


bg_teal_700 : Css.Style
bg_teal_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#2c7a7b")
        ]


bg_teal_800 : Css.Style
bg_teal_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#285e61")
        ]


bg_teal_900 : Css.Style
bg_teal_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#234e52")
        ]


bg_blue_100 : Css.Style
bg_blue_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#ebf8ff")
        ]


bg_blue_200 : Css.Style
bg_blue_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#bee3f8")
        ]


bg_blue_300 : Css.Style
bg_blue_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#90cdf4")
        ]


bg_blue_400 : Css.Style
bg_blue_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#63b3ed")
        ]


bg_blue_500 : Css.Style
bg_blue_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#4299e1")
        ]


bg_blue_600 : Css.Style
bg_blue_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#3182ce")
        ]


bg_blue_700 : Css.Style
bg_blue_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#2b6cb0")
        ]


bg_blue_800 : Css.Style
bg_blue_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#2c5282")
        ]


bg_blue_900 : Css.Style
bg_blue_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#2a4365")
        ]


bg_indigo_100 : Css.Style
bg_indigo_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#ebf4ff")
        ]


bg_indigo_200 : Css.Style
bg_indigo_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#c3dafe")
        ]


bg_indigo_300 : Css.Style
bg_indigo_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#a3bffa")
        ]


bg_indigo_400 : Css.Style
bg_indigo_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#7f9cf5")
        ]


bg_indigo_500 : Css.Style
bg_indigo_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#667eea")
        ]


bg_indigo_600 : Css.Style
bg_indigo_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#5a67d8")
        ]


bg_indigo_700 : Css.Style
bg_indigo_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#4c51bf")
        ]


bg_indigo_800 : Css.Style
bg_indigo_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#434190")
        ]


bg_indigo_900 : Css.Style
bg_indigo_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#3c366b")
        ]


bg_purple_100 : Css.Style
bg_purple_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#faf5ff")
        ]


bg_purple_200 : Css.Style
bg_purple_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#e9d8fd")
        ]


bg_purple_300 : Css.Style
bg_purple_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#d6bcfa")
        ]


bg_purple_400 : Css.Style
bg_purple_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#b794f4")
        ]


bg_purple_500 : Css.Style
bg_purple_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#9f7aea")
        ]


bg_purple_600 : Css.Style
bg_purple_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#805ad5")
        ]


bg_purple_700 : Css.Style
bg_purple_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#6b46c1")
        ]


bg_purple_800 : Css.Style
bg_purple_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#553c9a")
        ]


bg_purple_900 : Css.Style
bg_purple_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#44337a")
        ]


bg_pink_100 : Css.Style
bg_pink_100 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fff5f7")
        ]


bg_pink_200 : Css.Style
bg_pink_200 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fed7e2")
        ]


bg_pink_300 : Css.Style
bg_pink_300 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#fbb6ce")
        ]


bg_pink_400 : Css.Style
bg_pink_400 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#f687b3")
        ]


bg_pink_500 : Css.Style
bg_pink_500 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#ed64a6")
        ]


bg_pink_600 : Css.Style
bg_pink_600 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#d53f8c")
        ]


bg_pink_700 : Css.Style
bg_pink_700 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#b83280")
        ]


bg_pink_800 : Css.Style
bg_pink_800 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#97266d")
        ]


bg_pink_900 : Css.Style
bg_pink_900 =
    Css.batch
        [ Css.backgroundColor (Css.hex "#702459")
        ]


hover__bg_transparent : Css.Style
hover__bg_transparent =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor Css.transparent
            ]
        ]


hover__bg_current : Css.Style
hover__bg_current =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor Css.currentColor
            ]
        ]


hover__bg_black : Css.Style
hover__bg_black =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#000")
            ]
        ]


hover__bg_white : Css.Style
hover__bg_white =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fff")
            ]
        ]


hover__bg_gray_100 : Css.Style
hover__bg_gray_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#f7fafc")
            ]
        ]


hover__bg_gray_200 : Css.Style
hover__bg_gray_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#edf2f7")
            ]
        ]


hover__bg_gray_300 : Css.Style
hover__bg_gray_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#e2e8f0")
            ]
        ]


hover__bg_gray_400 : Css.Style
hover__bg_gray_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#cbd5e0")
            ]
        ]


hover__bg_gray_500 : Css.Style
hover__bg_gray_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#a0aec0")
            ]
        ]


hover__bg_gray_600 : Css.Style
hover__bg_gray_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#718096")
            ]
        ]


hover__bg_gray_700 : Css.Style
hover__bg_gray_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#4a5568")
            ]
        ]


hover__bg_gray_800 : Css.Style
hover__bg_gray_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#2d3748")
            ]
        ]


hover__bg_gray_900 : Css.Style
hover__bg_gray_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#1a202c")
            ]
        ]


hover__bg_red_100 : Css.Style
hover__bg_red_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fff5f5")
            ]
        ]


hover__bg_red_200 : Css.Style
hover__bg_red_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fed7d7")
            ]
        ]


hover__bg_red_300 : Css.Style
hover__bg_red_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#feb2b2")
            ]
        ]


hover__bg_red_400 : Css.Style
hover__bg_red_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fc8181")
            ]
        ]


hover__bg_red_500 : Css.Style
hover__bg_red_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#f56565")
            ]
        ]


hover__bg_red_600 : Css.Style
hover__bg_red_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#e53e3e")
            ]
        ]


hover__bg_red_700 : Css.Style
hover__bg_red_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#c53030")
            ]
        ]


hover__bg_red_800 : Css.Style
hover__bg_red_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#9b2c2c")
            ]
        ]


hover__bg_red_900 : Css.Style
hover__bg_red_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#742a2a")
            ]
        ]


hover__bg_orange_100 : Css.Style
hover__bg_orange_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fffaf0")
            ]
        ]


hover__bg_orange_200 : Css.Style
hover__bg_orange_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#feebc8")
            ]
        ]


hover__bg_orange_300 : Css.Style
hover__bg_orange_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fbd38d")
            ]
        ]


hover__bg_orange_400 : Css.Style
hover__bg_orange_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#f6ad55")
            ]
        ]


hover__bg_orange_500 : Css.Style
hover__bg_orange_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#ed8936")
            ]
        ]


hover__bg_orange_600 : Css.Style
hover__bg_orange_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#dd6b20")
            ]
        ]


hover__bg_orange_700 : Css.Style
hover__bg_orange_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#c05621")
            ]
        ]


hover__bg_orange_800 : Css.Style
hover__bg_orange_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#9c4221")
            ]
        ]


hover__bg_orange_900 : Css.Style
hover__bg_orange_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#7b341e")
            ]
        ]


hover__bg_yellow_100 : Css.Style
hover__bg_yellow_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fffff0")
            ]
        ]


hover__bg_yellow_200 : Css.Style
hover__bg_yellow_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fefcbf")
            ]
        ]


hover__bg_yellow_300 : Css.Style
hover__bg_yellow_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#faf089")
            ]
        ]


hover__bg_yellow_400 : Css.Style
hover__bg_yellow_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#f6e05e")
            ]
        ]


hover__bg_yellow_500 : Css.Style
hover__bg_yellow_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#ecc94b")
            ]
        ]


hover__bg_yellow_600 : Css.Style
hover__bg_yellow_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#d69e2e")
            ]
        ]


hover__bg_yellow_700 : Css.Style
hover__bg_yellow_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#b7791f")
            ]
        ]


hover__bg_yellow_800 : Css.Style
hover__bg_yellow_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#975a16")
            ]
        ]


hover__bg_yellow_900 : Css.Style
hover__bg_yellow_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#744210")
            ]
        ]


hover__bg_green_100 : Css.Style
hover__bg_green_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#f0fff4")
            ]
        ]


hover__bg_green_200 : Css.Style
hover__bg_green_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#c6f6d5")
            ]
        ]


hover__bg_green_300 : Css.Style
hover__bg_green_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#9ae6b4")
            ]
        ]


hover__bg_green_400 : Css.Style
hover__bg_green_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#68d391")
            ]
        ]


hover__bg_green_500 : Css.Style
hover__bg_green_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#48bb78")
            ]
        ]


hover__bg_green_600 : Css.Style
hover__bg_green_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#38a169")
            ]
        ]


hover__bg_green_700 : Css.Style
hover__bg_green_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#2f855a")
            ]
        ]


hover__bg_green_800 : Css.Style
hover__bg_green_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#276749")
            ]
        ]


hover__bg_green_900 : Css.Style
hover__bg_green_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#22543d")
            ]
        ]


hover__bg_teal_100 : Css.Style
hover__bg_teal_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#e6fffa")
            ]
        ]


hover__bg_teal_200 : Css.Style
hover__bg_teal_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#b2f5ea")
            ]
        ]


hover__bg_teal_300 : Css.Style
hover__bg_teal_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#81e6d9")
            ]
        ]


hover__bg_teal_400 : Css.Style
hover__bg_teal_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#4fd1c5")
            ]
        ]


hover__bg_teal_500 : Css.Style
hover__bg_teal_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#38b2ac")
            ]
        ]


hover__bg_teal_600 : Css.Style
hover__bg_teal_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#319795")
            ]
        ]


hover__bg_teal_700 : Css.Style
hover__bg_teal_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#2c7a7b")
            ]
        ]


hover__bg_teal_800 : Css.Style
hover__bg_teal_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#285e61")
            ]
        ]


hover__bg_teal_900 : Css.Style
hover__bg_teal_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#234e52")
            ]
        ]


hover__bg_blue_100 : Css.Style
hover__bg_blue_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#ebf8ff")
            ]
        ]


hover__bg_blue_200 : Css.Style
hover__bg_blue_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#bee3f8")
            ]
        ]


hover__bg_blue_300 : Css.Style
hover__bg_blue_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#90cdf4")
            ]
        ]


hover__bg_blue_400 : Css.Style
hover__bg_blue_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#63b3ed")
            ]
        ]


hover__bg_blue_500 : Css.Style
hover__bg_blue_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#4299e1")
            ]
        ]


hover__bg_blue_600 : Css.Style
hover__bg_blue_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#3182ce")
            ]
        ]


hover__bg_blue_700 : Css.Style
hover__bg_blue_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#2b6cb0")
            ]
        ]


hover__bg_blue_800 : Css.Style
hover__bg_blue_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#2c5282")
            ]
        ]


hover__bg_blue_900 : Css.Style
hover__bg_blue_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#2a4365")
            ]
        ]


hover__bg_indigo_100 : Css.Style
hover__bg_indigo_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#ebf4ff")
            ]
        ]


hover__bg_indigo_200 : Css.Style
hover__bg_indigo_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#c3dafe")
            ]
        ]


hover__bg_indigo_300 : Css.Style
hover__bg_indigo_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#a3bffa")
            ]
        ]


hover__bg_indigo_400 : Css.Style
hover__bg_indigo_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#7f9cf5")
            ]
        ]


hover__bg_indigo_500 : Css.Style
hover__bg_indigo_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#667eea")
            ]
        ]


hover__bg_indigo_600 : Css.Style
hover__bg_indigo_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#5a67d8")
            ]
        ]


hover__bg_indigo_700 : Css.Style
hover__bg_indigo_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#4c51bf")
            ]
        ]


hover__bg_indigo_800 : Css.Style
hover__bg_indigo_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#434190")
            ]
        ]


hover__bg_indigo_900 : Css.Style
hover__bg_indigo_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#3c366b")
            ]
        ]


hover__bg_purple_100 : Css.Style
hover__bg_purple_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#faf5ff")
            ]
        ]


hover__bg_purple_200 : Css.Style
hover__bg_purple_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#e9d8fd")
            ]
        ]


hover__bg_purple_300 : Css.Style
hover__bg_purple_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#d6bcfa")
            ]
        ]


hover__bg_purple_400 : Css.Style
hover__bg_purple_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#b794f4")
            ]
        ]


hover__bg_purple_500 : Css.Style
hover__bg_purple_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#9f7aea")
            ]
        ]


hover__bg_purple_600 : Css.Style
hover__bg_purple_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#805ad5")
            ]
        ]


hover__bg_purple_700 : Css.Style
hover__bg_purple_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#6b46c1")
            ]
        ]


hover__bg_purple_800 : Css.Style
hover__bg_purple_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#553c9a")
            ]
        ]


hover__bg_purple_900 : Css.Style
hover__bg_purple_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#44337a")
            ]
        ]


hover__bg_pink_100 : Css.Style
hover__bg_pink_100 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fff5f7")
            ]
        ]


hover__bg_pink_200 : Css.Style
hover__bg_pink_200 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fed7e2")
            ]
        ]


hover__bg_pink_300 : Css.Style
hover__bg_pink_300 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#fbb6ce")
            ]
        ]


hover__bg_pink_400 : Css.Style
hover__bg_pink_400 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#f687b3")
            ]
        ]


hover__bg_pink_500 : Css.Style
hover__bg_pink_500 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#ed64a6")
            ]
        ]


hover__bg_pink_600 : Css.Style
hover__bg_pink_600 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#d53f8c")
            ]
        ]


hover__bg_pink_700 : Css.Style
hover__bg_pink_700 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#b83280")
            ]
        ]


hover__bg_pink_800 : Css.Style
hover__bg_pink_800 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#97266d")
            ]
        ]


hover__bg_pink_900 : Css.Style
hover__bg_pink_900 =
    Css.batch
        [ Css.hover
            [ Css.backgroundColor (Css.hex "#702459")
            ]
        ]


focus__bg_transparent : Css.Style
focus__bg_transparent =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor Css.transparent
            ]
        ]


focus__bg_current : Css.Style
focus__bg_current =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor Css.currentColor
            ]
        ]


focus__bg_black : Css.Style
focus__bg_black =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#000")
            ]
        ]


focus__bg_white : Css.Style
focus__bg_white =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fff")
            ]
        ]


focus__bg_gray_100 : Css.Style
focus__bg_gray_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#f7fafc")
            ]
        ]


focus__bg_gray_200 : Css.Style
focus__bg_gray_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#edf2f7")
            ]
        ]


focus__bg_gray_300 : Css.Style
focus__bg_gray_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#e2e8f0")
            ]
        ]


focus__bg_gray_400 : Css.Style
focus__bg_gray_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#cbd5e0")
            ]
        ]


focus__bg_gray_500 : Css.Style
focus__bg_gray_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#a0aec0")
            ]
        ]


focus__bg_gray_600 : Css.Style
focus__bg_gray_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#718096")
            ]
        ]


focus__bg_gray_700 : Css.Style
focus__bg_gray_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#4a5568")
            ]
        ]


focus__bg_gray_800 : Css.Style
focus__bg_gray_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#2d3748")
            ]
        ]


focus__bg_gray_900 : Css.Style
focus__bg_gray_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#1a202c")
            ]
        ]


focus__bg_red_100 : Css.Style
focus__bg_red_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fff5f5")
            ]
        ]


focus__bg_red_200 : Css.Style
focus__bg_red_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fed7d7")
            ]
        ]


focus__bg_red_300 : Css.Style
focus__bg_red_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#feb2b2")
            ]
        ]


focus__bg_red_400 : Css.Style
focus__bg_red_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fc8181")
            ]
        ]


focus__bg_red_500 : Css.Style
focus__bg_red_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#f56565")
            ]
        ]


focus__bg_red_600 : Css.Style
focus__bg_red_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#e53e3e")
            ]
        ]


focus__bg_red_700 : Css.Style
focus__bg_red_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#c53030")
            ]
        ]


focus__bg_red_800 : Css.Style
focus__bg_red_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#9b2c2c")
            ]
        ]


focus__bg_red_900 : Css.Style
focus__bg_red_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#742a2a")
            ]
        ]


focus__bg_orange_100 : Css.Style
focus__bg_orange_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fffaf0")
            ]
        ]


focus__bg_orange_200 : Css.Style
focus__bg_orange_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#feebc8")
            ]
        ]


focus__bg_orange_300 : Css.Style
focus__bg_orange_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fbd38d")
            ]
        ]


focus__bg_orange_400 : Css.Style
focus__bg_orange_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#f6ad55")
            ]
        ]


focus__bg_orange_500 : Css.Style
focus__bg_orange_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#ed8936")
            ]
        ]


focus__bg_orange_600 : Css.Style
focus__bg_orange_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#dd6b20")
            ]
        ]


focus__bg_orange_700 : Css.Style
focus__bg_orange_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#c05621")
            ]
        ]


focus__bg_orange_800 : Css.Style
focus__bg_orange_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#9c4221")
            ]
        ]


focus__bg_orange_900 : Css.Style
focus__bg_orange_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#7b341e")
            ]
        ]


focus__bg_yellow_100 : Css.Style
focus__bg_yellow_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fffff0")
            ]
        ]


focus__bg_yellow_200 : Css.Style
focus__bg_yellow_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fefcbf")
            ]
        ]


focus__bg_yellow_300 : Css.Style
focus__bg_yellow_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#faf089")
            ]
        ]


focus__bg_yellow_400 : Css.Style
focus__bg_yellow_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#f6e05e")
            ]
        ]


focus__bg_yellow_500 : Css.Style
focus__bg_yellow_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#ecc94b")
            ]
        ]


focus__bg_yellow_600 : Css.Style
focus__bg_yellow_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#d69e2e")
            ]
        ]


focus__bg_yellow_700 : Css.Style
focus__bg_yellow_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#b7791f")
            ]
        ]


focus__bg_yellow_800 : Css.Style
focus__bg_yellow_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#975a16")
            ]
        ]


focus__bg_yellow_900 : Css.Style
focus__bg_yellow_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#744210")
            ]
        ]


focus__bg_green_100 : Css.Style
focus__bg_green_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#f0fff4")
            ]
        ]


focus__bg_green_200 : Css.Style
focus__bg_green_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#c6f6d5")
            ]
        ]


focus__bg_green_300 : Css.Style
focus__bg_green_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#9ae6b4")
            ]
        ]


focus__bg_green_400 : Css.Style
focus__bg_green_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#68d391")
            ]
        ]


focus__bg_green_500 : Css.Style
focus__bg_green_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#48bb78")
            ]
        ]


focus__bg_green_600 : Css.Style
focus__bg_green_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#38a169")
            ]
        ]


focus__bg_green_700 : Css.Style
focus__bg_green_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#2f855a")
            ]
        ]


focus__bg_green_800 : Css.Style
focus__bg_green_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#276749")
            ]
        ]


focus__bg_green_900 : Css.Style
focus__bg_green_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#22543d")
            ]
        ]


focus__bg_teal_100 : Css.Style
focus__bg_teal_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#e6fffa")
            ]
        ]


focus__bg_teal_200 : Css.Style
focus__bg_teal_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#b2f5ea")
            ]
        ]


focus__bg_teal_300 : Css.Style
focus__bg_teal_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#81e6d9")
            ]
        ]


focus__bg_teal_400 : Css.Style
focus__bg_teal_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#4fd1c5")
            ]
        ]


focus__bg_teal_500 : Css.Style
focus__bg_teal_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#38b2ac")
            ]
        ]


focus__bg_teal_600 : Css.Style
focus__bg_teal_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#319795")
            ]
        ]


focus__bg_teal_700 : Css.Style
focus__bg_teal_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#2c7a7b")
            ]
        ]


focus__bg_teal_800 : Css.Style
focus__bg_teal_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#285e61")
            ]
        ]


focus__bg_teal_900 : Css.Style
focus__bg_teal_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#234e52")
            ]
        ]


focus__bg_blue_100 : Css.Style
focus__bg_blue_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#ebf8ff")
            ]
        ]


focus__bg_blue_200 : Css.Style
focus__bg_blue_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#bee3f8")
            ]
        ]


focus__bg_blue_300 : Css.Style
focus__bg_blue_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#90cdf4")
            ]
        ]


focus__bg_blue_400 : Css.Style
focus__bg_blue_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#63b3ed")
            ]
        ]


focus__bg_blue_500 : Css.Style
focus__bg_blue_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#4299e1")
            ]
        ]


focus__bg_blue_600 : Css.Style
focus__bg_blue_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#3182ce")
            ]
        ]


focus__bg_blue_700 : Css.Style
focus__bg_blue_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#2b6cb0")
            ]
        ]


focus__bg_blue_800 : Css.Style
focus__bg_blue_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#2c5282")
            ]
        ]


focus__bg_blue_900 : Css.Style
focus__bg_blue_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#2a4365")
            ]
        ]


focus__bg_indigo_100 : Css.Style
focus__bg_indigo_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#ebf4ff")
            ]
        ]


focus__bg_indigo_200 : Css.Style
focus__bg_indigo_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#c3dafe")
            ]
        ]


focus__bg_indigo_300 : Css.Style
focus__bg_indigo_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#a3bffa")
            ]
        ]


focus__bg_indigo_400 : Css.Style
focus__bg_indigo_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#7f9cf5")
            ]
        ]


focus__bg_indigo_500 : Css.Style
focus__bg_indigo_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#667eea")
            ]
        ]


focus__bg_indigo_600 : Css.Style
focus__bg_indigo_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#5a67d8")
            ]
        ]


focus__bg_indigo_700 : Css.Style
focus__bg_indigo_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#4c51bf")
            ]
        ]


focus__bg_indigo_800 : Css.Style
focus__bg_indigo_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#434190")
            ]
        ]


focus__bg_indigo_900 : Css.Style
focus__bg_indigo_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#3c366b")
            ]
        ]


focus__bg_purple_100 : Css.Style
focus__bg_purple_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#faf5ff")
            ]
        ]


focus__bg_purple_200 : Css.Style
focus__bg_purple_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#e9d8fd")
            ]
        ]


focus__bg_purple_300 : Css.Style
focus__bg_purple_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#d6bcfa")
            ]
        ]


focus__bg_purple_400 : Css.Style
focus__bg_purple_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#b794f4")
            ]
        ]


focus__bg_purple_500 : Css.Style
focus__bg_purple_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#9f7aea")
            ]
        ]


focus__bg_purple_600 : Css.Style
focus__bg_purple_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#805ad5")
            ]
        ]


focus__bg_purple_700 : Css.Style
focus__bg_purple_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#6b46c1")
            ]
        ]


focus__bg_purple_800 : Css.Style
focus__bg_purple_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#553c9a")
            ]
        ]


focus__bg_purple_900 : Css.Style
focus__bg_purple_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#44337a")
            ]
        ]


focus__bg_pink_100 : Css.Style
focus__bg_pink_100 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fff5f7")
            ]
        ]


focus__bg_pink_200 : Css.Style
focus__bg_pink_200 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fed7e2")
            ]
        ]


focus__bg_pink_300 : Css.Style
focus__bg_pink_300 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#fbb6ce")
            ]
        ]


focus__bg_pink_400 : Css.Style
focus__bg_pink_400 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#f687b3")
            ]
        ]


focus__bg_pink_500 : Css.Style
focus__bg_pink_500 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#ed64a6")
            ]
        ]


focus__bg_pink_600 : Css.Style
focus__bg_pink_600 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#d53f8c")
            ]
        ]


focus__bg_pink_700 : Css.Style
focus__bg_pink_700 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#b83280")
            ]
        ]


focus__bg_pink_800 : Css.Style
focus__bg_pink_800 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#97266d")
            ]
        ]


focus__bg_pink_900 : Css.Style
focus__bg_pink_900 =
    Css.batch
        [ Css.focus
            [ Css.backgroundColor (Css.hex "#702459")
            ]
        ]


bg_bottom : Css.Style
bg_bottom =
    Css.batch
        [ Css.property "background-position" "bottom"
        ]


bg_center : Css.Style
bg_center =
    Css.batch
        [ Css.property "background-position" "center"
        ]


bg_left : Css.Style
bg_left =
    Css.batch
        [ Css.property "background-position" "left"
        ]


bg_left_bottom : Css.Style
bg_left_bottom =
    Css.batch
        [ Css.property "background-position" "left bottom"
        ]


bg_left_top : Css.Style
bg_left_top =
    Css.batch
        [ Css.property "background-position" "left top"
        ]


bg_right : Css.Style
bg_right =
    Css.batch
        [ Css.property "background-position" "right"
        ]


bg_right_bottom : Css.Style
bg_right_bottom =
    Css.batch
        [ Css.property "background-position" "right bottom"
        ]


bg_right_top : Css.Style
bg_right_top =
    Css.batch
        [ Css.property "background-position" "right top"
        ]


bg_top : Css.Style
bg_top =
    Css.batch
        [ Css.property "background-position" "top"
        ]


bg_repeat : Css.Style
bg_repeat =
    Css.batch
        [ Css.backgroundRepeat Css.repeat
        ]


bg_no_repeat : Css.Style
bg_no_repeat =
    Css.batch
        [ Css.backgroundRepeat Css.noRepeat
        ]


bg_repeat_x : Css.Style
bg_repeat_x =
    Css.batch
        [ Css.backgroundRepeat Css.repeatX
        ]


bg_repeat_y : Css.Style
bg_repeat_y =
    Css.batch
        [ Css.backgroundRepeat Css.repeatY
        ]


bg_repeat_round : Css.Style
bg_repeat_round =
    Css.batch
        [ Css.backgroundRepeat Css.round
        ]


bg_repeat_space : Css.Style
bg_repeat_space =
    Css.batch
        [ Css.backgroundRepeat Css.space
        ]


bg_auto : Css.Style
bg_auto =
    Css.batch
        [ Css.backgroundSize Css.auto
        ]


bg_cover : Css.Style
bg_cover =
    Css.batch
        [ Css.backgroundSize Css.cover
        ]


bg_contain : Css.Style
bg_contain =
    Css.batch
        [ Css.backgroundSize Css.contain
        ]


border_collapse : Css.Style
border_collapse =
    Css.batch
        [ Css.borderCollapse Css.collapse
        ]


border_separate : Css.Style
border_separate =
    Css.batch
        [ Css.borderCollapse Css.separate
        ]


border_transparent : Css.Style
border_transparent =
    Css.batch
        [ Css.borderColor Css.transparent
        ]


border_current : Css.Style
border_current =
    Css.batch
        [ Css.borderColor Css.currentColor
        ]


border_black : Css.Style
border_black =
    Css.batch
        [ Css.borderColor (Css.hex "#000")
        ]


border_white : Css.Style
border_white =
    Css.batch
        [ Css.borderColor (Css.hex "#fff")
        ]


border_gray_100 : Css.Style
border_gray_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#f7fafc")
        ]


border_gray_200 : Css.Style
border_gray_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#edf2f7")
        ]


border_gray_300 : Css.Style
border_gray_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#e2e8f0")
        ]


border_gray_400 : Css.Style
border_gray_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#cbd5e0")
        ]


border_gray_500 : Css.Style
border_gray_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#a0aec0")
        ]


border_gray_600 : Css.Style
border_gray_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#718096")
        ]


border_gray_700 : Css.Style
border_gray_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#4a5568")
        ]


border_gray_800 : Css.Style
border_gray_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#2d3748")
        ]


border_gray_900 : Css.Style
border_gray_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#1a202c")
        ]


border_red_100 : Css.Style
border_red_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fff5f5")
        ]


border_red_200 : Css.Style
border_red_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#fed7d7")
        ]


border_red_300 : Css.Style
border_red_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#feb2b2")
        ]


border_red_400 : Css.Style
border_red_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#fc8181")
        ]


border_red_500 : Css.Style
border_red_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#f56565")
        ]


border_red_600 : Css.Style
border_red_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#e53e3e")
        ]


border_red_700 : Css.Style
border_red_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#c53030")
        ]


border_red_800 : Css.Style
border_red_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#9b2c2c")
        ]


border_red_900 : Css.Style
border_red_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#742a2a")
        ]


border_orange_100 : Css.Style
border_orange_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fffaf0")
        ]


border_orange_200 : Css.Style
border_orange_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#feebc8")
        ]


border_orange_300 : Css.Style
border_orange_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#fbd38d")
        ]


border_orange_400 : Css.Style
border_orange_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#f6ad55")
        ]


border_orange_500 : Css.Style
border_orange_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#ed8936")
        ]


border_orange_600 : Css.Style
border_orange_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#dd6b20")
        ]


border_orange_700 : Css.Style
border_orange_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#c05621")
        ]


border_orange_800 : Css.Style
border_orange_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#9c4221")
        ]


border_orange_900 : Css.Style
border_orange_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#7b341e")
        ]


border_yellow_100 : Css.Style
border_yellow_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fffff0")
        ]


border_yellow_200 : Css.Style
border_yellow_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#fefcbf")
        ]


border_yellow_300 : Css.Style
border_yellow_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#faf089")
        ]


border_yellow_400 : Css.Style
border_yellow_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#f6e05e")
        ]


border_yellow_500 : Css.Style
border_yellow_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#ecc94b")
        ]


border_yellow_600 : Css.Style
border_yellow_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#d69e2e")
        ]


border_yellow_700 : Css.Style
border_yellow_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#b7791f")
        ]


border_yellow_800 : Css.Style
border_yellow_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#975a16")
        ]


border_yellow_900 : Css.Style
border_yellow_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#744210")
        ]


border_green_100 : Css.Style
border_green_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#f0fff4")
        ]


border_green_200 : Css.Style
border_green_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#c6f6d5")
        ]


border_green_300 : Css.Style
border_green_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#9ae6b4")
        ]


border_green_400 : Css.Style
border_green_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#68d391")
        ]


border_green_500 : Css.Style
border_green_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#48bb78")
        ]


border_green_600 : Css.Style
border_green_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#38a169")
        ]


border_green_700 : Css.Style
border_green_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#2f855a")
        ]


border_green_800 : Css.Style
border_green_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#276749")
        ]


border_green_900 : Css.Style
border_green_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#22543d")
        ]


border_teal_100 : Css.Style
border_teal_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#e6fffa")
        ]


border_teal_200 : Css.Style
border_teal_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#b2f5ea")
        ]


border_teal_300 : Css.Style
border_teal_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#81e6d9")
        ]


border_teal_400 : Css.Style
border_teal_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#4fd1c5")
        ]


border_teal_500 : Css.Style
border_teal_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#38b2ac")
        ]


border_teal_600 : Css.Style
border_teal_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#319795")
        ]


border_teal_700 : Css.Style
border_teal_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#2c7a7b")
        ]


border_teal_800 : Css.Style
border_teal_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#285e61")
        ]


border_teal_900 : Css.Style
border_teal_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#234e52")
        ]


border_blue_100 : Css.Style
border_blue_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#ebf8ff")
        ]


border_blue_200 : Css.Style
border_blue_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#bee3f8")
        ]


border_blue_300 : Css.Style
border_blue_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#90cdf4")
        ]


border_blue_400 : Css.Style
border_blue_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#63b3ed")
        ]


border_blue_500 : Css.Style
border_blue_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#4299e1")
        ]


border_blue_600 : Css.Style
border_blue_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#3182ce")
        ]


border_blue_700 : Css.Style
border_blue_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#2b6cb0")
        ]


border_blue_800 : Css.Style
border_blue_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#2c5282")
        ]


border_blue_900 : Css.Style
border_blue_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#2a4365")
        ]


border_indigo_100 : Css.Style
border_indigo_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#ebf4ff")
        ]


border_indigo_200 : Css.Style
border_indigo_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#c3dafe")
        ]


border_indigo_300 : Css.Style
border_indigo_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#a3bffa")
        ]


border_indigo_400 : Css.Style
border_indigo_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#7f9cf5")
        ]


border_indigo_500 : Css.Style
border_indigo_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#667eea")
        ]


border_indigo_600 : Css.Style
border_indigo_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#5a67d8")
        ]


border_indigo_700 : Css.Style
border_indigo_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#4c51bf")
        ]


border_indigo_800 : Css.Style
border_indigo_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#434190")
        ]


border_indigo_900 : Css.Style
border_indigo_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#3c366b")
        ]


border_purple_100 : Css.Style
border_purple_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#faf5ff")
        ]


border_purple_200 : Css.Style
border_purple_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#e9d8fd")
        ]


border_purple_300 : Css.Style
border_purple_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#d6bcfa")
        ]


border_purple_400 : Css.Style
border_purple_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#b794f4")
        ]


border_purple_500 : Css.Style
border_purple_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#9f7aea")
        ]


border_purple_600 : Css.Style
border_purple_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#805ad5")
        ]


border_purple_700 : Css.Style
border_purple_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#6b46c1")
        ]


border_purple_800 : Css.Style
border_purple_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#553c9a")
        ]


border_purple_900 : Css.Style
border_purple_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#44337a")
        ]


border_pink_100 : Css.Style
border_pink_100 =
    Css.batch
        [ Css.borderColor (Css.hex "#fff5f7")
        ]


border_pink_200 : Css.Style
border_pink_200 =
    Css.batch
        [ Css.borderColor (Css.hex "#fed7e2")
        ]


border_pink_300 : Css.Style
border_pink_300 =
    Css.batch
        [ Css.borderColor (Css.hex "#fbb6ce")
        ]


border_pink_400 : Css.Style
border_pink_400 =
    Css.batch
        [ Css.borderColor (Css.hex "#f687b3")
        ]


border_pink_500 : Css.Style
border_pink_500 =
    Css.batch
        [ Css.borderColor (Css.hex "#ed64a6")
        ]


border_pink_600 : Css.Style
border_pink_600 =
    Css.batch
        [ Css.borderColor (Css.hex "#d53f8c")
        ]


border_pink_700 : Css.Style
border_pink_700 =
    Css.batch
        [ Css.borderColor (Css.hex "#b83280")
        ]


border_pink_800 : Css.Style
border_pink_800 =
    Css.batch
        [ Css.borderColor (Css.hex "#97266d")
        ]


border_pink_900 : Css.Style
border_pink_900 =
    Css.batch
        [ Css.borderColor (Css.hex "#702459")
        ]


hover__border_transparent : Css.Style
hover__border_transparent =
    Css.batch
        [ Css.hover
            [ Css.borderColor Css.transparent
            ]
        ]


hover__border_current : Css.Style
hover__border_current =
    Css.batch
        [ Css.hover
            [ Css.borderColor Css.currentColor
            ]
        ]


hover__border_black : Css.Style
hover__border_black =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#000")
            ]
        ]


hover__border_white : Css.Style
hover__border_white =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fff")
            ]
        ]


hover__border_gray_100 : Css.Style
hover__border_gray_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#f7fafc")
            ]
        ]


hover__border_gray_200 : Css.Style
hover__border_gray_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#edf2f7")
            ]
        ]


hover__border_gray_300 : Css.Style
hover__border_gray_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#e2e8f0")
            ]
        ]


hover__border_gray_400 : Css.Style
hover__border_gray_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#cbd5e0")
            ]
        ]


hover__border_gray_500 : Css.Style
hover__border_gray_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#a0aec0")
            ]
        ]


hover__border_gray_600 : Css.Style
hover__border_gray_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#718096")
            ]
        ]


hover__border_gray_700 : Css.Style
hover__border_gray_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#4a5568")
            ]
        ]


hover__border_gray_800 : Css.Style
hover__border_gray_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#2d3748")
            ]
        ]


hover__border_gray_900 : Css.Style
hover__border_gray_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#1a202c")
            ]
        ]


hover__border_red_100 : Css.Style
hover__border_red_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fff5f5")
            ]
        ]


hover__border_red_200 : Css.Style
hover__border_red_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fed7d7")
            ]
        ]


hover__border_red_300 : Css.Style
hover__border_red_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#feb2b2")
            ]
        ]


hover__border_red_400 : Css.Style
hover__border_red_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fc8181")
            ]
        ]


hover__border_red_500 : Css.Style
hover__border_red_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#f56565")
            ]
        ]


hover__border_red_600 : Css.Style
hover__border_red_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#e53e3e")
            ]
        ]


hover__border_red_700 : Css.Style
hover__border_red_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#c53030")
            ]
        ]


hover__border_red_800 : Css.Style
hover__border_red_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#9b2c2c")
            ]
        ]


hover__border_red_900 : Css.Style
hover__border_red_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#742a2a")
            ]
        ]


hover__border_orange_100 : Css.Style
hover__border_orange_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fffaf0")
            ]
        ]


hover__border_orange_200 : Css.Style
hover__border_orange_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#feebc8")
            ]
        ]


hover__border_orange_300 : Css.Style
hover__border_orange_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fbd38d")
            ]
        ]


hover__border_orange_400 : Css.Style
hover__border_orange_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#f6ad55")
            ]
        ]


hover__border_orange_500 : Css.Style
hover__border_orange_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#ed8936")
            ]
        ]


hover__border_orange_600 : Css.Style
hover__border_orange_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#dd6b20")
            ]
        ]


hover__border_orange_700 : Css.Style
hover__border_orange_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#c05621")
            ]
        ]


hover__border_orange_800 : Css.Style
hover__border_orange_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#9c4221")
            ]
        ]


hover__border_orange_900 : Css.Style
hover__border_orange_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#7b341e")
            ]
        ]


hover__border_yellow_100 : Css.Style
hover__border_yellow_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fffff0")
            ]
        ]


hover__border_yellow_200 : Css.Style
hover__border_yellow_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fefcbf")
            ]
        ]


hover__border_yellow_300 : Css.Style
hover__border_yellow_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#faf089")
            ]
        ]


hover__border_yellow_400 : Css.Style
hover__border_yellow_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#f6e05e")
            ]
        ]


hover__border_yellow_500 : Css.Style
hover__border_yellow_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#ecc94b")
            ]
        ]


hover__border_yellow_600 : Css.Style
hover__border_yellow_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#d69e2e")
            ]
        ]


hover__border_yellow_700 : Css.Style
hover__border_yellow_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#b7791f")
            ]
        ]


hover__border_yellow_800 : Css.Style
hover__border_yellow_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#975a16")
            ]
        ]


hover__border_yellow_900 : Css.Style
hover__border_yellow_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#744210")
            ]
        ]


hover__border_green_100 : Css.Style
hover__border_green_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#f0fff4")
            ]
        ]


hover__border_green_200 : Css.Style
hover__border_green_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#c6f6d5")
            ]
        ]


hover__border_green_300 : Css.Style
hover__border_green_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#9ae6b4")
            ]
        ]


hover__border_green_400 : Css.Style
hover__border_green_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#68d391")
            ]
        ]


hover__border_green_500 : Css.Style
hover__border_green_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#48bb78")
            ]
        ]


hover__border_green_600 : Css.Style
hover__border_green_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#38a169")
            ]
        ]


hover__border_green_700 : Css.Style
hover__border_green_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#2f855a")
            ]
        ]


hover__border_green_800 : Css.Style
hover__border_green_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#276749")
            ]
        ]


hover__border_green_900 : Css.Style
hover__border_green_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#22543d")
            ]
        ]


hover__border_teal_100 : Css.Style
hover__border_teal_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#e6fffa")
            ]
        ]


hover__border_teal_200 : Css.Style
hover__border_teal_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#b2f5ea")
            ]
        ]


hover__border_teal_300 : Css.Style
hover__border_teal_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#81e6d9")
            ]
        ]


hover__border_teal_400 : Css.Style
hover__border_teal_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#4fd1c5")
            ]
        ]


hover__border_teal_500 : Css.Style
hover__border_teal_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#38b2ac")
            ]
        ]


hover__border_teal_600 : Css.Style
hover__border_teal_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#319795")
            ]
        ]


hover__border_teal_700 : Css.Style
hover__border_teal_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#2c7a7b")
            ]
        ]


hover__border_teal_800 : Css.Style
hover__border_teal_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#285e61")
            ]
        ]


hover__border_teal_900 : Css.Style
hover__border_teal_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#234e52")
            ]
        ]


hover__border_blue_100 : Css.Style
hover__border_blue_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#ebf8ff")
            ]
        ]


hover__border_blue_200 : Css.Style
hover__border_blue_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#bee3f8")
            ]
        ]


hover__border_blue_300 : Css.Style
hover__border_blue_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#90cdf4")
            ]
        ]


hover__border_blue_400 : Css.Style
hover__border_blue_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#63b3ed")
            ]
        ]


hover__border_blue_500 : Css.Style
hover__border_blue_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#4299e1")
            ]
        ]


hover__border_blue_600 : Css.Style
hover__border_blue_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#3182ce")
            ]
        ]


hover__border_blue_700 : Css.Style
hover__border_blue_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#2b6cb0")
            ]
        ]


hover__border_blue_800 : Css.Style
hover__border_blue_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#2c5282")
            ]
        ]


hover__border_blue_900 : Css.Style
hover__border_blue_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#2a4365")
            ]
        ]


hover__border_indigo_100 : Css.Style
hover__border_indigo_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#ebf4ff")
            ]
        ]


hover__border_indigo_200 : Css.Style
hover__border_indigo_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#c3dafe")
            ]
        ]


hover__border_indigo_300 : Css.Style
hover__border_indigo_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#a3bffa")
            ]
        ]


hover__border_indigo_400 : Css.Style
hover__border_indigo_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#7f9cf5")
            ]
        ]


hover__border_indigo_500 : Css.Style
hover__border_indigo_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#667eea")
            ]
        ]


hover__border_indigo_600 : Css.Style
hover__border_indigo_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#5a67d8")
            ]
        ]


hover__border_indigo_700 : Css.Style
hover__border_indigo_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#4c51bf")
            ]
        ]


hover__border_indigo_800 : Css.Style
hover__border_indigo_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#434190")
            ]
        ]


hover__border_indigo_900 : Css.Style
hover__border_indigo_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#3c366b")
            ]
        ]


hover__border_purple_100 : Css.Style
hover__border_purple_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#faf5ff")
            ]
        ]


hover__border_purple_200 : Css.Style
hover__border_purple_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#e9d8fd")
            ]
        ]


hover__border_purple_300 : Css.Style
hover__border_purple_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#d6bcfa")
            ]
        ]


hover__border_purple_400 : Css.Style
hover__border_purple_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#b794f4")
            ]
        ]


hover__border_purple_500 : Css.Style
hover__border_purple_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#9f7aea")
            ]
        ]


hover__border_purple_600 : Css.Style
hover__border_purple_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#805ad5")
            ]
        ]


hover__border_purple_700 : Css.Style
hover__border_purple_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#6b46c1")
            ]
        ]


hover__border_purple_800 : Css.Style
hover__border_purple_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#553c9a")
            ]
        ]


hover__border_purple_900 : Css.Style
hover__border_purple_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#44337a")
            ]
        ]


hover__border_pink_100 : Css.Style
hover__border_pink_100 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fff5f7")
            ]
        ]


hover__border_pink_200 : Css.Style
hover__border_pink_200 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fed7e2")
            ]
        ]


hover__border_pink_300 : Css.Style
hover__border_pink_300 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#fbb6ce")
            ]
        ]


hover__border_pink_400 : Css.Style
hover__border_pink_400 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#f687b3")
            ]
        ]


hover__border_pink_500 : Css.Style
hover__border_pink_500 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#ed64a6")
            ]
        ]


hover__border_pink_600 : Css.Style
hover__border_pink_600 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#d53f8c")
            ]
        ]


hover__border_pink_700 : Css.Style
hover__border_pink_700 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#b83280")
            ]
        ]


hover__border_pink_800 : Css.Style
hover__border_pink_800 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#97266d")
            ]
        ]


hover__border_pink_900 : Css.Style
hover__border_pink_900 =
    Css.batch
        [ Css.hover
            [ Css.borderColor (Css.hex "#702459")
            ]
        ]


focus__border_transparent : Css.Style
focus__border_transparent =
    Css.batch
        [ Css.focus
            [ Css.borderColor Css.transparent
            ]
        ]


focus__border_current : Css.Style
focus__border_current =
    Css.batch
        [ Css.focus
            [ Css.borderColor Css.currentColor
            ]
        ]


focus__border_black : Css.Style
focus__border_black =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#000")
            ]
        ]


focus__border_white : Css.Style
focus__border_white =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fff")
            ]
        ]


focus__border_gray_100 : Css.Style
focus__border_gray_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#f7fafc")
            ]
        ]


focus__border_gray_200 : Css.Style
focus__border_gray_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#edf2f7")
            ]
        ]


focus__border_gray_300 : Css.Style
focus__border_gray_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#e2e8f0")
            ]
        ]


focus__border_gray_400 : Css.Style
focus__border_gray_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#cbd5e0")
            ]
        ]


focus__border_gray_500 : Css.Style
focus__border_gray_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#a0aec0")
            ]
        ]


focus__border_gray_600 : Css.Style
focus__border_gray_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#718096")
            ]
        ]


focus__border_gray_700 : Css.Style
focus__border_gray_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#4a5568")
            ]
        ]


focus__border_gray_800 : Css.Style
focus__border_gray_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#2d3748")
            ]
        ]


focus__border_gray_900 : Css.Style
focus__border_gray_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#1a202c")
            ]
        ]


focus__border_red_100 : Css.Style
focus__border_red_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fff5f5")
            ]
        ]


focus__border_red_200 : Css.Style
focus__border_red_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fed7d7")
            ]
        ]


focus__border_red_300 : Css.Style
focus__border_red_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#feb2b2")
            ]
        ]


focus__border_red_400 : Css.Style
focus__border_red_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fc8181")
            ]
        ]


focus__border_red_500 : Css.Style
focus__border_red_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#f56565")
            ]
        ]


focus__border_red_600 : Css.Style
focus__border_red_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#e53e3e")
            ]
        ]


focus__border_red_700 : Css.Style
focus__border_red_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#c53030")
            ]
        ]


focus__border_red_800 : Css.Style
focus__border_red_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#9b2c2c")
            ]
        ]


focus__border_red_900 : Css.Style
focus__border_red_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#742a2a")
            ]
        ]


focus__border_orange_100 : Css.Style
focus__border_orange_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fffaf0")
            ]
        ]


focus__border_orange_200 : Css.Style
focus__border_orange_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#feebc8")
            ]
        ]


focus__border_orange_300 : Css.Style
focus__border_orange_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fbd38d")
            ]
        ]


focus__border_orange_400 : Css.Style
focus__border_orange_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#f6ad55")
            ]
        ]


focus__border_orange_500 : Css.Style
focus__border_orange_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#ed8936")
            ]
        ]


focus__border_orange_600 : Css.Style
focus__border_orange_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#dd6b20")
            ]
        ]


focus__border_orange_700 : Css.Style
focus__border_orange_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#c05621")
            ]
        ]


focus__border_orange_800 : Css.Style
focus__border_orange_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#9c4221")
            ]
        ]


focus__border_orange_900 : Css.Style
focus__border_orange_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#7b341e")
            ]
        ]


focus__border_yellow_100 : Css.Style
focus__border_yellow_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fffff0")
            ]
        ]


focus__border_yellow_200 : Css.Style
focus__border_yellow_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fefcbf")
            ]
        ]


focus__border_yellow_300 : Css.Style
focus__border_yellow_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#faf089")
            ]
        ]


focus__border_yellow_400 : Css.Style
focus__border_yellow_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#f6e05e")
            ]
        ]


focus__border_yellow_500 : Css.Style
focus__border_yellow_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#ecc94b")
            ]
        ]


focus__border_yellow_600 : Css.Style
focus__border_yellow_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#d69e2e")
            ]
        ]


focus__border_yellow_700 : Css.Style
focus__border_yellow_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#b7791f")
            ]
        ]


focus__border_yellow_800 : Css.Style
focus__border_yellow_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#975a16")
            ]
        ]


focus__border_yellow_900 : Css.Style
focus__border_yellow_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#744210")
            ]
        ]


focus__border_green_100 : Css.Style
focus__border_green_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#f0fff4")
            ]
        ]


focus__border_green_200 : Css.Style
focus__border_green_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#c6f6d5")
            ]
        ]


focus__border_green_300 : Css.Style
focus__border_green_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#9ae6b4")
            ]
        ]


focus__border_green_400 : Css.Style
focus__border_green_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#68d391")
            ]
        ]


focus__border_green_500 : Css.Style
focus__border_green_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#48bb78")
            ]
        ]


focus__border_green_600 : Css.Style
focus__border_green_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#38a169")
            ]
        ]


focus__border_green_700 : Css.Style
focus__border_green_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#2f855a")
            ]
        ]


focus__border_green_800 : Css.Style
focus__border_green_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#276749")
            ]
        ]


focus__border_green_900 : Css.Style
focus__border_green_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#22543d")
            ]
        ]


focus__border_teal_100 : Css.Style
focus__border_teal_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#e6fffa")
            ]
        ]


focus__border_teal_200 : Css.Style
focus__border_teal_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#b2f5ea")
            ]
        ]


focus__border_teal_300 : Css.Style
focus__border_teal_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#81e6d9")
            ]
        ]


focus__border_teal_400 : Css.Style
focus__border_teal_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#4fd1c5")
            ]
        ]


focus__border_teal_500 : Css.Style
focus__border_teal_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#38b2ac")
            ]
        ]


focus__border_teal_600 : Css.Style
focus__border_teal_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#319795")
            ]
        ]


focus__border_teal_700 : Css.Style
focus__border_teal_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#2c7a7b")
            ]
        ]


focus__border_teal_800 : Css.Style
focus__border_teal_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#285e61")
            ]
        ]


focus__border_teal_900 : Css.Style
focus__border_teal_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#234e52")
            ]
        ]


focus__border_blue_100 : Css.Style
focus__border_blue_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#ebf8ff")
            ]
        ]


focus__border_blue_200 : Css.Style
focus__border_blue_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#bee3f8")
            ]
        ]


focus__border_blue_300 : Css.Style
focus__border_blue_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#90cdf4")
            ]
        ]


focus__border_blue_400 : Css.Style
focus__border_blue_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#63b3ed")
            ]
        ]


focus__border_blue_500 : Css.Style
focus__border_blue_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#4299e1")
            ]
        ]


focus__border_blue_600 : Css.Style
focus__border_blue_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#3182ce")
            ]
        ]


focus__border_blue_700 : Css.Style
focus__border_blue_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#2b6cb0")
            ]
        ]


focus__border_blue_800 : Css.Style
focus__border_blue_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#2c5282")
            ]
        ]


focus__border_blue_900 : Css.Style
focus__border_blue_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#2a4365")
            ]
        ]


focus__border_indigo_100 : Css.Style
focus__border_indigo_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#ebf4ff")
            ]
        ]


focus__border_indigo_200 : Css.Style
focus__border_indigo_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#c3dafe")
            ]
        ]


focus__border_indigo_300 : Css.Style
focus__border_indigo_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#a3bffa")
            ]
        ]


focus__border_indigo_400 : Css.Style
focus__border_indigo_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#7f9cf5")
            ]
        ]


focus__border_indigo_500 : Css.Style
focus__border_indigo_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#667eea")
            ]
        ]


focus__border_indigo_600 : Css.Style
focus__border_indigo_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#5a67d8")
            ]
        ]


focus__border_indigo_700 : Css.Style
focus__border_indigo_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#4c51bf")
            ]
        ]


focus__border_indigo_800 : Css.Style
focus__border_indigo_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#434190")
            ]
        ]


focus__border_indigo_900 : Css.Style
focus__border_indigo_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#3c366b")
            ]
        ]


focus__border_purple_100 : Css.Style
focus__border_purple_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#faf5ff")
            ]
        ]


focus__border_purple_200 : Css.Style
focus__border_purple_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#e9d8fd")
            ]
        ]


focus__border_purple_300 : Css.Style
focus__border_purple_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#d6bcfa")
            ]
        ]


focus__border_purple_400 : Css.Style
focus__border_purple_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#b794f4")
            ]
        ]


focus__border_purple_500 : Css.Style
focus__border_purple_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#9f7aea")
            ]
        ]


focus__border_purple_600 : Css.Style
focus__border_purple_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#805ad5")
            ]
        ]


focus__border_purple_700 : Css.Style
focus__border_purple_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#6b46c1")
            ]
        ]


focus__border_purple_800 : Css.Style
focus__border_purple_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#553c9a")
            ]
        ]


focus__border_purple_900 : Css.Style
focus__border_purple_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#44337a")
            ]
        ]


focus__border_pink_100 : Css.Style
focus__border_pink_100 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fff5f7")
            ]
        ]


focus__border_pink_200 : Css.Style
focus__border_pink_200 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fed7e2")
            ]
        ]


focus__border_pink_300 : Css.Style
focus__border_pink_300 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#fbb6ce")
            ]
        ]


focus__border_pink_400 : Css.Style
focus__border_pink_400 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#f687b3")
            ]
        ]


focus__border_pink_500 : Css.Style
focus__border_pink_500 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#ed64a6")
            ]
        ]


focus__border_pink_600 : Css.Style
focus__border_pink_600 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#d53f8c")
            ]
        ]


focus__border_pink_700 : Css.Style
focus__border_pink_700 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#b83280")
            ]
        ]


focus__border_pink_800 : Css.Style
focus__border_pink_800 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#97266d")
            ]
        ]


focus__border_pink_900 : Css.Style
focus__border_pink_900 =
    Css.batch
        [ Css.focus
            [ Css.borderColor (Css.hex "#702459")
            ]
        ]


rounded_none : Css.Style
rounded_none =
    Css.batch
        [ Css.borderRadius (Css.px 0)
        ]


rounded_sm : Css.Style
rounded_sm =
    Css.batch
        [ Css.borderRadius (Css.rem 0.125)
        ]


rounded : Css.Style
rounded =
    Css.batch
        [ Css.borderRadius (Css.rem 0.25)
        ]


rounded_md : Css.Style
rounded_md =
    Css.batch
        [ Css.borderRadius (Css.rem 0.375)
        ]


rounded_lg : Css.Style
rounded_lg =
    Css.batch
        [ Css.borderRadius (Css.rem 0.5)
        ]


rounded_full : Css.Style
rounded_full =
    Css.batch
        [ Css.borderRadius (Css.px 9999)
        ]


rounded_t_none : Css.Style
rounded_t_none =
    Css.batch
        [ Css.borderTopLeftRadius (Css.px 0)
        , Css.borderTopRightRadius (Css.px 0)
        ]


rounded_r_none : Css.Style
rounded_r_none =
    Css.batch
        [ Css.borderTopRightRadius (Css.px 0)
        , Css.borderBottomRightRadius (Css.px 0)
        ]


rounded_b_none : Css.Style
rounded_b_none =
    Css.batch
        [ Css.borderBottomRightRadius (Css.px 0)
        , Css.borderBottomLeftRadius (Css.px 0)
        ]


rounded_l_none : Css.Style
rounded_l_none =
    Css.batch
        [ Css.borderTopLeftRadius (Css.px 0)
        , Css.borderBottomLeftRadius (Css.px 0)
        ]


rounded_t_sm : Css.Style
rounded_t_sm =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.125)
        , Css.borderTopRightRadius (Css.rem 0.125)
        ]


rounded_r_sm : Css.Style
rounded_r_sm =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.125)
        , Css.borderBottomRightRadius (Css.rem 0.125)
        ]


rounded_b_sm : Css.Style
rounded_b_sm =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.125)
        , Css.borderBottomLeftRadius (Css.rem 0.125)
        ]


rounded_l_sm : Css.Style
rounded_l_sm =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.125)
        , Css.borderBottomLeftRadius (Css.rem 0.125)
        ]


rounded_t : Css.Style
rounded_t =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.25)
        , Css.borderTopRightRadius (Css.rem 0.25)
        ]


rounded_r : Css.Style
rounded_r =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.25)
        , Css.borderBottomRightRadius (Css.rem 0.25)
        ]


rounded_b : Css.Style
rounded_b =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.25)
        , Css.borderBottomLeftRadius (Css.rem 0.25)
        ]


rounded_l : Css.Style
rounded_l =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.25)
        , Css.borderBottomLeftRadius (Css.rem 0.25)
        ]


rounded_t_md : Css.Style
rounded_t_md =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.375)
        , Css.borderTopRightRadius (Css.rem 0.375)
        ]


rounded_r_md : Css.Style
rounded_r_md =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.375)
        , Css.borderBottomRightRadius (Css.rem 0.375)
        ]


rounded_b_md : Css.Style
rounded_b_md =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.375)
        , Css.borderBottomLeftRadius (Css.rem 0.375)
        ]


rounded_l_md : Css.Style
rounded_l_md =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.375)
        , Css.borderBottomLeftRadius (Css.rem 0.375)
        ]


rounded_t_lg : Css.Style
rounded_t_lg =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.5)
        , Css.borderTopRightRadius (Css.rem 0.5)
        ]


rounded_r_lg : Css.Style
rounded_r_lg =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.5)
        , Css.borderBottomRightRadius (Css.rem 0.5)
        ]


rounded_b_lg : Css.Style
rounded_b_lg =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.5)
        , Css.borderBottomLeftRadius (Css.rem 0.5)
        ]


rounded_l_lg : Css.Style
rounded_l_lg =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.5)
        , Css.borderBottomLeftRadius (Css.rem 0.5)
        ]


rounded_t_full : Css.Style
rounded_t_full =
    Css.batch
        [ Css.borderTopLeftRadius (Css.px 9999)
        , Css.borderTopRightRadius (Css.px 9999)
        ]


rounded_r_full : Css.Style
rounded_r_full =
    Css.batch
        [ Css.borderTopRightRadius (Css.px 9999)
        , Css.borderBottomRightRadius (Css.px 9999)
        ]


rounded_b_full : Css.Style
rounded_b_full =
    Css.batch
        [ Css.borderBottomRightRadius (Css.px 9999)
        , Css.borderBottomLeftRadius (Css.px 9999)
        ]


rounded_l_full : Css.Style
rounded_l_full =
    Css.batch
        [ Css.borderTopLeftRadius (Css.px 9999)
        , Css.borderBottomLeftRadius (Css.px 9999)
        ]


rounded_tl_none : Css.Style
rounded_tl_none =
    Css.batch
        [ Css.borderTopLeftRadius (Css.px 0)
        ]


rounded_tr_none : Css.Style
rounded_tr_none =
    Css.batch
        [ Css.borderTopRightRadius (Css.px 0)
        ]


rounded_br_none : Css.Style
rounded_br_none =
    Css.batch
        [ Css.borderBottomRightRadius (Css.px 0)
        ]


rounded_bl_none : Css.Style
rounded_bl_none =
    Css.batch
        [ Css.borderBottomLeftRadius (Css.px 0)
        ]


rounded_tl_sm : Css.Style
rounded_tl_sm =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.125)
        ]


rounded_tr_sm : Css.Style
rounded_tr_sm =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.125)
        ]


rounded_br_sm : Css.Style
rounded_br_sm =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.125)
        ]


rounded_bl_sm : Css.Style
rounded_bl_sm =
    Css.batch
        [ Css.borderBottomLeftRadius (Css.rem 0.125)
        ]


rounded_tl : Css.Style
rounded_tl =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.25)
        ]


rounded_tr : Css.Style
rounded_tr =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.25)
        ]


rounded_br : Css.Style
rounded_br =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.25)
        ]


rounded_bl : Css.Style
rounded_bl =
    Css.batch
        [ Css.borderBottomLeftRadius (Css.rem 0.25)
        ]


rounded_tl_md : Css.Style
rounded_tl_md =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.375)
        ]


rounded_tr_md : Css.Style
rounded_tr_md =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.375)
        ]


rounded_br_md : Css.Style
rounded_br_md =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.375)
        ]


rounded_bl_md : Css.Style
rounded_bl_md =
    Css.batch
        [ Css.borderBottomLeftRadius (Css.rem 0.375)
        ]


rounded_tl_lg : Css.Style
rounded_tl_lg =
    Css.batch
        [ Css.borderTopLeftRadius (Css.rem 0.5)
        ]


rounded_tr_lg : Css.Style
rounded_tr_lg =
    Css.batch
        [ Css.borderTopRightRadius (Css.rem 0.5)
        ]


rounded_br_lg : Css.Style
rounded_br_lg =
    Css.batch
        [ Css.borderBottomRightRadius (Css.rem 0.5)
        ]


rounded_bl_lg : Css.Style
rounded_bl_lg =
    Css.batch
        [ Css.borderBottomLeftRadius (Css.rem 0.5)
        ]


rounded_tl_full : Css.Style
rounded_tl_full =
    Css.batch
        [ Css.borderTopLeftRadius (Css.px 9999)
        ]


rounded_tr_full : Css.Style
rounded_tr_full =
    Css.batch
        [ Css.borderTopRightRadius (Css.px 9999)
        ]


rounded_br_full : Css.Style
rounded_br_full =
    Css.batch
        [ Css.borderBottomRightRadius (Css.px 9999)
        ]


rounded_bl_full : Css.Style
rounded_bl_full =
    Css.batch
        [ Css.borderBottomLeftRadius (Css.px 9999)
        ]


border_solid : Css.Style
border_solid =
    Css.batch
        [ Css.borderStyle Css.solid
        ]


border_dashed : Css.Style
border_dashed =
    Css.batch
        [ Css.borderStyle Css.dashed
        ]


border_dotted : Css.Style
border_dotted =
    Css.batch
        [ Css.borderStyle Css.dotted
        ]


border_double : Css.Style
border_double =
    Css.batch
        [ Css.borderStyle Css.double
        ]


border_none : Css.Style
border_none =
    Css.batch
        [ Css.borderStyle Css.none
        ]


border_0 : Css.Style
border_0 =
    Css.batch
        [ Css.borderWidth (Css.px 0)
        ]


border_2 : Css.Style
border_2 =
    Css.batch
        [ Css.borderWidth (Css.px 2)
        ]


border_4 : Css.Style
border_4 =
    Css.batch
        [ Css.borderWidth (Css.px 4)
        ]


border_8 : Css.Style
border_8 =
    Css.batch
        [ Css.borderWidth (Css.px 8)
        ]


border : Css.Style
border =
    Css.batch
        [ Css.borderWidth (Css.px 1)
        ]


border_t_0 : Css.Style
border_t_0 =
    Css.batch
        [ Css.borderTopWidth (Css.px 0)
        ]


border_r_0 : Css.Style
border_r_0 =
    Css.batch
        [ Css.borderRightWidth (Css.px 0)
        ]


border_b_0 : Css.Style
border_b_0 =
    Css.batch
        [ Css.borderBottomWidth (Css.px 0)
        ]


border_l_0 : Css.Style
border_l_0 =
    Css.batch
        [ Css.borderLeftWidth (Css.px 0)
        ]


border_t_2 : Css.Style
border_t_2 =
    Css.batch
        [ Css.borderTopWidth (Css.px 2)
        ]


border_r_2 : Css.Style
border_r_2 =
    Css.batch
        [ Css.borderRightWidth (Css.px 2)
        ]


border_b_2 : Css.Style
border_b_2 =
    Css.batch
        [ Css.borderBottomWidth (Css.px 2)
        ]


border_l_2 : Css.Style
border_l_2 =
    Css.batch
        [ Css.borderLeftWidth (Css.px 2)
        ]


border_t_4 : Css.Style
border_t_4 =
    Css.batch
        [ Css.borderTopWidth (Css.px 4)
        ]


border_r_4 : Css.Style
border_r_4 =
    Css.batch
        [ Css.borderRightWidth (Css.px 4)
        ]


border_b_4 : Css.Style
border_b_4 =
    Css.batch
        [ Css.borderBottomWidth (Css.px 4)
        ]


border_l_4 : Css.Style
border_l_4 =
    Css.batch
        [ Css.borderLeftWidth (Css.px 4)
        ]


border_t_8 : Css.Style
border_t_8 =
    Css.batch
        [ Css.borderTopWidth (Css.px 8)
        ]


border_r_8 : Css.Style
border_r_8 =
    Css.batch
        [ Css.borderRightWidth (Css.px 8)
        ]


border_b_8 : Css.Style
border_b_8 =
    Css.batch
        [ Css.borderBottomWidth (Css.px 8)
        ]


border_l_8 : Css.Style
border_l_8 =
    Css.batch
        [ Css.borderLeftWidth (Css.px 8)
        ]


border_t : Css.Style
border_t =
    Css.batch
        [ Css.borderTopWidth (Css.px 1)
        ]


border_r : Css.Style
border_r =
    Css.batch
        [ Css.borderRightWidth (Css.px 1)
        ]


border_b : Css.Style
border_b =
    Css.batch
        [ Css.borderBottomWidth (Css.px 1)
        ]


border_l : Css.Style
border_l =
    Css.batch
        [ Css.borderLeftWidth (Css.px 1)
        ]


box_border : Css.Style
box_border =
    Css.batch
        [ Css.boxSizing Css.borderBox
        ]


box_content : Css.Style
box_content =
    Css.batch
        [ Css.boxSizing Css.contentBox
        ]


cursor_auto : Css.Style
cursor_auto =
    Css.batch
        [ Css.cursor Css.auto
        ]


cursor_default : Css.Style
cursor_default =
    Css.batch
        [ Css.cursor Css.default
        ]


cursor_pointer : Css.Style
cursor_pointer =
    Css.batch
        [ Css.cursor Css.pointer
        ]


cursor_wait : Css.Style
cursor_wait =
    Css.batch
        [ Css.cursor Css.wait
        ]


cursor_text : Css.Style
cursor_text =
    Css.batch
        [ Css.property "cursor" "text"
        ]


cursor_move : Css.Style
cursor_move =
    Css.batch
        [ Css.cursor Css.move
        ]


cursor_not_allowed : Css.Style
cursor_not_allowed =
    Css.batch
        [ Css.cursor Css.notAllowed
        ]


block : Css.Style
block =
    Css.batch
        [ Css.display Css.block
        ]


inline_block : Css.Style
inline_block =
    Css.batch
        [ Css.display Css.inlineBlock
        ]


inline : Css.Style
inline =
    Css.batch
        [ Css.display Css.inline
        ]


flex : Css.Style
flex =
    Css.batch
        [ Css.displayFlex
        ]


inline_flex : Css.Style
inline_flex =
    Css.batch
        [ Css.display Css.inlineFlex
        ]


table : Css.Style
table =
    Css.batch
        [ Css.display Css.table
        ]


table_caption : Css.Style
table_caption =
    Css.batch
        [ Css.display Css.tableCaption
        ]


table_cell : Css.Style
table_cell =
    Css.batch
        [ Css.display Css.tableCell
        ]


table_column : Css.Style
table_column =
    Css.batch
        [ Css.display Css.tableColumn
        ]


table_column_group : Css.Style
table_column_group =
    Css.batch
        [ Css.display Css.tableColumnGroup
        ]


table_footer_group : Css.Style
table_footer_group =
    Css.batch
        [ Css.display Css.tableFooterGroup
        ]


table_header_group : Css.Style
table_header_group =
    Css.batch
        [ Css.display Css.tableHeaderGroup
        ]


table_row_group : Css.Style
table_row_group =
    Css.batch
        [ Css.display Css.tableRowGroup
        ]


table_row : Css.Style
table_row =
    Css.batch
        [ Css.display Css.tableRow
        ]


flow_root : Css.Style
flow_root =
    Css.batch
        [ Css.property "display" "flow-root"
        ]


grid : Css.Style
grid =
    Css.batch
        [ Css.property "display" "grid"
        ]


inline_grid : Css.Style
inline_grid =
    Css.batch
        [ Css.property "display" "inline-grid"
        ]


hidden : Css.Style
hidden =
    Css.batch
        [ Css.display Css.none
        ]


flex_row : Css.Style
flex_row =
    Css.batch
        [ Css.flexDirection Css.row
        ]


flex_row_reverse : Css.Style
flex_row_reverse =
    Css.batch
        [ Css.flexDirection Css.rowReverse
        ]


flex_col : Css.Style
flex_col =
    Css.batch
        [ Css.flexDirection Css.column
        ]


flex_col_reverse : Css.Style
flex_col_reverse =
    Css.batch
        [ Css.flexDirection Css.columnReverse
        ]


flex_wrap : Css.Style
flex_wrap =
    Css.batch
        [ Css.flexWrap Css.wrap
        ]


flex_wrap_reverse : Css.Style
flex_wrap_reverse =
    Css.batch
        [ Css.flexWrap Css.wrapReverse
        ]


flex_no_wrap : Css.Style
flex_no_wrap =
    Css.batch
        [ Css.flexWrap Css.noWrap
        ]


items_start : Css.Style
items_start =
    Css.batch
        [ Css.alignItems Css.flexStart
        ]


items_end : Css.Style
items_end =
    Css.batch
        [ Css.alignItems Css.flexEnd
        ]


items_center : Css.Style
items_center =
    Css.batch
        [ Css.alignItems Css.center
        ]


items_baseline : Css.Style
items_baseline =
    Css.batch
        [ Css.alignItems Css.baseline
        ]


items_stretch : Css.Style
items_stretch =
    Css.batch
        [ Css.alignItems Css.stretch
        ]


self_auto : Css.Style
self_auto =
    Css.batch
        [ Css.property "align-self" "auto"
        ]


self_start : Css.Style
self_start =
    Css.batch
        [ Css.alignSelf Css.flexStart
        ]


self_end : Css.Style
self_end =
    Css.batch
        [ Css.alignSelf Css.flexEnd
        ]


self_center : Css.Style
self_center =
    Css.batch
        [ Css.alignSelf Css.center
        ]


self_stretch : Css.Style
self_stretch =
    Css.batch
        [ Css.alignSelf Css.stretch
        ]


justify_start : Css.Style
justify_start =
    Css.batch
        [ Css.justifyContent Css.flexStart
        ]


justify_end : Css.Style
justify_end =
    Css.batch
        [ Css.justifyContent Css.flexEnd
        ]


justify_center : Css.Style
justify_center =
    Css.batch
        [ Css.justifyContent Css.center
        ]


justify_between : Css.Style
justify_between =
    Css.batch
        [ Css.justifyContent Css.spaceBetween
        ]


justify_around : Css.Style
justify_around =
    Css.batch
        [ Css.justifyContent Css.spaceAround
        ]


justify_evenly : Css.Style
justify_evenly =
    Css.batch
        [ Css.property "justify-content" "space-evenly"
        ]


content_center : Css.Style
content_center =
    Css.batch
        [ Css.property "align-content" "center"
        ]


content_start : Css.Style
content_start =
    Css.batch
        [ Css.property "align-content" "flex-start"
        ]


content_end : Css.Style
content_end =
    Css.batch
        [ Css.property "align-content" "flex-end"
        ]


content_between : Css.Style
content_between =
    Css.batch
        [ Css.property "align-content" "space-between"
        ]


content_around : Css.Style
content_around =
    Css.batch
        [ Css.property "align-content" "space-around"
        ]


flex_1 : Css.Style
flex_1 =
    Css.batch
        [ Css.property "flex" "1 1 0%"
        ]


flex_auto : Css.Style
flex_auto =
    Css.batch
        [ Css.property "flex" "1 1 auto"
        ]


flex_initial : Css.Style
flex_initial =
    Css.batch
        [ Css.property "flex" "0 1 auto"
        ]


flex_none : Css.Style
flex_none =
    Css.batch
        [ Css.property "flex" "none"
        ]


flex_grow_0 : Css.Style
flex_grow_0 =
    Css.batch
        [ Css.flexGrow (Css.int 0)
        ]


flex_grow : Css.Style
flex_grow =
    Css.batch
        [ Css.flexGrow (Css.int 1)
        ]


flex_shrink_0 : Css.Style
flex_shrink_0 =
    Css.batch
        [ Css.flexShrink (Css.int 0)
        ]


flex_shrink : Css.Style
flex_shrink =
    Css.batch
        [ Css.flexShrink (Css.int 1)
        ]


order_1 : Css.Style
order_1 =
    Css.batch
        [ Css.order (Css.int 1)
        ]


order_2 : Css.Style
order_2 =
    Css.batch
        [ Css.order (Css.int 2)
        ]


order_3 : Css.Style
order_3 =
    Css.batch
        [ Css.order (Css.int 3)
        ]


order_4 : Css.Style
order_4 =
    Css.batch
        [ Css.order (Css.int 4)
        ]


order_5 : Css.Style
order_5 =
    Css.batch
        [ Css.order (Css.int 5)
        ]


order_6 : Css.Style
order_6 =
    Css.batch
        [ Css.order (Css.int 6)
        ]


order_7 : Css.Style
order_7 =
    Css.batch
        [ Css.order (Css.int 7)
        ]


order_8 : Css.Style
order_8 =
    Css.batch
        [ Css.order (Css.int 8)
        ]


order_9 : Css.Style
order_9 =
    Css.batch
        [ Css.order (Css.int 9)
        ]


order_10 : Css.Style
order_10 =
    Css.batch
        [ Css.order (Css.int 10)
        ]


order_11 : Css.Style
order_11 =
    Css.batch
        [ Css.order (Css.int 11)
        ]


order_12 : Css.Style
order_12 =
    Css.batch
        [ Css.order (Css.int 12)
        ]


order_first : Css.Style
order_first =
    Css.batch
        [ Css.order (Css.int -9999)
        ]


order_last : Css.Style
order_last =
    Css.batch
        [ Css.order (Css.int 9999)
        ]


order_none : Css.Style
order_none =
    Css.batch
        [ Css.order (Css.int 0)
        ]


float_right : Css.Style
float_right =
    Css.batch
        [ Css.property "float" "right"
        ]


float_left : Css.Style
float_left =
    Css.batch
        [ Css.property "float" "left"
        ]


float_none : Css.Style
float_none =
    Css.batch
        [ Css.property "float" "none"
        ]


clearfix : Css.Style
clearfix =
    Css.batch
        [ Css.property "content" "\"\""
        , Css.display Css.table
        , Css.property "clear" "both"
        ]


clear_left : Css.Style
clear_left =
    Css.batch
        [ Css.property "clear" "left"
        ]


clear_right : Css.Style
clear_right =
    Css.batch
        [ Css.property "clear" "right"
        ]


clear_both : Css.Style
clear_both =
    Css.batch
        [ Css.property "clear" "both"
        ]


clear_none : Css.Style
clear_none =
    Css.batch
        [ Css.property "clear" "none"
        ]


font_sans : Css.Style
font_sans =
    Css.batch
        [ Css.property "font-family" "system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""
        ]


font_serif : Css.Style
font_serif =
    Css.batch
        [ Css.property "font-family" "Georgia, Cambria, \"Times New Roman\", Times, serif"
        ]


font_mono : Css.Style
font_mono =
    Css.batch
        [ Css.property "font-family" "Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"
        ]


font_hairline : Css.Style
font_hairline =
    Css.batch
        [ Css.fontWeight (Css.int 100)
        ]


font_thin : Css.Style
font_thin =
    Css.batch
        [ Css.fontWeight (Css.int 200)
        ]


font_light : Css.Style
font_light =
    Css.batch
        [ Css.fontWeight (Css.int 300)
        ]


font_normal : Css.Style
font_normal =
    Css.batch
        [ Css.fontWeight (Css.int 400)
        ]


font_medium : Css.Style
font_medium =
    Css.batch
        [ Css.fontWeight (Css.int 500)
        ]


font_semibold : Css.Style
font_semibold =
    Css.batch
        [ Css.fontWeight (Css.int 600)
        ]


font_bold : Css.Style
font_bold =
    Css.batch
        [ Css.fontWeight (Css.int 700)
        ]


font_extrabold : Css.Style
font_extrabold =
    Css.batch
        [ Css.fontWeight (Css.int 800)
        ]


font_black : Css.Style
font_black =
    Css.batch
        [ Css.fontWeight (Css.int 900)
        ]


hover__font_hairline : Css.Style
hover__font_hairline =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 100)
            ]
        ]


hover__font_thin : Css.Style
hover__font_thin =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 200)
            ]
        ]


hover__font_light : Css.Style
hover__font_light =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 300)
            ]
        ]


hover__font_normal : Css.Style
hover__font_normal =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 400)
            ]
        ]


hover__font_medium : Css.Style
hover__font_medium =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 500)
            ]
        ]


hover__font_semibold : Css.Style
hover__font_semibold =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 600)
            ]
        ]


hover__font_bold : Css.Style
hover__font_bold =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 700)
            ]
        ]


hover__font_extrabold : Css.Style
hover__font_extrabold =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 800)
            ]
        ]


hover__font_black : Css.Style
hover__font_black =
    Css.batch
        [ Css.hover
            [ Css.fontWeight (Css.int 900)
            ]
        ]


focus__font_hairline : Css.Style
focus__font_hairline =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 100)
            ]
        ]


focus__font_thin : Css.Style
focus__font_thin =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 200)
            ]
        ]


focus__font_light : Css.Style
focus__font_light =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 300)
            ]
        ]


focus__font_normal : Css.Style
focus__font_normal =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 400)
            ]
        ]


focus__font_medium : Css.Style
focus__font_medium =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 500)
            ]
        ]


focus__font_semibold : Css.Style
focus__font_semibold =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 600)
            ]
        ]


focus__font_bold : Css.Style
focus__font_bold =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 700)
            ]
        ]


focus__font_extrabold : Css.Style
focus__font_extrabold =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 800)
            ]
        ]


focus__font_black : Css.Style
focus__font_black =
    Css.batch
        [ Css.focus
            [ Css.fontWeight (Css.int 900)
            ]
        ]


h_0 : Css.Style
h_0 =
    Css.batch
        [ Css.height (Css.px 0)
        ]


h_1 : Css.Style
h_1 =
    Css.batch
        [ Css.height (Css.rem 0.25)
        ]


h_2 : Css.Style
h_2 =
    Css.batch
        [ Css.height (Css.rem 0.5)
        ]


h_3 : Css.Style
h_3 =
    Css.batch
        [ Css.height (Css.rem 0.75)
        ]


h_4 : Css.Style
h_4 =
    Css.batch
        [ Css.height (Css.rem 1)
        ]


h_5 : Css.Style
h_5 =
    Css.batch
        [ Css.height (Css.rem 1.25)
        ]


h_6 : Css.Style
h_6 =
    Css.batch
        [ Css.height (Css.rem 1.5)
        ]


h_8 : Css.Style
h_8 =
    Css.batch
        [ Css.height (Css.rem 2)
        ]


h_10 : Css.Style
h_10 =
    Css.batch
        [ Css.height (Css.rem 2.5)
        ]


h_12 : Css.Style
h_12 =
    Css.batch
        [ Css.height (Css.rem 3)
        ]


h_16 : Css.Style
h_16 =
    Css.batch
        [ Css.height (Css.rem 4)
        ]


h_20 : Css.Style
h_20 =
    Css.batch
        [ Css.height (Css.rem 5)
        ]


h_24 : Css.Style
h_24 =
    Css.batch
        [ Css.height (Css.rem 6)
        ]


h_32 : Css.Style
h_32 =
    Css.batch
        [ Css.height (Css.rem 8)
        ]


h_40 : Css.Style
h_40 =
    Css.batch
        [ Css.height (Css.rem 10)
        ]


h_48 : Css.Style
h_48 =
    Css.batch
        [ Css.height (Css.rem 12)
        ]


h_56 : Css.Style
h_56 =
    Css.batch
        [ Css.height (Css.rem 14)
        ]


h_64 : Css.Style
h_64 =
    Css.batch
        [ Css.height (Css.rem 16)
        ]


h_auto : Css.Style
h_auto =
    Css.batch
        [ Css.height Css.auto
        ]


h_px : Css.Style
h_px =
    Css.batch
        [ Css.height (Css.px 1)
        ]


h_full : Css.Style
h_full =
    Css.batch
        [ Css.height (Css.pct 100)
        ]


h_screen : Css.Style
h_screen =
    Css.batch
        [ Css.height (Css.vh 100)
        ]


text_xs : Css.Style
text_xs =
    Css.batch
        [ Css.fontSize (Css.rem 0.75)
        ]


text_sm : Css.Style
text_sm =
    Css.batch
        [ Css.fontSize (Css.rem 0.875)
        ]


text_base : Css.Style
text_base =
    Css.batch
        [ Css.fontSize (Css.rem 1)
        ]


text_lg : Css.Style
text_lg =
    Css.batch
        [ Css.fontSize (Css.rem 1.125)
        ]


text_xl : Css.Style
text_xl =
    Css.batch
        [ Css.fontSize (Css.rem 1.25)
        ]


text_2xl : Css.Style
text_2xl =
    Css.batch
        [ Css.fontSize (Css.rem 1.5)
        ]


text_3xl : Css.Style
text_3xl =
    Css.batch
        [ Css.fontSize (Css.rem 1.875)
        ]


text_4xl : Css.Style
text_4xl =
    Css.batch
        [ Css.fontSize (Css.rem 2.25)
        ]


text_5xl : Css.Style
text_5xl =
    Css.batch
        [ Css.fontSize (Css.rem 3)
        ]


text_6xl : Css.Style
text_6xl =
    Css.batch
        [ Css.fontSize (Css.rem 4)
        ]


leading_3 : Css.Style
leading_3 =
    Css.batch
        [ Css.lineHeight (Css.rem 0.75)
        ]


leading_4 : Css.Style
leading_4 =
    Css.batch
        [ Css.lineHeight (Css.rem 1)
        ]


leading_5 : Css.Style
leading_5 =
    Css.batch
        [ Css.lineHeight (Css.rem 1.25)
        ]


leading_6 : Css.Style
leading_6 =
    Css.batch
        [ Css.lineHeight (Css.rem 1.5)
        ]


leading_7 : Css.Style
leading_7 =
    Css.batch
        [ Css.lineHeight (Css.rem 1.75)
        ]


leading_8 : Css.Style
leading_8 =
    Css.batch
        [ Css.lineHeight (Css.rem 2)
        ]


leading_9 : Css.Style
leading_9 =
    Css.batch
        [ Css.lineHeight (Css.rem 2.25)
        ]


leading_10 : Css.Style
leading_10 =
    Css.batch
        [ Css.lineHeight (Css.rem 2.5)
        ]


leading_none : Css.Style
leading_none =
    Css.batch
        [ Css.lineHeight (Css.int 1)
        ]


leading_tight : Css.Style
leading_tight =
    Css.batch
        [ Css.lineHeight (Css.num 1.25)
        ]


leading_snug : Css.Style
leading_snug =
    Css.batch
        [ Css.lineHeight (Css.num 1.375)
        ]


leading_normal : Css.Style
leading_normal =
    Css.batch
        [ Css.lineHeight (Css.num 1.5)
        ]


leading_relaxed : Css.Style
leading_relaxed =
    Css.batch
        [ Css.lineHeight (Css.num 1.625)
        ]


leading_loose : Css.Style
leading_loose =
    Css.batch
        [ Css.lineHeight (Css.int 2)
        ]


list_inside : Css.Style
list_inside =
    Css.batch
        [ Css.listStylePosition Css.inside
        ]


list_outside : Css.Style
list_outside =
    Css.batch
        [ Css.listStylePosition Css.outside
        ]


list_none : Css.Style
list_none =
    Css.batch
        [ Css.listStyleType Css.none
        ]


list_disc : Css.Style
list_disc =
    Css.batch
        [ Css.listStyleType Css.disc
        ]


list_decimal : Css.Style
list_decimal =
    Css.batch
        [ Css.listStyleType Css.decimal
        ]


m_0 : Css.Style
m_0 =
    Css.batch
        [ Css.margin (Css.px 0)
        ]


m_1 : Css.Style
m_1 =
    Css.batch
        [ Css.margin (Css.rem 0.25)
        ]


m_2 : Css.Style
m_2 =
    Css.batch
        [ Css.margin (Css.rem 0.5)
        ]


m_3 : Css.Style
m_3 =
    Css.batch
        [ Css.margin (Css.rem 0.75)
        ]


m_4 : Css.Style
m_4 =
    Css.batch
        [ Css.margin (Css.rem 1)
        ]


m_5 : Css.Style
m_5 =
    Css.batch
        [ Css.margin (Css.rem 1.25)
        ]


m_6 : Css.Style
m_6 =
    Css.batch
        [ Css.margin (Css.rem 1.5)
        ]


m_8 : Css.Style
m_8 =
    Css.batch
        [ Css.margin (Css.rem 2)
        ]


m_10 : Css.Style
m_10 =
    Css.batch
        [ Css.margin (Css.rem 2.5)
        ]


m_12 : Css.Style
m_12 =
    Css.batch
        [ Css.margin (Css.rem 3)
        ]


m_16 : Css.Style
m_16 =
    Css.batch
        [ Css.margin (Css.rem 4)
        ]


m_20 : Css.Style
m_20 =
    Css.batch
        [ Css.margin (Css.rem 5)
        ]


m_24 : Css.Style
m_24 =
    Css.batch
        [ Css.margin (Css.rem 6)
        ]


m_32 : Css.Style
m_32 =
    Css.batch
        [ Css.margin (Css.rem 8)
        ]


m_40 : Css.Style
m_40 =
    Css.batch
        [ Css.margin (Css.rem 10)
        ]


m_48 : Css.Style
m_48 =
    Css.batch
        [ Css.margin (Css.rem 12)
        ]


m_56 : Css.Style
m_56 =
    Css.batch
        [ Css.margin (Css.rem 14)
        ]


m_64 : Css.Style
m_64 =
    Css.batch
        [ Css.margin (Css.rem 16)
        ]


m_auto : Css.Style
m_auto =
    Css.batch
        [ Css.margin Css.auto
        ]


m_px : Css.Style
m_px =
    Css.batch
        [ Css.margin (Css.px 1)
        ]


neg_m_1 : Css.Style
neg_m_1 =
    Css.batch
        [ Css.margin (Css.rem -0.25)
        ]


neg_m_2 : Css.Style
neg_m_2 =
    Css.batch
        [ Css.margin (Css.rem -0.5)
        ]


neg_m_3 : Css.Style
neg_m_3 =
    Css.batch
        [ Css.margin (Css.rem -0.75)
        ]


neg_m_4 : Css.Style
neg_m_4 =
    Css.batch
        [ Css.margin (Css.rem -1)
        ]


neg_m_5 : Css.Style
neg_m_5 =
    Css.batch
        [ Css.margin (Css.rem -1.25)
        ]


neg_m_6 : Css.Style
neg_m_6 =
    Css.batch
        [ Css.margin (Css.rem -1.5)
        ]


neg_m_8 : Css.Style
neg_m_8 =
    Css.batch
        [ Css.margin (Css.rem -2)
        ]


neg_m_10 : Css.Style
neg_m_10 =
    Css.batch
        [ Css.margin (Css.rem -2.5)
        ]


neg_m_12 : Css.Style
neg_m_12 =
    Css.batch
        [ Css.margin (Css.rem -3)
        ]


neg_m_16 : Css.Style
neg_m_16 =
    Css.batch
        [ Css.margin (Css.rem -4)
        ]


neg_m_20 : Css.Style
neg_m_20 =
    Css.batch
        [ Css.margin (Css.rem -5)
        ]


neg_m_24 : Css.Style
neg_m_24 =
    Css.batch
        [ Css.margin (Css.rem -6)
        ]


neg_m_32 : Css.Style
neg_m_32 =
    Css.batch
        [ Css.margin (Css.rem -8)
        ]


neg_m_40 : Css.Style
neg_m_40 =
    Css.batch
        [ Css.margin (Css.rem -10)
        ]


neg_m_48 : Css.Style
neg_m_48 =
    Css.batch
        [ Css.margin (Css.rem -12)
        ]


neg_m_56 : Css.Style
neg_m_56 =
    Css.batch
        [ Css.margin (Css.rem -14)
        ]


neg_m_64 : Css.Style
neg_m_64 =
    Css.batch
        [ Css.margin (Css.rem -16)
        ]


neg_m_px : Css.Style
neg_m_px =
    Css.batch
        [ Css.margin (Css.px -1)
        ]


my_0 : Css.Style
my_0 =
    Css.batch
        [ Css.marginTop (Css.px 0)
        , Css.marginBottom (Css.px 0)
        ]


mx_0 : Css.Style
mx_0 =
    Css.batch
        [ Css.marginLeft (Css.px 0)
        , Css.marginRight (Css.px 0)
        ]


my_1 : Css.Style
my_1 =
    Css.batch
        [ Css.marginTop (Css.rem 0.25)
        , Css.marginBottom (Css.rem 0.25)
        ]


mx_1 : Css.Style
mx_1 =
    Css.batch
        [ Css.marginLeft (Css.rem 0.25)
        , Css.marginRight (Css.rem 0.25)
        ]


my_2 : Css.Style
my_2 =
    Css.batch
        [ Css.marginTop (Css.rem 0.5)
        , Css.marginBottom (Css.rem 0.5)
        ]


mx_2 : Css.Style
mx_2 =
    Css.batch
        [ Css.marginLeft (Css.rem 0.5)
        , Css.marginRight (Css.rem 0.5)
        ]


my_3 : Css.Style
my_3 =
    Css.batch
        [ Css.marginTop (Css.rem 0.75)
        , Css.marginBottom (Css.rem 0.75)
        ]


mx_3 : Css.Style
mx_3 =
    Css.batch
        [ Css.marginLeft (Css.rem 0.75)
        , Css.marginRight (Css.rem 0.75)
        ]


my_4 : Css.Style
my_4 =
    Css.batch
        [ Css.marginTop (Css.rem 1)
        , Css.marginBottom (Css.rem 1)
        ]


mx_4 : Css.Style
mx_4 =
    Css.batch
        [ Css.marginLeft (Css.rem 1)
        , Css.marginRight (Css.rem 1)
        ]


my_5 : Css.Style
my_5 =
    Css.batch
        [ Css.marginTop (Css.rem 1.25)
        , Css.marginBottom (Css.rem 1.25)
        ]


mx_5 : Css.Style
mx_5 =
    Css.batch
        [ Css.marginLeft (Css.rem 1.25)
        , Css.marginRight (Css.rem 1.25)
        ]


my_6 : Css.Style
my_6 =
    Css.batch
        [ Css.marginTop (Css.rem 1.5)
        , Css.marginBottom (Css.rem 1.5)
        ]


mx_6 : Css.Style
mx_6 =
    Css.batch
        [ Css.marginLeft (Css.rem 1.5)
        , Css.marginRight (Css.rem 1.5)
        ]


my_8 : Css.Style
my_8 =
    Css.batch
        [ Css.marginTop (Css.rem 2)
        , Css.marginBottom (Css.rem 2)
        ]


mx_8 : Css.Style
mx_8 =
    Css.batch
        [ Css.marginLeft (Css.rem 2)
        , Css.marginRight (Css.rem 2)
        ]


my_10 : Css.Style
my_10 =
    Css.batch
        [ Css.marginTop (Css.rem 2.5)
        , Css.marginBottom (Css.rem 2.5)
        ]


mx_10 : Css.Style
mx_10 =
    Css.batch
        [ Css.marginLeft (Css.rem 2.5)
        , Css.marginRight (Css.rem 2.5)
        ]


my_12 : Css.Style
my_12 =
    Css.batch
        [ Css.marginTop (Css.rem 3)
        , Css.marginBottom (Css.rem 3)
        ]


mx_12 : Css.Style
mx_12 =
    Css.batch
        [ Css.marginLeft (Css.rem 3)
        , Css.marginRight (Css.rem 3)
        ]


my_16 : Css.Style
my_16 =
    Css.batch
        [ Css.marginTop (Css.rem 4)
        , Css.marginBottom (Css.rem 4)
        ]


mx_16 : Css.Style
mx_16 =
    Css.batch
        [ Css.marginLeft (Css.rem 4)
        , Css.marginRight (Css.rem 4)
        ]


my_20 : Css.Style
my_20 =
    Css.batch
        [ Css.marginTop (Css.rem 5)
        , Css.marginBottom (Css.rem 5)
        ]


mx_20 : Css.Style
mx_20 =
    Css.batch
        [ Css.marginLeft (Css.rem 5)
        , Css.marginRight (Css.rem 5)
        ]


my_24 : Css.Style
my_24 =
    Css.batch
        [ Css.marginTop (Css.rem 6)
        , Css.marginBottom (Css.rem 6)
        ]


mx_24 : Css.Style
mx_24 =
    Css.batch
        [ Css.marginLeft (Css.rem 6)
        , Css.marginRight (Css.rem 6)
        ]


my_32 : Css.Style
my_32 =
    Css.batch
        [ Css.marginTop (Css.rem 8)
        , Css.marginBottom (Css.rem 8)
        ]


mx_32 : Css.Style
mx_32 =
    Css.batch
        [ Css.marginLeft (Css.rem 8)
        , Css.marginRight (Css.rem 8)
        ]


my_40 : Css.Style
my_40 =
    Css.batch
        [ Css.marginTop (Css.rem 10)
        , Css.marginBottom (Css.rem 10)
        ]


mx_40 : Css.Style
mx_40 =
    Css.batch
        [ Css.marginLeft (Css.rem 10)
        , Css.marginRight (Css.rem 10)
        ]


my_48 : Css.Style
my_48 =
    Css.batch
        [ Css.marginTop (Css.rem 12)
        , Css.marginBottom (Css.rem 12)
        ]


mx_48 : Css.Style
mx_48 =
    Css.batch
        [ Css.marginLeft (Css.rem 12)
        , Css.marginRight (Css.rem 12)
        ]


my_56 : Css.Style
my_56 =
    Css.batch
        [ Css.marginTop (Css.rem 14)
        , Css.marginBottom (Css.rem 14)
        ]


mx_56 : Css.Style
mx_56 =
    Css.batch
        [ Css.marginLeft (Css.rem 14)
        , Css.marginRight (Css.rem 14)
        ]


my_64 : Css.Style
my_64 =
    Css.batch
        [ Css.marginTop (Css.rem 16)
        , Css.marginBottom (Css.rem 16)
        ]


mx_64 : Css.Style
mx_64 =
    Css.batch
        [ Css.marginLeft (Css.rem 16)
        , Css.marginRight (Css.rem 16)
        ]


my_auto : Css.Style
my_auto =
    Css.batch
        [ Css.marginTop Css.auto
        , Css.marginBottom Css.auto
        ]


mx_auto : Css.Style
mx_auto =
    Css.batch
        [ Css.marginLeft Css.auto
        , Css.marginRight Css.auto
        ]


my_px : Css.Style
my_px =
    Css.batch
        [ Css.marginTop (Css.px 1)
        , Css.marginBottom (Css.px 1)
        ]


mx_px : Css.Style
mx_px =
    Css.batch
        [ Css.marginLeft (Css.px 1)
        , Css.marginRight (Css.px 1)
        ]


neg_my_1 : Css.Style
neg_my_1 =
    Css.batch
        [ Css.marginTop (Css.rem -0.25)
        , Css.marginBottom (Css.rem -0.25)
        ]


neg_mx_1 : Css.Style
neg_mx_1 =
    Css.batch
        [ Css.marginLeft (Css.rem -0.25)
        , Css.marginRight (Css.rem -0.25)
        ]


neg_my_2 : Css.Style
neg_my_2 =
    Css.batch
        [ Css.marginTop (Css.rem -0.5)
        , Css.marginBottom (Css.rem -0.5)
        ]


neg_mx_2 : Css.Style
neg_mx_2 =
    Css.batch
        [ Css.marginLeft (Css.rem -0.5)
        , Css.marginRight (Css.rem -0.5)
        ]


neg_my_3 : Css.Style
neg_my_3 =
    Css.batch
        [ Css.marginTop (Css.rem -0.75)
        , Css.marginBottom (Css.rem -0.75)
        ]


neg_mx_3 : Css.Style
neg_mx_3 =
    Css.batch
        [ Css.marginLeft (Css.rem -0.75)
        , Css.marginRight (Css.rem -0.75)
        ]


neg_my_4 : Css.Style
neg_my_4 =
    Css.batch
        [ Css.marginTop (Css.rem -1)
        , Css.marginBottom (Css.rem -1)
        ]


neg_mx_4 : Css.Style
neg_mx_4 =
    Css.batch
        [ Css.marginLeft (Css.rem -1)
        , Css.marginRight (Css.rem -1)
        ]


neg_my_5 : Css.Style
neg_my_5 =
    Css.batch
        [ Css.marginTop (Css.rem -1.25)
        , Css.marginBottom (Css.rem -1.25)
        ]


neg_mx_5 : Css.Style
neg_mx_5 =
    Css.batch
        [ Css.marginLeft (Css.rem -1.25)
        , Css.marginRight (Css.rem -1.25)
        ]


neg_my_6 : Css.Style
neg_my_6 =
    Css.batch
        [ Css.marginTop (Css.rem -1.5)
        , Css.marginBottom (Css.rem -1.5)
        ]


neg_mx_6 : Css.Style
neg_mx_6 =
    Css.batch
        [ Css.marginLeft (Css.rem -1.5)
        , Css.marginRight (Css.rem -1.5)
        ]


neg_my_8 : Css.Style
neg_my_8 =
    Css.batch
        [ Css.marginTop (Css.rem -2)
        , Css.marginBottom (Css.rem -2)
        ]


neg_mx_8 : Css.Style
neg_mx_8 =
    Css.batch
        [ Css.marginLeft (Css.rem -2)
        , Css.marginRight (Css.rem -2)
        ]


neg_my_10 : Css.Style
neg_my_10 =
    Css.batch
        [ Css.marginTop (Css.rem -2.5)
        , Css.marginBottom (Css.rem -2.5)
        ]


neg_mx_10 : Css.Style
neg_mx_10 =
    Css.batch
        [ Css.marginLeft (Css.rem -2.5)
        , Css.marginRight (Css.rem -2.5)
        ]


neg_my_12 : Css.Style
neg_my_12 =
    Css.batch
        [ Css.marginTop (Css.rem -3)
        , Css.marginBottom (Css.rem -3)
        ]


neg_mx_12 : Css.Style
neg_mx_12 =
    Css.batch
        [ Css.marginLeft (Css.rem -3)
        , Css.marginRight (Css.rem -3)
        ]


neg_my_16 : Css.Style
neg_my_16 =
    Css.batch
        [ Css.marginTop (Css.rem -4)
        , Css.marginBottom (Css.rem -4)
        ]


neg_mx_16 : Css.Style
neg_mx_16 =
    Css.batch
        [ Css.marginLeft (Css.rem -4)
        , Css.marginRight (Css.rem -4)
        ]


neg_my_20 : Css.Style
neg_my_20 =
    Css.batch
        [ Css.marginTop (Css.rem -5)
        , Css.marginBottom (Css.rem -5)
        ]


neg_mx_20 : Css.Style
neg_mx_20 =
    Css.batch
        [ Css.marginLeft (Css.rem -5)
        , Css.marginRight (Css.rem -5)
        ]


neg_my_24 : Css.Style
neg_my_24 =
    Css.batch
        [ Css.marginTop (Css.rem -6)
        , Css.marginBottom (Css.rem -6)
        ]


neg_mx_24 : Css.Style
neg_mx_24 =
    Css.batch
        [ Css.marginLeft (Css.rem -6)
        , Css.marginRight (Css.rem -6)
        ]


neg_my_32 : Css.Style
neg_my_32 =
    Css.batch
        [ Css.marginTop (Css.rem -8)
        , Css.marginBottom (Css.rem -8)
        ]


neg_mx_32 : Css.Style
neg_mx_32 =
    Css.batch
        [ Css.marginLeft (Css.rem -8)
        , Css.marginRight (Css.rem -8)
        ]


neg_my_40 : Css.Style
neg_my_40 =
    Css.batch
        [ Css.marginTop (Css.rem -10)
        , Css.marginBottom (Css.rem -10)
        ]


neg_mx_40 : Css.Style
neg_mx_40 =
    Css.batch
        [ Css.marginLeft (Css.rem -10)
        , Css.marginRight (Css.rem -10)
        ]


neg_my_48 : Css.Style
neg_my_48 =
    Css.batch
        [ Css.marginTop (Css.rem -12)
        , Css.marginBottom (Css.rem -12)
        ]


neg_mx_48 : Css.Style
neg_mx_48 =
    Css.batch
        [ Css.marginLeft (Css.rem -12)
        , Css.marginRight (Css.rem -12)
        ]


neg_my_56 : Css.Style
neg_my_56 =
    Css.batch
        [ Css.marginTop (Css.rem -14)
        , Css.marginBottom (Css.rem -14)
        ]


neg_mx_56 : Css.Style
neg_mx_56 =
    Css.batch
        [ Css.marginLeft (Css.rem -14)
        , Css.marginRight (Css.rem -14)
        ]


neg_my_64 : Css.Style
neg_my_64 =
    Css.batch
        [ Css.marginTop (Css.rem -16)
        , Css.marginBottom (Css.rem -16)
        ]


neg_mx_64 : Css.Style
neg_mx_64 =
    Css.batch
        [ Css.marginLeft (Css.rem -16)
        , Css.marginRight (Css.rem -16)
        ]


neg_my_px : Css.Style
neg_my_px =
    Css.batch
        [ Css.marginTop (Css.px -1)
        , Css.marginBottom (Css.px -1)
        ]


neg_mx_px : Css.Style
neg_mx_px =
    Css.batch
        [ Css.marginLeft (Css.px -1)
        , Css.marginRight (Css.px -1)
        ]


mt_0 : Css.Style
mt_0 =
    Css.batch
        [ Css.marginTop (Css.px 0)
        ]


mr_0 : Css.Style
mr_0 =
    Css.batch
        [ Css.marginRight (Css.px 0)
        ]


mb_0 : Css.Style
mb_0 =
    Css.batch
        [ Css.marginBottom (Css.px 0)
        ]


ml_0 : Css.Style
ml_0 =
    Css.batch
        [ Css.marginLeft (Css.px 0)
        ]


mt_1 : Css.Style
mt_1 =
    Css.batch
        [ Css.marginTop (Css.rem 0.25)
        ]


mr_1 : Css.Style
mr_1 =
    Css.batch
        [ Css.marginRight (Css.rem 0.25)
        ]


mb_1 : Css.Style
mb_1 =
    Css.batch
        [ Css.marginBottom (Css.rem 0.25)
        ]


ml_1 : Css.Style
ml_1 =
    Css.batch
        [ Css.marginLeft (Css.rem 0.25)
        ]


mt_2 : Css.Style
mt_2 =
    Css.batch
        [ Css.marginTop (Css.rem 0.5)
        ]


mr_2 : Css.Style
mr_2 =
    Css.batch
        [ Css.marginRight (Css.rem 0.5)
        ]


mb_2 : Css.Style
mb_2 =
    Css.batch
        [ Css.marginBottom (Css.rem 0.5)
        ]


ml_2 : Css.Style
ml_2 =
    Css.batch
        [ Css.marginLeft (Css.rem 0.5)
        ]


mt_3 : Css.Style
mt_3 =
    Css.batch
        [ Css.marginTop (Css.rem 0.75)
        ]


mr_3 : Css.Style
mr_3 =
    Css.batch
        [ Css.marginRight (Css.rem 0.75)
        ]


mb_3 : Css.Style
mb_3 =
    Css.batch
        [ Css.marginBottom (Css.rem 0.75)
        ]


ml_3 : Css.Style
ml_3 =
    Css.batch
        [ Css.marginLeft (Css.rem 0.75)
        ]


mt_4 : Css.Style
mt_4 =
    Css.batch
        [ Css.marginTop (Css.rem 1)
        ]


mr_4 : Css.Style
mr_4 =
    Css.batch
        [ Css.marginRight (Css.rem 1)
        ]


mb_4 : Css.Style
mb_4 =
    Css.batch
        [ Css.marginBottom (Css.rem 1)
        ]


ml_4 : Css.Style
ml_4 =
    Css.batch
        [ Css.marginLeft (Css.rem 1)
        ]


mt_5 : Css.Style
mt_5 =
    Css.batch
        [ Css.marginTop (Css.rem 1.25)
        ]


mr_5 : Css.Style
mr_5 =
    Css.batch
        [ Css.marginRight (Css.rem 1.25)
        ]


mb_5 : Css.Style
mb_5 =
    Css.batch
        [ Css.marginBottom (Css.rem 1.25)
        ]


ml_5 : Css.Style
ml_5 =
    Css.batch
        [ Css.marginLeft (Css.rem 1.25)
        ]


mt_6 : Css.Style
mt_6 =
    Css.batch
        [ Css.marginTop (Css.rem 1.5)
        ]


mr_6 : Css.Style
mr_6 =
    Css.batch
        [ Css.marginRight (Css.rem 1.5)
        ]


mb_6 : Css.Style
mb_6 =
    Css.batch
        [ Css.marginBottom (Css.rem 1.5)
        ]


ml_6 : Css.Style
ml_6 =
    Css.batch
        [ Css.marginLeft (Css.rem 1.5)
        ]


mt_8 : Css.Style
mt_8 =
    Css.batch
        [ Css.marginTop (Css.rem 2)
        ]


mr_8 : Css.Style
mr_8 =
    Css.batch
        [ Css.marginRight (Css.rem 2)
        ]


mb_8 : Css.Style
mb_8 =
    Css.batch
        [ Css.marginBottom (Css.rem 2)
        ]


ml_8 : Css.Style
ml_8 =
    Css.batch
        [ Css.marginLeft (Css.rem 2)
        ]


mt_10 : Css.Style
mt_10 =
    Css.batch
        [ Css.marginTop (Css.rem 2.5)
        ]


mr_10 : Css.Style
mr_10 =
    Css.batch
        [ Css.marginRight (Css.rem 2.5)
        ]


mb_10 : Css.Style
mb_10 =
    Css.batch
        [ Css.marginBottom (Css.rem 2.5)
        ]


ml_10 : Css.Style
ml_10 =
    Css.batch
        [ Css.marginLeft (Css.rem 2.5)
        ]


mt_12 : Css.Style
mt_12 =
    Css.batch
        [ Css.marginTop (Css.rem 3)
        ]


mr_12 : Css.Style
mr_12 =
    Css.batch
        [ Css.marginRight (Css.rem 3)
        ]


mb_12 : Css.Style
mb_12 =
    Css.batch
        [ Css.marginBottom (Css.rem 3)
        ]


ml_12 : Css.Style
ml_12 =
    Css.batch
        [ Css.marginLeft (Css.rem 3)
        ]


mt_16 : Css.Style
mt_16 =
    Css.batch
        [ Css.marginTop (Css.rem 4)
        ]


mr_16 : Css.Style
mr_16 =
    Css.batch
        [ Css.marginRight (Css.rem 4)
        ]


mb_16 : Css.Style
mb_16 =
    Css.batch
        [ Css.marginBottom (Css.rem 4)
        ]


ml_16 : Css.Style
ml_16 =
    Css.batch
        [ Css.marginLeft (Css.rem 4)
        ]


mt_20 : Css.Style
mt_20 =
    Css.batch
        [ Css.marginTop (Css.rem 5)
        ]


mr_20 : Css.Style
mr_20 =
    Css.batch
        [ Css.marginRight (Css.rem 5)
        ]


mb_20 : Css.Style
mb_20 =
    Css.batch
        [ Css.marginBottom (Css.rem 5)
        ]


ml_20 : Css.Style
ml_20 =
    Css.batch
        [ Css.marginLeft (Css.rem 5)
        ]


mt_24 : Css.Style
mt_24 =
    Css.batch
        [ Css.marginTop (Css.rem 6)
        ]


mr_24 : Css.Style
mr_24 =
    Css.batch
        [ Css.marginRight (Css.rem 6)
        ]


mb_24 : Css.Style
mb_24 =
    Css.batch
        [ Css.marginBottom (Css.rem 6)
        ]


ml_24 : Css.Style
ml_24 =
    Css.batch
        [ Css.marginLeft (Css.rem 6)
        ]


mt_32 : Css.Style
mt_32 =
    Css.batch
        [ Css.marginTop (Css.rem 8)
        ]


mr_32 : Css.Style
mr_32 =
    Css.batch
        [ Css.marginRight (Css.rem 8)
        ]


mb_32 : Css.Style
mb_32 =
    Css.batch
        [ Css.marginBottom (Css.rem 8)
        ]


ml_32 : Css.Style
ml_32 =
    Css.batch
        [ Css.marginLeft (Css.rem 8)
        ]


mt_40 : Css.Style
mt_40 =
    Css.batch
        [ Css.marginTop (Css.rem 10)
        ]


mr_40 : Css.Style
mr_40 =
    Css.batch
        [ Css.marginRight (Css.rem 10)
        ]


mb_40 : Css.Style
mb_40 =
    Css.batch
        [ Css.marginBottom (Css.rem 10)
        ]


ml_40 : Css.Style
ml_40 =
    Css.batch
        [ Css.marginLeft (Css.rem 10)
        ]


mt_48 : Css.Style
mt_48 =
    Css.batch
        [ Css.marginTop (Css.rem 12)
        ]


mr_48 : Css.Style
mr_48 =
    Css.batch
        [ Css.marginRight (Css.rem 12)
        ]


mb_48 : Css.Style
mb_48 =
    Css.batch
        [ Css.marginBottom (Css.rem 12)
        ]


ml_48 : Css.Style
ml_48 =
    Css.batch
        [ Css.marginLeft (Css.rem 12)
        ]


mt_56 : Css.Style
mt_56 =
    Css.batch
        [ Css.marginTop (Css.rem 14)
        ]


mr_56 : Css.Style
mr_56 =
    Css.batch
        [ Css.marginRight (Css.rem 14)
        ]


mb_56 : Css.Style
mb_56 =
    Css.batch
        [ Css.marginBottom (Css.rem 14)
        ]


ml_56 : Css.Style
ml_56 =
    Css.batch
        [ Css.marginLeft (Css.rem 14)
        ]


mt_64 : Css.Style
mt_64 =
    Css.batch
        [ Css.marginTop (Css.rem 16)
        ]


mr_64 : Css.Style
mr_64 =
    Css.batch
        [ Css.marginRight (Css.rem 16)
        ]


mb_64 : Css.Style
mb_64 =
    Css.batch
        [ Css.marginBottom (Css.rem 16)
        ]


ml_64 : Css.Style
ml_64 =
    Css.batch
        [ Css.marginLeft (Css.rem 16)
        ]


mt_auto : Css.Style
mt_auto =
    Css.batch
        [ Css.marginTop Css.auto
        ]


mr_auto : Css.Style
mr_auto =
    Css.batch
        [ Css.marginRight Css.auto
        ]


mb_auto : Css.Style
mb_auto =
    Css.batch
        [ Css.marginBottom Css.auto
        ]


ml_auto : Css.Style
ml_auto =
    Css.batch
        [ Css.marginLeft Css.auto
        ]


mt_px : Css.Style
mt_px =
    Css.batch
        [ Css.marginTop (Css.px 1)
        ]


mr_px : Css.Style
mr_px =
    Css.batch
        [ Css.marginRight (Css.px 1)
        ]


mb_px : Css.Style
mb_px =
    Css.batch
        [ Css.marginBottom (Css.px 1)
        ]


ml_px : Css.Style
ml_px =
    Css.batch
        [ Css.marginLeft (Css.px 1)
        ]


neg_mt_1 : Css.Style
neg_mt_1 =
    Css.batch
        [ Css.marginTop (Css.rem -0.25)
        ]


neg_mr_1 : Css.Style
neg_mr_1 =
    Css.batch
        [ Css.marginRight (Css.rem -0.25)
        ]


neg_mb_1 : Css.Style
neg_mb_1 =
    Css.batch
        [ Css.marginBottom (Css.rem -0.25)
        ]


neg_ml_1 : Css.Style
neg_ml_1 =
    Css.batch
        [ Css.marginLeft (Css.rem -0.25)
        ]


neg_mt_2 : Css.Style
neg_mt_2 =
    Css.batch
        [ Css.marginTop (Css.rem -0.5)
        ]


neg_mr_2 : Css.Style
neg_mr_2 =
    Css.batch
        [ Css.marginRight (Css.rem -0.5)
        ]


neg_mb_2 : Css.Style
neg_mb_2 =
    Css.batch
        [ Css.marginBottom (Css.rem -0.5)
        ]


neg_ml_2 : Css.Style
neg_ml_2 =
    Css.batch
        [ Css.marginLeft (Css.rem -0.5)
        ]


neg_mt_3 : Css.Style
neg_mt_3 =
    Css.batch
        [ Css.marginTop (Css.rem -0.75)
        ]


neg_mr_3 : Css.Style
neg_mr_3 =
    Css.batch
        [ Css.marginRight (Css.rem -0.75)
        ]


neg_mb_3 : Css.Style
neg_mb_3 =
    Css.batch
        [ Css.marginBottom (Css.rem -0.75)
        ]


neg_ml_3 : Css.Style
neg_ml_3 =
    Css.batch
        [ Css.marginLeft (Css.rem -0.75)
        ]


neg_mt_4 : Css.Style
neg_mt_4 =
    Css.batch
        [ Css.marginTop (Css.rem -1)
        ]


neg_mr_4 : Css.Style
neg_mr_4 =
    Css.batch
        [ Css.marginRight (Css.rem -1)
        ]


neg_mb_4 : Css.Style
neg_mb_4 =
    Css.batch
        [ Css.marginBottom (Css.rem -1)
        ]


neg_ml_4 : Css.Style
neg_ml_4 =
    Css.batch
        [ Css.marginLeft (Css.rem -1)
        ]


neg_mt_5 : Css.Style
neg_mt_5 =
    Css.batch
        [ Css.marginTop (Css.rem -1.25)
        ]


neg_mr_5 : Css.Style
neg_mr_5 =
    Css.batch
        [ Css.marginRight (Css.rem -1.25)
        ]


neg_mb_5 : Css.Style
neg_mb_5 =
    Css.batch
        [ Css.marginBottom (Css.rem -1.25)
        ]


neg_ml_5 : Css.Style
neg_ml_5 =
    Css.batch
        [ Css.marginLeft (Css.rem -1.25)
        ]


neg_mt_6 : Css.Style
neg_mt_6 =
    Css.batch
        [ Css.marginTop (Css.rem -1.5)
        ]


neg_mr_6 : Css.Style
neg_mr_6 =
    Css.batch
        [ Css.marginRight (Css.rem -1.5)
        ]


neg_mb_6 : Css.Style
neg_mb_6 =
    Css.batch
        [ Css.marginBottom (Css.rem -1.5)
        ]


neg_ml_6 : Css.Style
neg_ml_6 =
    Css.batch
        [ Css.marginLeft (Css.rem -1.5)
        ]


neg_mt_8 : Css.Style
neg_mt_8 =
    Css.batch
        [ Css.marginTop (Css.rem -2)
        ]


neg_mr_8 : Css.Style
neg_mr_8 =
    Css.batch
        [ Css.marginRight (Css.rem -2)
        ]


neg_mb_8 : Css.Style
neg_mb_8 =
    Css.batch
        [ Css.marginBottom (Css.rem -2)
        ]


neg_ml_8 : Css.Style
neg_ml_8 =
    Css.batch
        [ Css.marginLeft (Css.rem -2)
        ]


neg_mt_10 : Css.Style
neg_mt_10 =
    Css.batch
        [ Css.marginTop (Css.rem -2.5)
        ]


neg_mr_10 : Css.Style
neg_mr_10 =
    Css.batch
        [ Css.marginRight (Css.rem -2.5)
        ]


neg_mb_10 : Css.Style
neg_mb_10 =
    Css.batch
        [ Css.marginBottom (Css.rem -2.5)
        ]


neg_ml_10 : Css.Style
neg_ml_10 =
    Css.batch
        [ Css.marginLeft (Css.rem -2.5)
        ]


neg_mt_12 : Css.Style
neg_mt_12 =
    Css.batch
        [ Css.marginTop (Css.rem -3)
        ]


neg_mr_12 : Css.Style
neg_mr_12 =
    Css.batch
        [ Css.marginRight (Css.rem -3)
        ]


neg_mb_12 : Css.Style
neg_mb_12 =
    Css.batch
        [ Css.marginBottom (Css.rem -3)
        ]


neg_ml_12 : Css.Style
neg_ml_12 =
    Css.batch
        [ Css.marginLeft (Css.rem -3)
        ]


neg_mt_16 : Css.Style
neg_mt_16 =
    Css.batch
        [ Css.marginTop (Css.rem -4)
        ]


neg_mr_16 : Css.Style
neg_mr_16 =
    Css.batch
        [ Css.marginRight (Css.rem -4)
        ]


neg_mb_16 : Css.Style
neg_mb_16 =
    Css.batch
        [ Css.marginBottom (Css.rem -4)
        ]


neg_ml_16 : Css.Style
neg_ml_16 =
    Css.batch
        [ Css.marginLeft (Css.rem -4)
        ]


neg_mt_20 : Css.Style
neg_mt_20 =
    Css.batch
        [ Css.marginTop (Css.rem -5)
        ]


neg_mr_20 : Css.Style
neg_mr_20 =
    Css.batch
        [ Css.marginRight (Css.rem -5)
        ]


neg_mb_20 : Css.Style
neg_mb_20 =
    Css.batch
        [ Css.marginBottom (Css.rem -5)
        ]


neg_ml_20 : Css.Style
neg_ml_20 =
    Css.batch
        [ Css.marginLeft (Css.rem -5)
        ]


neg_mt_24 : Css.Style
neg_mt_24 =
    Css.batch
        [ Css.marginTop (Css.rem -6)
        ]


neg_mr_24 : Css.Style
neg_mr_24 =
    Css.batch
        [ Css.marginRight (Css.rem -6)
        ]


neg_mb_24 : Css.Style
neg_mb_24 =
    Css.batch
        [ Css.marginBottom (Css.rem -6)
        ]


neg_ml_24 : Css.Style
neg_ml_24 =
    Css.batch
        [ Css.marginLeft (Css.rem -6)
        ]


neg_mt_32 : Css.Style
neg_mt_32 =
    Css.batch
        [ Css.marginTop (Css.rem -8)
        ]


neg_mr_32 : Css.Style
neg_mr_32 =
    Css.batch
        [ Css.marginRight (Css.rem -8)
        ]


neg_mb_32 : Css.Style
neg_mb_32 =
    Css.batch
        [ Css.marginBottom (Css.rem -8)
        ]


neg_ml_32 : Css.Style
neg_ml_32 =
    Css.batch
        [ Css.marginLeft (Css.rem -8)
        ]


neg_mt_40 : Css.Style
neg_mt_40 =
    Css.batch
        [ Css.marginTop (Css.rem -10)
        ]


neg_mr_40 : Css.Style
neg_mr_40 =
    Css.batch
        [ Css.marginRight (Css.rem -10)
        ]


neg_mb_40 : Css.Style
neg_mb_40 =
    Css.batch
        [ Css.marginBottom (Css.rem -10)
        ]


neg_ml_40 : Css.Style
neg_ml_40 =
    Css.batch
        [ Css.marginLeft (Css.rem -10)
        ]


neg_mt_48 : Css.Style
neg_mt_48 =
    Css.batch
        [ Css.marginTop (Css.rem -12)
        ]


neg_mr_48 : Css.Style
neg_mr_48 =
    Css.batch
        [ Css.marginRight (Css.rem -12)
        ]


neg_mb_48 : Css.Style
neg_mb_48 =
    Css.batch
        [ Css.marginBottom (Css.rem -12)
        ]


neg_ml_48 : Css.Style
neg_ml_48 =
    Css.batch
        [ Css.marginLeft (Css.rem -12)
        ]


neg_mt_56 : Css.Style
neg_mt_56 =
    Css.batch
        [ Css.marginTop (Css.rem -14)
        ]


neg_mr_56 : Css.Style
neg_mr_56 =
    Css.batch
        [ Css.marginRight (Css.rem -14)
        ]


neg_mb_56 : Css.Style
neg_mb_56 =
    Css.batch
        [ Css.marginBottom (Css.rem -14)
        ]


neg_ml_56 : Css.Style
neg_ml_56 =
    Css.batch
        [ Css.marginLeft (Css.rem -14)
        ]


neg_mt_64 : Css.Style
neg_mt_64 =
    Css.batch
        [ Css.marginTop (Css.rem -16)
        ]


neg_mr_64 : Css.Style
neg_mr_64 =
    Css.batch
        [ Css.marginRight (Css.rem -16)
        ]


neg_mb_64 : Css.Style
neg_mb_64 =
    Css.batch
        [ Css.marginBottom (Css.rem -16)
        ]


neg_ml_64 : Css.Style
neg_ml_64 =
    Css.batch
        [ Css.marginLeft (Css.rem -16)
        ]


neg_mt_px : Css.Style
neg_mt_px =
    Css.batch
        [ Css.marginTop (Css.px -1)
        ]


neg_mr_px : Css.Style
neg_mr_px =
    Css.batch
        [ Css.marginRight (Css.px -1)
        ]


neg_mb_px : Css.Style
neg_mb_px =
    Css.batch
        [ Css.marginBottom (Css.px -1)
        ]


neg_ml_px : Css.Style
neg_ml_px =
    Css.batch
        [ Css.marginLeft (Css.px -1)
        ]


max_h_full : Css.Style
max_h_full =
    Css.batch
        [ Css.maxHeight (Css.pct 100)
        ]


max_h_screen : Css.Style
max_h_screen =
    Css.batch
        [ Css.maxHeight (Css.vh 100)
        ]


max_w_none : Css.Style
max_w_none =
    Css.batch
        [ Css.maxWidth Css.none
        ]


max_w_xs : Css.Style
max_w_xs =
    Css.batch
        [ Css.maxWidth (Css.rem 20)
        ]


max_w_sm : Css.Style
max_w_sm =
    Css.batch
        [ Css.maxWidth (Css.rem 24)
        ]


max_w_md : Css.Style
max_w_md =
    Css.batch
        [ Css.maxWidth (Css.rem 28)
        ]


max_w_lg : Css.Style
max_w_lg =
    Css.batch
        [ Css.maxWidth (Css.rem 32)
        ]


max_w_xl : Css.Style
max_w_xl =
    Css.batch
        [ Css.maxWidth (Css.rem 36)
        ]


max_w_2xl : Css.Style
max_w_2xl =
    Css.batch
        [ Css.maxWidth (Css.rem 42)
        ]


max_w_3xl : Css.Style
max_w_3xl =
    Css.batch
        [ Css.maxWidth (Css.rem 48)
        ]


max_w_4xl : Css.Style
max_w_4xl =
    Css.batch
        [ Css.maxWidth (Css.rem 56)
        ]


max_w_5xl : Css.Style
max_w_5xl =
    Css.batch
        [ Css.maxWidth (Css.rem 64)
        ]


max_w_6xl : Css.Style
max_w_6xl =
    Css.batch
        [ Css.maxWidth (Css.rem 72)
        ]


max_w_full : Css.Style
max_w_full =
    Css.batch
        [ Css.maxWidth (Css.pct 100)
        ]


max_w_screen_sm : Css.Style
max_w_screen_sm =
    Css.batch
        [ Css.maxWidth (Css.px 640)
        ]


max_w_screen_md : Css.Style
max_w_screen_md =
    Css.batch
        [ Css.maxWidth (Css.px 768)
        ]


max_w_screen_lg : Css.Style
max_w_screen_lg =
    Css.batch
        [ Css.maxWidth (Css.px 1024)
        ]


max_w_screen_xl : Css.Style
max_w_screen_xl =
    Css.batch
        [ Css.maxWidth (Css.px 1280)
        ]


min_h_0 : Css.Style
min_h_0 =
    Css.batch
        [ Css.minHeight (Css.px 0)
        ]


min_h_full : Css.Style
min_h_full =
    Css.batch
        [ Css.minHeight (Css.pct 100)
        ]


min_h_screen : Css.Style
min_h_screen =
    Css.batch
        [ Css.minHeight (Css.vh 100)
        ]


min_w_0 : Css.Style
min_w_0 =
    Css.batch
        [ Css.minWidth (Css.px 0)
        ]


min_w_full : Css.Style
min_w_full =
    Css.batch
        [ Css.minWidth (Css.pct 100)
        ]


object_contain : Css.Style
object_contain =
    Css.batch
        [ Css.property "object-fit" "contain"
        ]


object_cover : Css.Style
object_cover =
    Css.batch
        [ Css.property "object-fit" "cover"
        ]


object_fill : Css.Style
object_fill =
    Css.batch
        [ Css.property "object-fit" "fill"
        ]


object_none : Css.Style
object_none =
    Css.batch
        [ Css.property "object-fit" "none"
        ]


object_scale_down : Css.Style
object_scale_down =
    Css.batch
        [ Css.property "object-fit" "scale-down"
        ]


object_bottom : Css.Style
object_bottom =
    Css.batch
        [ Css.property "object-position" "bottom"
        ]


object_center : Css.Style
object_center =
    Css.batch
        [ Css.property "object-position" "center"
        ]


object_left : Css.Style
object_left =
    Css.batch
        [ Css.property "object-position" "left"
        ]


object_left_bottom : Css.Style
object_left_bottom =
    Css.batch
        [ Css.property "object-position" "left bottom"
        ]


object_left_top : Css.Style
object_left_top =
    Css.batch
        [ Css.property "object-position" "left top"
        ]


object_right : Css.Style
object_right =
    Css.batch
        [ Css.property "object-position" "right"
        ]


object_right_bottom : Css.Style
object_right_bottom =
    Css.batch
        [ Css.property "object-position" "right bottom"
        ]


object_right_top : Css.Style
object_right_top =
    Css.batch
        [ Css.property "object-position" "right top"
        ]


object_top : Css.Style
object_top =
    Css.batch
        [ Css.property "object-position" "top"
        ]


opacity_0 : Css.Style
opacity_0 =
    Css.batch
        [ Css.opacity (Css.int 0)
        ]


opacity_25 : Css.Style
opacity_25 =
    Css.batch
        [ Css.opacity (Css.num 0.25)
        ]


opacity_50 : Css.Style
opacity_50 =
    Css.batch
        [ Css.opacity (Css.num 0.5)
        ]


opacity_75 : Css.Style
opacity_75 =
    Css.batch
        [ Css.opacity (Css.num 0.75)
        ]


opacity_100 : Css.Style
opacity_100 =
    Css.batch
        [ Css.opacity (Css.int 1)
        ]


hover__opacity_0 : Css.Style
hover__opacity_0 =
    Css.batch
        [ Css.hover
            [ Css.opacity (Css.int 0)
            ]
        ]


hover__opacity_25 : Css.Style
hover__opacity_25 =
    Css.batch
        [ Css.hover
            [ Css.opacity (Css.num 0.25)
            ]
        ]


hover__opacity_50 : Css.Style
hover__opacity_50 =
    Css.batch
        [ Css.hover
            [ Css.opacity (Css.num 0.5)
            ]
        ]


hover__opacity_75 : Css.Style
hover__opacity_75 =
    Css.batch
        [ Css.hover
            [ Css.opacity (Css.num 0.75)
            ]
        ]


hover__opacity_100 : Css.Style
hover__opacity_100 =
    Css.batch
        [ Css.hover
            [ Css.opacity (Css.int 1)
            ]
        ]


focus__opacity_0 : Css.Style
focus__opacity_0 =
    Css.batch
        [ Css.focus
            [ Css.opacity (Css.int 0)
            ]
        ]


focus__opacity_25 : Css.Style
focus__opacity_25 =
    Css.batch
        [ Css.focus
            [ Css.opacity (Css.num 0.25)
            ]
        ]


focus__opacity_50 : Css.Style
focus__opacity_50 =
    Css.batch
        [ Css.focus
            [ Css.opacity (Css.num 0.5)
            ]
        ]


focus__opacity_75 : Css.Style
focus__opacity_75 =
    Css.batch
        [ Css.focus
            [ Css.opacity (Css.num 0.75)
            ]
        ]


focus__opacity_100 : Css.Style
focus__opacity_100 =
    Css.batch
        [ Css.focus
            [ Css.opacity (Css.int 1)
            ]
        ]


outline_none : Css.Style
outline_none =
    Css.batch
        [ Css.property "outline" "0"
        ]


focus__outline_none : Css.Style
focus__outline_none =
    Css.batch
        [ Css.focus
            [ Css.property "outline" "0"
            ]
        ]


overflow_auto : Css.Style
overflow_auto =
    Css.batch
        [ Css.overflow Css.auto
        ]


overflow_hidden : Css.Style
overflow_hidden =
    Css.batch
        [ Css.overflow Css.hidden
        ]


overflow_visible : Css.Style
overflow_visible =
    Css.batch
        [ Css.overflow Css.visible
        ]


overflow_scroll : Css.Style
overflow_scroll =
    Css.batch
        [ Css.overflow Css.scroll
        ]


overflow_x_auto : Css.Style
overflow_x_auto =
    Css.batch
        [ Css.overflowX Css.auto
        ]


overflow_y_auto : Css.Style
overflow_y_auto =
    Css.batch
        [ Css.overflowY Css.auto
        ]


overflow_x_hidden : Css.Style
overflow_x_hidden =
    Css.batch
        [ Css.overflowX Css.hidden
        ]


overflow_y_hidden : Css.Style
overflow_y_hidden =
    Css.batch
        [ Css.overflowY Css.hidden
        ]


overflow_x_visible : Css.Style
overflow_x_visible =
    Css.batch
        [ Css.overflowX Css.visible
        ]


overflow_y_visible : Css.Style
overflow_y_visible =
    Css.batch
        [ Css.overflowY Css.visible
        ]


overflow_x_scroll : Css.Style
overflow_x_scroll =
    Css.batch
        [ Css.overflowX Css.scroll
        ]


overflow_y_scroll : Css.Style
overflow_y_scroll =
    Css.batch
        [ Css.overflowY Css.scroll
        ]


scrolling_touch : Css.Style
scrolling_touch =
    Css.batch
        [ Css.property "-webkit-overflow-scrolling" "touch"
        ]


scrolling_auto : Css.Style
scrolling_auto =
    Css.batch
        [ Css.property "-webkit-overflow-scrolling" "auto"
        ]


p_0 : Css.Style
p_0 =
    Css.batch
        [ Css.padding (Css.px 0)
        ]


p_1 : Css.Style
p_1 =
    Css.batch
        [ Css.padding (Css.rem 0.25)
        ]


p_2 : Css.Style
p_2 =
    Css.batch
        [ Css.padding (Css.rem 0.5)
        ]


p_3 : Css.Style
p_3 =
    Css.batch
        [ Css.padding (Css.rem 0.75)
        ]


p_4 : Css.Style
p_4 =
    Css.batch
        [ Css.padding (Css.rem 1)
        ]


p_5 : Css.Style
p_5 =
    Css.batch
        [ Css.padding (Css.rem 1.25)
        ]


p_6 : Css.Style
p_6 =
    Css.batch
        [ Css.padding (Css.rem 1.5)
        ]


p_8 : Css.Style
p_8 =
    Css.batch
        [ Css.padding (Css.rem 2)
        ]


p_10 : Css.Style
p_10 =
    Css.batch
        [ Css.padding (Css.rem 2.5)
        ]


p_12 : Css.Style
p_12 =
    Css.batch
        [ Css.padding (Css.rem 3)
        ]


p_16 : Css.Style
p_16 =
    Css.batch
        [ Css.padding (Css.rem 4)
        ]


p_20 : Css.Style
p_20 =
    Css.batch
        [ Css.padding (Css.rem 5)
        ]


p_24 : Css.Style
p_24 =
    Css.batch
        [ Css.padding (Css.rem 6)
        ]


p_32 : Css.Style
p_32 =
    Css.batch
        [ Css.padding (Css.rem 8)
        ]


p_40 : Css.Style
p_40 =
    Css.batch
        [ Css.padding (Css.rem 10)
        ]


p_48 : Css.Style
p_48 =
    Css.batch
        [ Css.padding (Css.rem 12)
        ]


p_56 : Css.Style
p_56 =
    Css.batch
        [ Css.padding (Css.rem 14)
        ]


p_64 : Css.Style
p_64 =
    Css.batch
        [ Css.padding (Css.rem 16)
        ]


p_px : Css.Style
p_px =
    Css.batch
        [ Css.padding (Css.px 1)
        ]


py_0 : Css.Style
py_0 =
    Css.batch
        [ Css.paddingTop (Css.px 0)
        , Css.paddingBottom (Css.px 0)
        ]


px_0 : Css.Style
px_0 =
    Css.batch
        [ Css.paddingLeft (Css.px 0)
        , Css.paddingRight (Css.px 0)
        ]


py_1 : Css.Style
py_1 =
    Css.batch
        [ Css.paddingTop (Css.rem 0.25)
        , Css.paddingBottom (Css.rem 0.25)
        ]


px_1 : Css.Style
px_1 =
    Css.batch
        [ Css.paddingLeft (Css.rem 0.25)
        , Css.paddingRight (Css.rem 0.25)
        ]


py_2 : Css.Style
py_2 =
    Css.batch
        [ Css.paddingTop (Css.rem 0.5)
        , Css.paddingBottom (Css.rem 0.5)
        ]


px_2 : Css.Style
px_2 =
    Css.batch
        [ Css.paddingLeft (Css.rem 0.5)
        , Css.paddingRight (Css.rem 0.5)
        ]


py_3 : Css.Style
py_3 =
    Css.batch
        [ Css.paddingTop (Css.rem 0.75)
        , Css.paddingBottom (Css.rem 0.75)
        ]


px_3 : Css.Style
px_3 =
    Css.batch
        [ Css.paddingLeft (Css.rem 0.75)
        , Css.paddingRight (Css.rem 0.75)
        ]


py_4 : Css.Style
py_4 =
    Css.batch
        [ Css.paddingTop (Css.rem 1)
        , Css.paddingBottom (Css.rem 1)
        ]


px_4 : Css.Style
px_4 =
    Css.batch
        [ Css.paddingLeft (Css.rem 1)
        , Css.paddingRight (Css.rem 1)
        ]


py_5 : Css.Style
py_5 =
    Css.batch
        [ Css.paddingTop (Css.rem 1.25)
        , Css.paddingBottom (Css.rem 1.25)
        ]


px_5 : Css.Style
px_5 =
    Css.batch
        [ Css.paddingLeft (Css.rem 1.25)
        , Css.paddingRight (Css.rem 1.25)
        ]


py_6 : Css.Style
py_6 =
    Css.batch
        [ Css.paddingTop (Css.rem 1.5)
        , Css.paddingBottom (Css.rem 1.5)
        ]


px_6 : Css.Style
px_6 =
    Css.batch
        [ Css.paddingLeft (Css.rem 1.5)
        , Css.paddingRight (Css.rem 1.5)
        ]


py_8 : Css.Style
py_8 =
    Css.batch
        [ Css.paddingTop (Css.rem 2)
        , Css.paddingBottom (Css.rem 2)
        ]


px_8 : Css.Style
px_8 =
    Css.batch
        [ Css.paddingLeft (Css.rem 2)
        , Css.paddingRight (Css.rem 2)
        ]


py_10 : Css.Style
py_10 =
    Css.batch
        [ Css.paddingTop (Css.rem 2.5)
        , Css.paddingBottom (Css.rem 2.5)
        ]


px_10 : Css.Style
px_10 =
    Css.batch
        [ Css.paddingLeft (Css.rem 2.5)
        , Css.paddingRight (Css.rem 2.5)
        ]


py_12 : Css.Style
py_12 =
    Css.batch
        [ Css.paddingTop (Css.rem 3)
        , Css.paddingBottom (Css.rem 3)
        ]


px_12 : Css.Style
px_12 =
    Css.batch
        [ Css.paddingLeft (Css.rem 3)
        , Css.paddingRight (Css.rem 3)
        ]


py_16 : Css.Style
py_16 =
    Css.batch
        [ Css.paddingTop (Css.rem 4)
        , Css.paddingBottom (Css.rem 4)
        ]


px_16 : Css.Style
px_16 =
    Css.batch
        [ Css.paddingLeft (Css.rem 4)
        , Css.paddingRight (Css.rem 4)
        ]


py_20 : Css.Style
py_20 =
    Css.batch
        [ Css.paddingTop (Css.rem 5)
        , Css.paddingBottom (Css.rem 5)
        ]


px_20 : Css.Style
px_20 =
    Css.batch
        [ Css.paddingLeft (Css.rem 5)
        , Css.paddingRight (Css.rem 5)
        ]


py_24 : Css.Style
py_24 =
    Css.batch
        [ Css.paddingTop (Css.rem 6)
        , Css.paddingBottom (Css.rem 6)
        ]


px_24 : Css.Style
px_24 =
    Css.batch
        [ Css.paddingLeft (Css.rem 6)
        , Css.paddingRight (Css.rem 6)
        ]


py_32 : Css.Style
py_32 =
    Css.batch
        [ Css.paddingTop (Css.rem 8)
        , Css.paddingBottom (Css.rem 8)
        ]


px_32 : Css.Style
px_32 =
    Css.batch
        [ Css.paddingLeft (Css.rem 8)
        , Css.paddingRight (Css.rem 8)
        ]


py_40 : Css.Style
py_40 =
    Css.batch
        [ Css.paddingTop (Css.rem 10)
        , Css.paddingBottom (Css.rem 10)
        ]


px_40 : Css.Style
px_40 =
    Css.batch
        [ Css.paddingLeft (Css.rem 10)
        , Css.paddingRight (Css.rem 10)
        ]


py_48 : Css.Style
py_48 =
    Css.batch
        [ Css.paddingTop (Css.rem 12)
        , Css.paddingBottom (Css.rem 12)
        ]


px_48 : Css.Style
px_48 =
    Css.batch
        [ Css.paddingLeft (Css.rem 12)
        , Css.paddingRight (Css.rem 12)
        ]


py_56 : Css.Style
py_56 =
    Css.batch
        [ Css.paddingTop (Css.rem 14)
        , Css.paddingBottom (Css.rem 14)
        ]


px_56 : Css.Style
px_56 =
    Css.batch
        [ Css.paddingLeft (Css.rem 14)
        , Css.paddingRight (Css.rem 14)
        ]


py_64 : Css.Style
py_64 =
    Css.batch
        [ Css.paddingTop (Css.rem 16)
        , Css.paddingBottom (Css.rem 16)
        ]


px_64 : Css.Style
px_64 =
    Css.batch
        [ Css.paddingLeft (Css.rem 16)
        , Css.paddingRight (Css.rem 16)
        ]


py_px : Css.Style
py_px =
    Css.batch
        [ Css.paddingTop (Css.px 1)
        , Css.paddingBottom (Css.px 1)
        ]


px_px : Css.Style
px_px =
    Css.batch
        [ Css.paddingLeft (Css.px 1)
        , Css.paddingRight (Css.px 1)
        ]


pt_0 : Css.Style
pt_0 =
    Css.batch
        [ Css.paddingTop (Css.px 0)
        ]


pr_0 : Css.Style
pr_0 =
    Css.batch
        [ Css.paddingRight (Css.px 0)
        ]


pb_0 : Css.Style
pb_0 =
    Css.batch
        [ Css.paddingBottom (Css.px 0)
        ]


pl_0 : Css.Style
pl_0 =
    Css.batch
        [ Css.paddingLeft (Css.px 0)
        ]


pt_1 : Css.Style
pt_1 =
    Css.batch
        [ Css.paddingTop (Css.rem 0.25)
        ]


pr_1 : Css.Style
pr_1 =
    Css.batch
        [ Css.paddingRight (Css.rem 0.25)
        ]


pb_1 : Css.Style
pb_1 =
    Css.batch
        [ Css.paddingBottom (Css.rem 0.25)
        ]


pl_1 : Css.Style
pl_1 =
    Css.batch
        [ Css.paddingLeft (Css.rem 0.25)
        ]


pt_2 : Css.Style
pt_2 =
    Css.batch
        [ Css.paddingTop (Css.rem 0.5)
        ]


pr_2 : Css.Style
pr_2 =
    Css.batch
        [ Css.paddingRight (Css.rem 0.5)
        ]


pb_2 : Css.Style
pb_2 =
    Css.batch
        [ Css.paddingBottom (Css.rem 0.5)
        ]


pl_2 : Css.Style
pl_2 =
    Css.batch
        [ Css.paddingLeft (Css.rem 0.5)
        ]


pt_3 : Css.Style
pt_3 =
    Css.batch
        [ Css.paddingTop (Css.rem 0.75)
        ]


pr_3 : Css.Style
pr_3 =
    Css.batch
        [ Css.paddingRight (Css.rem 0.75)
        ]


pb_3 : Css.Style
pb_3 =
    Css.batch
        [ Css.paddingBottom (Css.rem 0.75)
        ]


pl_3 : Css.Style
pl_3 =
    Css.batch
        [ Css.paddingLeft (Css.rem 0.75)
        ]


pt_4 : Css.Style
pt_4 =
    Css.batch
        [ Css.paddingTop (Css.rem 1)
        ]


pr_4 : Css.Style
pr_4 =
    Css.batch
        [ Css.paddingRight (Css.rem 1)
        ]


pb_4 : Css.Style
pb_4 =
    Css.batch
        [ Css.paddingBottom (Css.rem 1)
        ]


pl_4 : Css.Style
pl_4 =
    Css.batch
        [ Css.paddingLeft (Css.rem 1)
        ]


pt_5 : Css.Style
pt_5 =
    Css.batch
        [ Css.paddingTop (Css.rem 1.25)
        ]


pr_5 : Css.Style
pr_5 =
    Css.batch
        [ Css.paddingRight (Css.rem 1.25)
        ]


pb_5 : Css.Style
pb_5 =
    Css.batch
        [ Css.paddingBottom (Css.rem 1.25)
        ]


pl_5 : Css.Style
pl_5 =
    Css.batch
        [ Css.paddingLeft (Css.rem 1.25)
        ]


pt_6 : Css.Style
pt_6 =
    Css.batch
        [ Css.paddingTop (Css.rem 1.5)
        ]


pr_6 : Css.Style
pr_6 =
    Css.batch
        [ Css.paddingRight (Css.rem 1.5)
        ]


pb_6 : Css.Style
pb_6 =
    Css.batch
        [ Css.paddingBottom (Css.rem 1.5)
        ]


pl_6 : Css.Style
pl_6 =
    Css.batch
        [ Css.paddingLeft (Css.rem 1.5)
        ]


pt_8 : Css.Style
pt_8 =
    Css.batch
        [ Css.paddingTop (Css.rem 2)
        ]


pr_8 : Css.Style
pr_8 =
    Css.batch
        [ Css.paddingRight (Css.rem 2)
        ]


pb_8 : Css.Style
pb_8 =
    Css.batch
        [ Css.paddingBottom (Css.rem 2)
        ]


pl_8 : Css.Style
pl_8 =
    Css.batch
        [ Css.paddingLeft (Css.rem 2)
        ]


pt_10 : Css.Style
pt_10 =
    Css.batch
        [ Css.paddingTop (Css.rem 2.5)
        ]


pr_10 : Css.Style
pr_10 =
    Css.batch
        [ Css.paddingRight (Css.rem 2.5)
        ]


pb_10 : Css.Style
pb_10 =
    Css.batch
        [ Css.paddingBottom (Css.rem 2.5)
        ]


pl_10 : Css.Style
pl_10 =
    Css.batch
        [ Css.paddingLeft (Css.rem 2.5)
        ]


pt_12 : Css.Style
pt_12 =
    Css.batch
        [ Css.paddingTop (Css.rem 3)
        ]


pr_12 : Css.Style
pr_12 =
    Css.batch
        [ Css.paddingRight (Css.rem 3)
        ]


pb_12 : Css.Style
pb_12 =
    Css.batch
        [ Css.paddingBottom (Css.rem 3)
        ]


pl_12 : Css.Style
pl_12 =
    Css.batch
        [ Css.paddingLeft (Css.rem 3)
        ]


pt_16 : Css.Style
pt_16 =
    Css.batch
        [ Css.paddingTop (Css.rem 4)
        ]


pr_16 : Css.Style
pr_16 =
    Css.batch
        [ Css.paddingRight (Css.rem 4)
        ]


pb_16 : Css.Style
pb_16 =
    Css.batch
        [ Css.paddingBottom (Css.rem 4)
        ]


pl_16 : Css.Style
pl_16 =
    Css.batch
        [ Css.paddingLeft (Css.rem 4)
        ]


pt_20 : Css.Style
pt_20 =
    Css.batch
        [ Css.paddingTop (Css.rem 5)
        ]


pr_20 : Css.Style
pr_20 =
    Css.batch
        [ Css.paddingRight (Css.rem 5)
        ]


pb_20 : Css.Style
pb_20 =
    Css.batch
        [ Css.paddingBottom (Css.rem 5)
        ]


pl_20 : Css.Style
pl_20 =
    Css.batch
        [ Css.paddingLeft (Css.rem 5)
        ]


pt_24 : Css.Style
pt_24 =
    Css.batch
        [ Css.paddingTop (Css.rem 6)
        ]


pr_24 : Css.Style
pr_24 =
    Css.batch
        [ Css.paddingRight (Css.rem 6)
        ]


pb_24 : Css.Style
pb_24 =
    Css.batch
        [ Css.paddingBottom (Css.rem 6)
        ]


pl_24 : Css.Style
pl_24 =
    Css.batch
        [ Css.paddingLeft (Css.rem 6)
        ]


pt_32 : Css.Style
pt_32 =
    Css.batch
        [ Css.paddingTop (Css.rem 8)
        ]


pr_32 : Css.Style
pr_32 =
    Css.batch
        [ Css.paddingRight (Css.rem 8)
        ]


pb_32 : Css.Style
pb_32 =
    Css.batch
        [ Css.paddingBottom (Css.rem 8)
        ]


pl_32 : Css.Style
pl_32 =
    Css.batch
        [ Css.paddingLeft (Css.rem 8)
        ]


pt_40 : Css.Style
pt_40 =
    Css.batch
        [ Css.paddingTop (Css.rem 10)
        ]


pr_40 : Css.Style
pr_40 =
    Css.batch
        [ Css.paddingRight (Css.rem 10)
        ]


pb_40 : Css.Style
pb_40 =
    Css.batch
        [ Css.paddingBottom (Css.rem 10)
        ]


pl_40 : Css.Style
pl_40 =
    Css.batch
        [ Css.paddingLeft (Css.rem 10)
        ]


pt_48 : Css.Style
pt_48 =
    Css.batch
        [ Css.paddingTop (Css.rem 12)
        ]


pr_48 : Css.Style
pr_48 =
    Css.batch
        [ Css.paddingRight (Css.rem 12)
        ]


pb_48 : Css.Style
pb_48 =
    Css.batch
        [ Css.paddingBottom (Css.rem 12)
        ]


pl_48 : Css.Style
pl_48 =
    Css.batch
        [ Css.paddingLeft (Css.rem 12)
        ]


pt_56 : Css.Style
pt_56 =
    Css.batch
        [ Css.paddingTop (Css.rem 14)
        ]


pr_56 : Css.Style
pr_56 =
    Css.batch
        [ Css.paddingRight (Css.rem 14)
        ]


pb_56 : Css.Style
pb_56 =
    Css.batch
        [ Css.paddingBottom (Css.rem 14)
        ]


pl_56 : Css.Style
pl_56 =
    Css.batch
        [ Css.paddingLeft (Css.rem 14)
        ]


pt_64 : Css.Style
pt_64 =
    Css.batch
        [ Css.paddingTop (Css.rem 16)
        ]


pr_64 : Css.Style
pr_64 =
    Css.batch
        [ Css.paddingRight (Css.rem 16)
        ]


pb_64 : Css.Style
pb_64 =
    Css.batch
        [ Css.paddingBottom (Css.rem 16)
        ]


pl_64 : Css.Style
pl_64 =
    Css.batch
        [ Css.paddingLeft (Css.rem 16)
        ]


pt_px : Css.Style
pt_px =
    Css.batch
        [ Css.paddingTop (Css.px 1)
        ]


pr_px : Css.Style
pr_px =
    Css.batch
        [ Css.paddingRight (Css.px 1)
        ]


pb_px : Css.Style
pb_px =
    Css.batch
        [ Css.paddingBottom (Css.px 1)
        ]


pl_px : Css.Style
pl_px =
    Css.batch
        [ Css.paddingLeft (Css.px 1)
        ]


placeholder_transparent : Css.Style
placeholder_transparent =
    Css.batch
        [ Css.color Css.transparent
        ]


placeholder_current : Css.Style
placeholder_current =
    Css.batch
        [ Css.color Css.currentColor
        ]


placeholder_black : Css.Style
placeholder_black =
    Css.batch
        [ Css.color (Css.hex "#000")
        ]


placeholder_white : Css.Style
placeholder_white =
    Css.batch
        [ Css.color (Css.hex "#fff")
        ]


placeholder_gray_100 : Css.Style
placeholder_gray_100 =
    Css.batch
        [ Css.color (Css.hex "#f7fafc")
        ]


placeholder_gray_200 : Css.Style
placeholder_gray_200 =
    Css.batch
        [ Css.color (Css.hex "#edf2f7")
        ]


placeholder_gray_300 : Css.Style
placeholder_gray_300 =
    Css.batch
        [ Css.color (Css.hex "#e2e8f0")
        ]


placeholder_gray_400 : Css.Style
placeholder_gray_400 =
    Css.batch
        [ Css.color (Css.hex "#cbd5e0")
        ]


placeholder_gray_500 : Css.Style
placeholder_gray_500 =
    Css.batch
        [ Css.color (Css.hex "#a0aec0")
        ]


placeholder_gray_600 : Css.Style
placeholder_gray_600 =
    Css.batch
        [ Css.color (Css.hex "#718096")
        ]


placeholder_gray_700 : Css.Style
placeholder_gray_700 =
    Css.batch
        [ Css.color (Css.hex "#4a5568")
        ]


placeholder_gray_800 : Css.Style
placeholder_gray_800 =
    Css.batch
        [ Css.color (Css.hex "#2d3748")
        ]


placeholder_gray_900 : Css.Style
placeholder_gray_900 =
    Css.batch
        [ Css.color (Css.hex "#1a202c")
        ]


placeholder_red_100 : Css.Style
placeholder_red_100 =
    Css.batch
        [ Css.color (Css.hex "#fff5f5")
        ]


placeholder_red_200 : Css.Style
placeholder_red_200 =
    Css.batch
        [ Css.color (Css.hex "#fed7d7")
        ]


placeholder_red_300 : Css.Style
placeholder_red_300 =
    Css.batch
        [ Css.color (Css.hex "#feb2b2")
        ]


placeholder_red_400 : Css.Style
placeholder_red_400 =
    Css.batch
        [ Css.color (Css.hex "#fc8181")
        ]


placeholder_red_500 : Css.Style
placeholder_red_500 =
    Css.batch
        [ Css.color (Css.hex "#f56565")
        ]


placeholder_red_600 : Css.Style
placeholder_red_600 =
    Css.batch
        [ Css.color (Css.hex "#e53e3e")
        ]


placeholder_red_700 : Css.Style
placeholder_red_700 =
    Css.batch
        [ Css.color (Css.hex "#c53030")
        ]


placeholder_red_800 : Css.Style
placeholder_red_800 =
    Css.batch
        [ Css.color (Css.hex "#9b2c2c")
        ]


placeholder_red_900 : Css.Style
placeholder_red_900 =
    Css.batch
        [ Css.color (Css.hex "#742a2a")
        ]


placeholder_orange_100 : Css.Style
placeholder_orange_100 =
    Css.batch
        [ Css.color (Css.hex "#fffaf0")
        ]


placeholder_orange_200 : Css.Style
placeholder_orange_200 =
    Css.batch
        [ Css.color (Css.hex "#feebc8")
        ]


placeholder_orange_300 : Css.Style
placeholder_orange_300 =
    Css.batch
        [ Css.color (Css.hex "#fbd38d")
        ]


placeholder_orange_400 : Css.Style
placeholder_orange_400 =
    Css.batch
        [ Css.color (Css.hex "#f6ad55")
        ]


placeholder_orange_500 : Css.Style
placeholder_orange_500 =
    Css.batch
        [ Css.color (Css.hex "#ed8936")
        ]


placeholder_orange_600 : Css.Style
placeholder_orange_600 =
    Css.batch
        [ Css.color (Css.hex "#dd6b20")
        ]


placeholder_orange_700 : Css.Style
placeholder_orange_700 =
    Css.batch
        [ Css.color (Css.hex "#c05621")
        ]


placeholder_orange_800 : Css.Style
placeholder_orange_800 =
    Css.batch
        [ Css.color (Css.hex "#9c4221")
        ]


placeholder_orange_900 : Css.Style
placeholder_orange_900 =
    Css.batch
        [ Css.color (Css.hex "#7b341e")
        ]


placeholder_yellow_100 : Css.Style
placeholder_yellow_100 =
    Css.batch
        [ Css.color (Css.hex "#fffff0")
        ]


placeholder_yellow_200 : Css.Style
placeholder_yellow_200 =
    Css.batch
        [ Css.color (Css.hex "#fefcbf")
        ]


placeholder_yellow_300 : Css.Style
placeholder_yellow_300 =
    Css.batch
        [ Css.color (Css.hex "#faf089")
        ]


placeholder_yellow_400 : Css.Style
placeholder_yellow_400 =
    Css.batch
        [ Css.color (Css.hex "#f6e05e")
        ]


placeholder_yellow_500 : Css.Style
placeholder_yellow_500 =
    Css.batch
        [ Css.color (Css.hex "#ecc94b")
        ]


placeholder_yellow_600 : Css.Style
placeholder_yellow_600 =
    Css.batch
        [ Css.color (Css.hex "#d69e2e")
        ]


placeholder_yellow_700 : Css.Style
placeholder_yellow_700 =
    Css.batch
        [ Css.color (Css.hex "#b7791f")
        ]


placeholder_yellow_800 : Css.Style
placeholder_yellow_800 =
    Css.batch
        [ Css.color (Css.hex "#975a16")
        ]


placeholder_yellow_900 : Css.Style
placeholder_yellow_900 =
    Css.batch
        [ Css.color (Css.hex "#744210")
        ]


placeholder_green_100 : Css.Style
placeholder_green_100 =
    Css.batch
        [ Css.color (Css.hex "#f0fff4")
        ]


placeholder_green_200 : Css.Style
placeholder_green_200 =
    Css.batch
        [ Css.color (Css.hex "#c6f6d5")
        ]


placeholder_green_300 : Css.Style
placeholder_green_300 =
    Css.batch
        [ Css.color (Css.hex "#9ae6b4")
        ]


placeholder_green_400 : Css.Style
placeholder_green_400 =
    Css.batch
        [ Css.color (Css.hex "#68d391")
        ]


placeholder_green_500 : Css.Style
placeholder_green_500 =
    Css.batch
        [ Css.color (Css.hex "#48bb78")
        ]


placeholder_green_600 : Css.Style
placeholder_green_600 =
    Css.batch
        [ Css.color (Css.hex "#38a169")
        ]


placeholder_green_700 : Css.Style
placeholder_green_700 =
    Css.batch
        [ Css.color (Css.hex "#2f855a")
        ]


placeholder_green_800 : Css.Style
placeholder_green_800 =
    Css.batch
        [ Css.color (Css.hex "#276749")
        ]


placeholder_green_900 : Css.Style
placeholder_green_900 =
    Css.batch
        [ Css.color (Css.hex "#22543d")
        ]


placeholder_teal_100 : Css.Style
placeholder_teal_100 =
    Css.batch
        [ Css.color (Css.hex "#e6fffa")
        ]


placeholder_teal_200 : Css.Style
placeholder_teal_200 =
    Css.batch
        [ Css.color (Css.hex "#b2f5ea")
        ]


placeholder_teal_300 : Css.Style
placeholder_teal_300 =
    Css.batch
        [ Css.color (Css.hex "#81e6d9")
        ]


placeholder_teal_400 : Css.Style
placeholder_teal_400 =
    Css.batch
        [ Css.color (Css.hex "#4fd1c5")
        ]


placeholder_teal_500 : Css.Style
placeholder_teal_500 =
    Css.batch
        [ Css.color (Css.hex "#38b2ac")
        ]


placeholder_teal_600 : Css.Style
placeholder_teal_600 =
    Css.batch
        [ Css.color (Css.hex "#319795")
        ]


placeholder_teal_700 : Css.Style
placeholder_teal_700 =
    Css.batch
        [ Css.color (Css.hex "#2c7a7b")
        ]


placeholder_teal_800 : Css.Style
placeholder_teal_800 =
    Css.batch
        [ Css.color (Css.hex "#285e61")
        ]


placeholder_teal_900 : Css.Style
placeholder_teal_900 =
    Css.batch
        [ Css.color (Css.hex "#234e52")
        ]


placeholder_blue_100 : Css.Style
placeholder_blue_100 =
    Css.batch
        [ Css.color (Css.hex "#ebf8ff")
        ]


placeholder_blue_200 : Css.Style
placeholder_blue_200 =
    Css.batch
        [ Css.color (Css.hex "#bee3f8")
        ]


placeholder_blue_300 : Css.Style
placeholder_blue_300 =
    Css.batch
        [ Css.color (Css.hex "#90cdf4")
        ]


placeholder_blue_400 : Css.Style
placeholder_blue_400 =
    Css.batch
        [ Css.color (Css.hex "#63b3ed")
        ]


placeholder_blue_500 : Css.Style
placeholder_blue_500 =
    Css.batch
        [ Css.color (Css.hex "#4299e1")
        ]


placeholder_blue_600 : Css.Style
placeholder_blue_600 =
    Css.batch
        [ Css.color (Css.hex "#3182ce")
        ]


placeholder_blue_700 : Css.Style
placeholder_blue_700 =
    Css.batch
        [ Css.color (Css.hex "#2b6cb0")
        ]


placeholder_blue_800 : Css.Style
placeholder_blue_800 =
    Css.batch
        [ Css.color (Css.hex "#2c5282")
        ]


placeholder_blue_900 : Css.Style
placeholder_blue_900 =
    Css.batch
        [ Css.color (Css.hex "#2a4365")
        ]


placeholder_indigo_100 : Css.Style
placeholder_indigo_100 =
    Css.batch
        [ Css.color (Css.hex "#ebf4ff")
        ]


placeholder_indigo_200 : Css.Style
placeholder_indigo_200 =
    Css.batch
        [ Css.color (Css.hex "#c3dafe")
        ]


placeholder_indigo_300 : Css.Style
placeholder_indigo_300 =
    Css.batch
        [ Css.color (Css.hex "#a3bffa")
        ]


placeholder_indigo_400 : Css.Style
placeholder_indigo_400 =
    Css.batch
        [ Css.color (Css.hex "#7f9cf5")
        ]


placeholder_indigo_500 : Css.Style
placeholder_indigo_500 =
    Css.batch
        [ Css.color (Css.hex "#667eea")
        ]


placeholder_indigo_600 : Css.Style
placeholder_indigo_600 =
    Css.batch
        [ Css.color (Css.hex "#5a67d8")
        ]


placeholder_indigo_700 : Css.Style
placeholder_indigo_700 =
    Css.batch
        [ Css.color (Css.hex "#4c51bf")
        ]


placeholder_indigo_800 : Css.Style
placeholder_indigo_800 =
    Css.batch
        [ Css.color (Css.hex "#434190")
        ]


placeholder_indigo_900 : Css.Style
placeholder_indigo_900 =
    Css.batch
        [ Css.color (Css.hex "#3c366b")
        ]


placeholder_purple_100 : Css.Style
placeholder_purple_100 =
    Css.batch
        [ Css.color (Css.hex "#faf5ff")
        ]


placeholder_purple_200 : Css.Style
placeholder_purple_200 =
    Css.batch
        [ Css.color (Css.hex "#e9d8fd")
        ]


placeholder_purple_300 : Css.Style
placeholder_purple_300 =
    Css.batch
        [ Css.color (Css.hex "#d6bcfa")
        ]


placeholder_purple_400 : Css.Style
placeholder_purple_400 =
    Css.batch
        [ Css.color (Css.hex "#b794f4")
        ]


placeholder_purple_500 : Css.Style
placeholder_purple_500 =
    Css.batch
        [ Css.color (Css.hex "#9f7aea")
        ]


placeholder_purple_600 : Css.Style
placeholder_purple_600 =
    Css.batch
        [ Css.color (Css.hex "#805ad5")
        ]


placeholder_purple_700 : Css.Style
placeholder_purple_700 =
    Css.batch
        [ Css.color (Css.hex "#6b46c1")
        ]


placeholder_purple_800 : Css.Style
placeholder_purple_800 =
    Css.batch
        [ Css.color (Css.hex "#553c9a")
        ]


placeholder_purple_900 : Css.Style
placeholder_purple_900 =
    Css.batch
        [ Css.color (Css.hex "#44337a")
        ]


placeholder_pink_100 : Css.Style
placeholder_pink_100 =
    Css.batch
        [ Css.color (Css.hex "#fff5f7")
        ]


placeholder_pink_200 : Css.Style
placeholder_pink_200 =
    Css.batch
        [ Css.color (Css.hex "#fed7e2")
        ]


placeholder_pink_300 : Css.Style
placeholder_pink_300 =
    Css.batch
        [ Css.color (Css.hex "#fbb6ce")
        ]


placeholder_pink_400 : Css.Style
placeholder_pink_400 =
    Css.batch
        [ Css.color (Css.hex "#f687b3")
        ]


placeholder_pink_500 : Css.Style
placeholder_pink_500 =
    Css.batch
        [ Css.color (Css.hex "#ed64a6")
        ]


placeholder_pink_600 : Css.Style
placeholder_pink_600 =
    Css.batch
        [ Css.color (Css.hex "#d53f8c")
        ]


placeholder_pink_700 : Css.Style
placeholder_pink_700 =
    Css.batch
        [ Css.color (Css.hex "#b83280")
        ]


placeholder_pink_800 : Css.Style
placeholder_pink_800 =
    Css.batch
        [ Css.color (Css.hex "#97266d")
        ]


placeholder_pink_900 : Css.Style
placeholder_pink_900 =
    Css.batch
        [ Css.color (Css.hex "#702459")
        ]


focus__placeholder_transparent : Css.Style
focus__placeholder_transparent =
    Css.batch
        [ Css.focus
            [ Css.color Css.transparent
            ]
        ]


focus__placeholder_current : Css.Style
focus__placeholder_current =
    Css.batch
        [ Css.focus
            [ Css.color Css.currentColor
            ]
        ]


focus__placeholder_black : Css.Style
focus__placeholder_black =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#000")
            ]
        ]


focus__placeholder_white : Css.Style
focus__placeholder_white =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fff")
            ]
        ]


focus__placeholder_gray_100 : Css.Style
focus__placeholder_gray_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f7fafc")
            ]
        ]


focus__placeholder_gray_200 : Css.Style
focus__placeholder_gray_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#edf2f7")
            ]
        ]


focus__placeholder_gray_300 : Css.Style
focus__placeholder_gray_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e2e8f0")
            ]
        ]


focus__placeholder_gray_400 : Css.Style
focus__placeholder_gray_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#cbd5e0")
            ]
        ]


focus__placeholder_gray_500 : Css.Style
focus__placeholder_gray_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#a0aec0")
            ]
        ]


focus__placeholder_gray_600 : Css.Style
focus__placeholder_gray_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#718096")
            ]
        ]


focus__placeholder_gray_700 : Css.Style
focus__placeholder_gray_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4a5568")
            ]
        ]


focus__placeholder_gray_800 : Css.Style
focus__placeholder_gray_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2d3748")
            ]
        ]


focus__placeholder_gray_900 : Css.Style
focus__placeholder_gray_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#1a202c")
            ]
        ]


focus__placeholder_red_100 : Css.Style
focus__placeholder_red_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fff5f5")
            ]
        ]


focus__placeholder_red_200 : Css.Style
focus__placeholder_red_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fed7d7")
            ]
        ]


focus__placeholder_red_300 : Css.Style
focus__placeholder_red_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#feb2b2")
            ]
        ]


focus__placeholder_red_400 : Css.Style
focus__placeholder_red_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fc8181")
            ]
        ]


focus__placeholder_red_500 : Css.Style
focus__placeholder_red_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f56565")
            ]
        ]


focus__placeholder_red_600 : Css.Style
focus__placeholder_red_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e53e3e")
            ]
        ]


focus__placeholder_red_700 : Css.Style
focus__placeholder_red_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c53030")
            ]
        ]


focus__placeholder_red_800 : Css.Style
focus__placeholder_red_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9b2c2c")
            ]
        ]


focus__placeholder_red_900 : Css.Style
focus__placeholder_red_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#742a2a")
            ]
        ]


focus__placeholder_orange_100 : Css.Style
focus__placeholder_orange_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fffaf0")
            ]
        ]


focus__placeholder_orange_200 : Css.Style
focus__placeholder_orange_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#feebc8")
            ]
        ]


focus__placeholder_orange_300 : Css.Style
focus__placeholder_orange_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fbd38d")
            ]
        ]


focus__placeholder_orange_400 : Css.Style
focus__placeholder_orange_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f6ad55")
            ]
        ]


focus__placeholder_orange_500 : Css.Style
focus__placeholder_orange_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ed8936")
            ]
        ]


focus__placeholder_orange_600 : Css.Style
focus__placeholder_orange_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#dd6b20")
            ]
        ]


focus__placeholder_orange_700 : Css.Style
focus__placeholder_orange_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c05621")
            ]
        ]


focus__placeholder_orange_800 : Css.Style
focus__placeholder_orange_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9c4221")
            ]
        ]


focus__placeholder_orange_900 : Css.Style
focus__placeholder_orange_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#7b341e")
            ]
        ]


focus__placeholder_yellow_100 : Css.Style
focus__placeholder_yellow_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fffff0")
            ]
        ]


focus__placeholder_yellow_200 : Css.Style
focus__placeholder_yellow_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fefcbf")
            ]
        ]


focus__placeholder_yellow_300 : Css.Style
focus__placeholder_yellow_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#faf089")
            ]
        ]


focus__placeholder_yellow_400 : Css.Style
focus__placeholder_yellow_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f6e05e")
            ]
        ]


focus__placeholder_yellow_500 : Css.Style
focus__placeholder_yellow_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ecc94b")
            ]
        ]


focus__placeholder_yellow_600 : Css.Style
focus__placeholder_yellow_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#d69e2e")
            ]
        ]


focus__placeholder_yellow_700 : Css.Style
focus__placeholder_yellow_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b7791f")
            ]
        ]


focus__placeholder_yellow_800 : Css.Style
focus__placeholder_yellow_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#975a16")
            ]
        ]


focus__placeholder_yellow_900 : Css.Style
focus__placeholder_yellow_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#744210")
            ]
        ]


focus__placeholder_green_100 : Css.Style
focus__placeholder_green_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f0fff4")
            ]
        ]


focus__placeholder_green_200 : Css.Style
focus__placeholder_green_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c6f6d5")
            ]
        ]


focus__placeholder_green_300 : Css.Style
focus__placeholder_green_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9ae6b4")
            ]
        ]


focus__placeholder_green_400 : Css.Style
focus__placeholder_green_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#68d391")
            ]
        ]


focus__placeholder_green_500 : Css.Style
focus__placeholder_green_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#48bb78")
            ]
        ]


focus__placeholder_green_600 : Css.Style
focus__placeholder_green_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#38a169")
            ]
        ]


focus__placeholder_green_700 : Css.Style
focus__placeholder_green_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2f855a")
            ]
        ]


focus__placeholder_green_800 : Css.Style
focus__placeholder_green_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#276749")
            ]
        ]


focus__placeholder_green_900 : Css.Style
focus__placeholder_green_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#22543d")
            ]
        ]


focus__placeholder_teal_100 : Css.Style
focus__placeholder_teal_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e6fffa")
            ]
        ]


focus__placeholder_teal_200 : Css.Style
focus__placeholder_teal_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b2f5ea")
            ]
        ]


focus__placeholder_teal_300 : Css.Style
focus__placeholder_teal_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#81e6d9")
            ]
        ]


focus__placeholder_teal_400 : Css.Style
focus__placeholder_teal_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4fd1c5")
            ]
        ]


focus__placeholder_teal_500 : Css.Style
focus__placeholder_teal_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#38b2ac")
            ]
        ]


focus__placeholder_teal_600 : Css.Style
focus__placeholder_teal_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#319795")
            ]
        ]


focus__placeholder_teal_700 : Css.Style
focus__placeholder_teal_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2c7a7b")
            ]
        ]


focus__placeholder_teal_800 : Css.Style
focus__placeholder_teal_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#285e61")
            ]
        ]


focus__placeholder_teal_900 : Css.Style
focus__placeholder_teal_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#234e52")
            ]
        ]


focus__placeholder_blue_100 : Css.Style
focus__placeholder_blue_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ebf8ff")
            ]
        ]


focus__placeholder_blue_200 : Css.Style
focus__placeholder_blue_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#bee3f8")
            ]
        ]


focus__placeholder_blue_300 : Css.Style
focus__placeholder_blue_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#90cdf4")
            ]
        ]


focus__placeholder_blue_400 : Css.Style
focus__placeholder_blue_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#63b3ed")
            ]
        ]


focus__placeholder_blue_500 : Css.Style
focus__placeholder_blue_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4299e1")
            ]
        ]


focus__placeholder_blue_600 : Css.Style
focus__placeholder_blue_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#3182ce")
            ]
        ]


focus__placeholder_blue_700 : Css.Style
focus__placeholder_blue_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2b6cb0")
            ]
        ]


focus__placeholder_blue_800 : Css.Style
focus__placeholder_blue_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2c5282")
            ]
        ]


focus__placeholder_blue_900 : Css.Style
focus__placeholder_blue_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2a4365")
            ]
        ]


focus__placeholder_indigo_100 : Css.Style
focus__placeholder_indigo_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ebf4ff")
            ]
        ]


focus__placeholder_indigo_200 : Css.Style
focus__placeholder_indigo_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c3dafe")
            ]
        ]


focus__placeholder_indigo_300 : Css.Style
focus__placeholder_indigo_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#a3bffa")
            ]
        ]


focus__placeholder_indigo_400 : Css.Style
focus__placeholder_indigo_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#7f9cf5")
            ]
        ]


focus__placeholder_indigo_500 : Css.Style
focus__placeholder_indigo_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#667eea")
            ]
        ]


focus__placeholder_indigo_600 : Css.Style
focus__placeholder_indigo_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#5a67d8")
            ]
        ]


focus__placeholder_indigo_700 : Css.Style
focus__placeholder_indigo_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4c51bf")
            ]
        ]


focus__placeholder_indigo_800 : Css.Style
focus__placeholder_indigo_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#434190")
            ]
        ]


focus__placeholder_indigo_900 : Css.Style
focus__placeholder_indigo_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#3c366b")
            ]
        ]


focus__placeholder_purple_100 : Css.Style
focus__placeholder_purple_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#faf5ff")
            ]
        ]


focus__placeholder_purple_200 : Css.Style
focus__placeholder_purple_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e9d8fd")
            ]
        ]


focus__placeholder_purple_300 : Css.Style
focus__placeholder_purple_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#d6bcfa")
            ]
        ]


focus__placeholder_purple_400 : Css.Style
focus__placeholder_purple_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b794f4")
            ]
        ]


focus__placeholder_purple_500 : Css.Style
focus__placeholder_purple_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9f7aea")
            ]
        ]


focus__placeholder_purple_600 : Css.Style
focus__placeholder_purple_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#805ad5")
            ]
        ]


focus__placeholder_purple_700 : Css.Style
focus__placeholder_purple_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#6b46c1")
            ]
        ]


focus__placeholder_purple_800 : Css.Style
focus__placeholder_purple_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#553c9a")
            ]
        ]


focus__placeholder_purple_900 : Css.Style
focus__placeholder_purple_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#44337a")
            ]
        ]


focus__placeholder_pink_100 : Css.Style
focus__placeholder_pink_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fff5f7")
            ]
        ]


focus__placeholder_pink_200 : Css.Style
focus__placeholder_pink_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fed7e2")
            ]
        ]


focus__placeholder_pink_300 : Css.Style
focus__placeholder_pink_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fbb6ce")
            ]
        ]


focus__placeholder_pink_400 : Css.Style
focus__placeholder_pink_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f687b3")
            ]
        ]


focus__placeholder_pink_500 : Css.Style
focus__placeholder_pink_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ed64a6")
            ]
        ]


focus__placeholder_pink_600 : Css.Style
focus__placeholder_pink_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#d53f8c")
            ]
        ]


focus__placeholder_pink_700 : Css.Style
focus__placeholder_pink_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b83280")
            ]
        ]


focus__placeholder_pink_800 : Css.Style
focus__placeholder_pink_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#97266d")
            ]
        ]


focus__placeholder_pink_900 : Css.Style
focus__placeholder_pink_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#702459")
            ]
        ]


pointer_events_none : Css.Style
pointer_events_none =
    Css.batch
        [ Css.pointerEvents Css.none
        ]


pointer_events_auto : Css.Style
pointer_events_auto =
    Css.batch
        [ Css.pointerEvents Css.auto
        ]


static : Css.Style
static =
    Css.batch
        [ Css.position Css.static
        ]


fixed : Css.Style
fixed =
    Css.batch
        [ Css.position Css.fixed
        ]


absolute : Css.Style
absolute =
    Css.batch
        [ Css.position Css.absolute
        ]


relative : Css.Style
relative =
    Css.batch
        [ Css.position Css.relative
        ]


sticky : Css.Style
sticky =
    Css.batch
        [ Css.position Css.sticky
        ]


inset_0 : Css.Style
inset_0 =
    Css.batch
        [ Css.top (Css.px 0)
        , Css.right (Css.px 0)
        , Css.bottom (Css.px 0)
        , Css.left (Css.px 0)
        ]


inset_auto : Css.Style
inset_auto =
    Css.batch
        [ Css.top Css.auto
        , Css.right Css.auto
        , Css.bottom Css.auto
        , Css.left Css.auto
        ]


inset_y_0 : Css.Style
inset_y_0 =
    Css.batch
        [ Css.top (Css.px 0)
        , Css.bottom (Css.px 0)
        ]


inset_x_0 : Css.Style
inset_x_0 =
    Css.batch
        [ Css.right (Css.px 0)
        , Css.left (Css.px 0)
        ]


inset_y_auto : Css.Style
inset_y_auto =
    Css.batch
        [ Css.top Css.auto
        , Css.bottom Css.auto
        ]


inset_x_auto : Css.Style
inset_x_auto =
    Css.batch
        [ Css.right Css.auto
        , Css.left Css.auto
        ]


top_0 : Css.Style
top_0 =
    Css.batch
        [ Css.top (Css.px 0)
        ]


right_0 : Css.Style
right_0 =
    Css.batch
        [ Css.right (Css.px 0)
        ]


bottom_0 : Css.Style
bottom_0 =
    Css.batch
        [ Css.bottom (Css.px 0)
        ]


left_0 : Css.Style
left_0 =
    Css.batch
        [ Css.left (Css.px 0)
        ]


top_auto : Css.Style
top_auto =
    Css.batch
        [ Css.top Css.auto
        ]


right_auto : Css.Style
right_auto =
    Css.batch
        [ Css.right Css.auto
        ]


bottom_auto : Css.Style
bottom_auto =
    Css.batch
        [ Css.bottom Css.auto
        ]


left_auto : Css.Style
left_auto =
    Css.batch
        [ Css.left Css.auto
        ]


resize_none : Css.Style
resize_none =
    Css.batch
        [ Css.resize Css.none
        ]


resize_y : Css.Style
resize_y =
    Css.batch
        [ Css.resize Css.vertical
        ]


resize_x : Css.Style
resize_x =
    Css.batch
        [ Css.resize Css.horizontal
        ]


resize : Css.Style
resize =
    Css.batch
        [ Css.resize Css.both
        ]


shadow_xs : Css.Style
shadow_xs =
    Css.batch
        [ Css.property "box-shadow" "0 0 0 1px rgba(0, 0, 0, 0.05)"
        ]


shadow_sm : Css.Style
shadow_sm =
    Css.batch
        [ Css.property "box-shadow" "0 1px 2px 0 rgba(0, 0, 0, 0.05)"
        ]


shadow : Css.Style
shadow =
    Css.batch
        [ Css.property "box-shadow" "0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)"
        ]


shadow_md : Css.Style
shadow_md =
    Css.batch
        [ Css.property "box-shadow" "0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
        ]


shadow_lg : Css.Style
shadow_lg =
    Css.batch
        [ Css.property "box-shadow" "0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)"
        ]


shadow_xl : Css.Style
shadow_xl =
    Css.batch
        [ Css.property "box-shadow" "0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04)"
        ]


shadow_2xl : Css.Style
shadow_2xl =
    Css.batch
        [ Css.property "box-shadow" "0 25px 50px -12px rgba(0, 0, 0, 0.25)"
        ]


shadow_inner : Css.Style
shadow_inner =
    Css.batch
        [ Css.property "box-shadow" "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)"
        ]


shadow_outline : Css.Style
shadow_outline =
    Css.batch
        [ Css.property "box-shadow" "0 0 0 3px rgba(66, 153, 225, 0.5)"
        ]


shadow_none : Css.Style
shadow_none =
    Css.batch
        [ Css.property "box-shadow" "none"
        ]


hover__shadow_xs : Css.Style
hover__shadow_xs =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 0 0 1px rgba(0, 0, 0, 0.05)"
            ]
        ]


hover__shadow_sm : Css.Style
hover__shadow_sm =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 1px 2px 0 rgba(0, 0, 0, 0.05)"
            ]
        ]


hover__shadow : Css.Style
hover__shadow =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)"
            ]
        ]


hover__shadow_md : Css.Style
hover__shadow_md =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
            ]
        ]


hover__shadow_lg : Css.Style
hover__shadow_lg =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)"
            ]
        ]


hover__shadow_xl : Css.Style
hover__shadow_xl =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04)"
            ]
        ]


hover__shadow_2xl : Css.Style
hover__shadow_2xl =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 25px 50px -12px rgba(0, 0, 0, 0.25)"
            ]
        ]


hover__shadow_inner : Css.Style
hover__shadow_inner =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)"
            ]
        ]


hover__shadow_outline : Css.Style
hover__shadow_outline =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "0 0 0 3px rgba(66, 153, 225, 0.5)"
            ]
        ]


hover__shadow_none : Css.Style
hover__shadow_none =
    Css.batch
        [ Css.hover
            [ Css.property "box-shadow" "none"
            ]
        ]


focus__shadow_xs : Css.Style
focus__shadow_xs =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 0 0 1px rgba(0, 0, 0, 0.05)"
            ]
        ]


focus__shadow_sm : Css.Style
focus__shadow_sm =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 1px 2px 0 rgba(0, 0, 0, 0.05)"
            ]
        ]


focus__shadow : Css.Style
focus__shadow =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 1px 3px 0 rgba(0, 0, 0, 0.1), 0 1px 2px 0 rgba(0, 0, 0, 0.06)"
            ]
        ]


focus__shadow_md : Css.Style
focus__shadow_md =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)"
            ]
        ]


focus__shadow_lg : Css.Style
focus__shadow_lg =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)"
            ]
        ]


focus__shadow_xl : Css.Style
focus__shadow_xl =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04)"
            ]
        ]


focus__shadow_2xl : Css.Style
focus__shadow_2xl =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 25px 50px -12px rgba(0, 0, 0, 0.25)"
            ]
        ]


focus__shadow_inner : Css.Style
focus__shadow_inner =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "inset 0 2px 4px 0 rgba(0, 0, 0, 0.06)"
            ]
        ]


focus__shadow_outline : Css.Style
focus__shadow_outline =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "0 0 0 3px rgba(66, 153, 225, 0.5)"
            ]
        ]


focus__shadow_none : Css.Style
focus__shadow_none =
    Css.batch
        [ Css.focus
            [ Css.property "box-shadow" "none"
            ]
        ]


fill_current : Css.Style
fill_current =
    Css.batch
        [ Css.fill Css.currentColor
        ]


stroke_current : Css.Style
stroke_current =
    Css.batch
        [ Css.property "stroke" "currentColor"
        ]


stroke_0 : Css.Style
stroke_0 =
    Css.batch
        [ Css.property "stroke-width" "0"
        ]


stroke_1 : Css.Style
stroke_1 =
    Css.batch
        [ Css.property "stroke-width" "1"
        ]


stroke_2 : Css.Style
stroke_2 =
    Css.batch
        [ Css.property "stroke-width" "2"
        ]


table_auto : Css.Style
table_auto =
    Css.batch
        [ Css.tableLayout Css.auto
        ]


table_fixed : Css.Style
table_fixed =
    Css.batch
        [ Css.tableLayout Css.fixed
        ]


text_left : Css.Style
text_left =
    Css.batch
        [ Css.textAlign Css.left
        ]


text_center : Css.Style
text_center =
    Css.batch
        [ Css.textAlign Css.center
        ]


text_right : Css.Style
text_right =
    Css.batch
        [ Css.textAlign Css.right
        ]


text_justify : Css.Style
text_justify =
    Css.batch
        [ Css.textAlign Css.justify
        ]


text_transparent : Css.Style
text_transparent =
    Css.batch
        [ Css.color Css.transparent
        ]


text_current : Css.Style
text_current =
    Css.batch
        [ Css.color Css.currentColor
        ]


text_black : Css.Style
text_black =
    Css.batch
        [ Css.color (Css.hex "#000")
        ]


text_white : Css.Style
text_white =
    Css.batch
        [ Css.color (Css.hex "#fff")
        ]


text_gray_100 : Css.Style
text_gray_100 =
    Css.batch
        [ Css.color (Css.hex "#f7fafc")
        ]


text_gray_200 : Css.Style
text_gray_200 =
    Css.batch
        [ Css.color (Css.hex "#edf2f7")
        ]


text_gray_300 : Css.Style
text_gray_300 =
    Css.batch
        [ Css.color (Css.hex "#e2e8f0")
        ]


text_gray_400 : Css.Style
text_gray_400 =
    Css.batch
        [ Css.color (Css.hex "#cbd5e0")
        ]


text_gray_500 : Css.Style
text_gray_500 =
    Css.batch
        [ Css.color (Css.hex "#a0aec0")
        ]


text_gray_600 : Css.Style
text_gray_600 =
    Css.batch
        [ Css.color (Css.hex "#718096")
        ]


text_gray_700 : Css.Style
text_gray_700 =
    Css.batch
        [ Css.color (Css.hex "#4a5568")
        ]


text_gray_800 : Css.Style
text_gray_800 =
    Css.batch
        [ Css.color (Css.hex "#2d3748")
        ]


text_gray_900 : Css.Style
text_gray_900 =
    Css.batch
        [ Css.color (Css.hex "#1a202c")
        ]


text_red_100 : Css.Style
text_red_100 =
    Css.batch
        [ Css.color (Css.hex "#fff5f5")
        ]


text_red_200 : Css.Style
text_red_200 =
    Css.batch
        [ Css.color (Css.hex "#fed7d7")
        ]


text_red_300 : Css.Style
text_red_300 =
    Css.batch
        [ Css.color (Css.hex "#feb2b2")
        ]


text_red_400 : Css.Style
text_red_400 =
    Css.batch
        [ Css.color (Css.hex "#fc8181")
        ]


text_red_500 : Css.Style
text_red_500 =
    Css.batch
        [ Css.color (Css.hex "#f56565")
        ]


text_red_600 : Css.Style
text_red_600 =
    Css.batch
        [ Css.color (Css.hex "#e53e3e")
        ]


text_red_700 : Css.Style
text_red_700 =
    Css.batch
        [ Css.color (Css.hex "#c53030")
        ]


text_red_800 : Css.Style
text_red_800 =
    Css.batch
        [ Css.color (Css.hex "#9b2c2c")
        ]


text_red_900 : Css.Style
text_red_900 =
    Css.batch
        [ Css.color (Css.hex "#742a2a")
        ]


text_orange_100 : Css.Style
text_orange_100 =
    Css.batch
        [ Css.color (Css.hex "#fffaf0")
        ]


text_orange_200 : Css.Style
text_orange_200 =
    Css.batch
        [ Css.color (Css.hex "#feebc8")
        ]


text_orange_300 : Css.Style
text_orange_300 =
    Css.batch
        [ Css.color (Css.hex "#fbd38d")
        ]


text_orange_400 : Css.Style
text_orange_400 =
    Css.batch
        [ Css.color (Css.hex "#f6ad55")
        ]


text_orange_500 : Css.Style
text_orange_500 =
    Css.batch
        [ Css.color (Css.hex "#ed8936")
        ]


text_orange_600 : Css.Style
text_orange_600 =
    Css.batch
        [ Css.color (Css.hex "#dd6b20")
        ]


text_orange_700 : Css.Style
text_orange_700 =
    Css.batch
        [ Css.color (Css.hex "#c05621")
        ]


text_orange_800 : Css.Style
text_orange_800 =
    Css.batch
        [ Css.color (Css.hex "#9c4221")
        ]


text_orange_900 : Css.Style
text_orange_900 =
    Css.batch
        [ Css.color (Css.hex "#7b341e")
        ]


text_yellow_100 : Css.Style
text_yellow_100 =
    Css.batch
        [ Css.color (Css.hex "#fffff0")
        ]


text_yellow_200 : Css.Style
text_yellow_200 =
    Css.batch
        [ Css.color (Css.hex "#fefcbf")
        ]


text_yellow_300 : Css.Style
text_yellow_300 =
    Css.batch
        [ Css.color (Css.hex "#faf089")
        ]


text_yellow_400 : Css.Style
text_yellow_400 =
    Css.batch
        [ Css.color (Css.hex "#f6e05e")
        ]


text_yellow_500 : Css.Style
text_yellow_500 =
    Css.batch
        [ Css.color (Css.hex "#ecc94b")
        ]


text_yellow_600 : Css.Style
text_yellow_600 =
    Css.batch
        [ Css.color (Css.hex "#d69e2e")
        ]


text_yellow_700 : Css.Style
text_yellow_700 =
    Css.batch
        [ Css.color (Css.hex "#b7791f")
        ]


text_yellow_800 : Css.Style
text_yellow_800 =
    Css.batch
        [ Css.color (Css.hex "#975a16")
        ]


text_yellow_900 : Css.Style
text_yellow_900 =
    Css.batch
        [ Css.color (Css.hex "#744210")
        ]


text_green_100 : Css.Style
text_green_100 =
    Css.batch
        [ Css.color (Css.hex "#f0fff4")
        ]


text_green_200 : Css.Style
text_green_200 =
    Css.batch
        [ Css.color (Css.hex "#c6f6d5")
        ]


text_green_300 : Css.Style
text_green_300 =
    Css.batch
        [ Css.color (Css.hex "#9ae6b4")
        ]


text_green_400 : Css.Style
text_green_400 =
    Css.batch
        [ Css.color (Css.hex "#68d391")
        ]


text_green_500 : Css.Style
text_green_500 =
    Css.batch
        [ Css.color (Css.hex "#48bb78")
        ]


text_green_600 : Css.Style
text_green_600 =
    Css.batch
        [ Css.color (Css.hex "#38a169")
        ]


text_green_700 : Css.Style
text_green_700 =
    Css.batch
        [ Css.color (Css.hex "#2f855a")
        ]


text_green_800 : Css.Style
text_green_800 =
    Css.batch
        [ Css.color (Css.hex "#276749")
        ]


text_green_900 : Css.Style
text_green_900 =
    Css.batch
        [ Css.color (Css.hex "#22543d")
        ]


text_teal_100 : Css.Style
text_teal_100 =
    Css.batch
        [ Css.color (Css.hex "#e6fffa")
        ]


text_teal_200 : Css.Style
text_teal_200 =
    Css.batch
        [ Css.color (Css.hex "#b2f5ea")
        ]


text_teal_300 : Css.Style
text_teal_300 =
    Css.batch
        [ Css.color (Css.hex "#81e6d9")
        ]


text_teal_400 : Css.Style
text_teal_400 =
    Css.batch
        [ Css.color (Css.hex "#4fd1c5")
        ]


text_teal_500 : Css.Style
text_teal_500 =
    Css.batch
        [ Css.color (Css.hex "#38b2ac")
        ]


text_teal_600 : Css.Style
text_teal_600 =
    Css.batch
        [ Css.color (Css.hex "#319795")
        ]


text_teal_700 : Css.Style
text_teal_700 =
    Css.batch
        [ Css.color (Css.hex "#2c7a7b")
        ]


text_teal_800 : Css.Style
text_teal_800 =
    Css.batch
        [ Css.color (Css.hex "#285e61")
        ]


text_teal_900 : Css.Style
text_teal_900 =
    Css.batch
        [ Css.color (Css.hex "#234e52")
        ]


text_blue_100 : Css.Style
text_blue_100 =
    Css.batch
        [ Css.color (Css.hex "#ebf8ff")
        ]


text_blue_200 : Css.Style
text_blue_200 =
    Css.batch
        [ Css.color (Css.hex "#bee3f8")
        ]


text_blue_300 : Css.Style
text_blue_300 =
    Css.batch
        [ Css.color (Css.hex "#90cdf4")
        ]


text_blue_400 : Css.Style
text_blue_400 =
    Css.batch
        [ Css.color (Css.hex "#63b3ed")
        ]


text_blue_500 : Css.Style
text_blue_500 =
    Css.batch
        [ Css.color (Css.hex "#4299e1")
        ]


text_blue_600 : Css.Style
text_blue_600 =
    Css.batch
        [ Css.color (Css.hex "#3182ce")
        ]


text_blue_700 : Css.Style
text_blue_700 =
    Css.batch
        [ Css.color (Css.hex "#2b6cb0")
        ]


text_blue_800 : Css.Style
text_blue_800 =
    Css.batch
        [ Css.color (Css.hex "#2c5282")
        ]


text_blue_900 : Css.Style
text_blue_900 =
    Css.batch
        [ Css.color (Css.hex "#2a4365")
        ]


text_indigo_100 : Css.Style
text_indigo_100 =
    Css.batch
        [ Css.color (Css.hex "#ebf4ff")
        ]


text_indigo_200 : Css.Style
text_indigo_200 =
    Css.batch
        [ Css.color (Css.hex "#c3dafe")
        ]


text_indigo_300 : Css.Style
text_indigo_300 =
    Css.batch
        [ Css.color (Css.hex "#a3bffa")
        ]


text_indigo_400 : Css.Style
text_indigo_400 =
    Css.batch
        [ Css.color (Css.hex "#7f9cf5")
        ]


text_indigo_500 : Css.Style
text_indigo_500 =
    Css.batch
        [ Css.color (Css.hex "#667eea")
        ]


text_indigo_600 : Css.Style
text_indigo_600 =
    Css.batch
        [ Css.color (Css.hex "#5a67d8")
        ]


text_indigo_700 : Css.Style
text_indigo_700 =
    Css.batch
        [ Css.color (Css.hex "#4c51bf")
        ]


text_indigo_800 : Css.Style
text_indigo_800 =
    Css.batch
        [ Css.color (Css.hex "#434190")
        ]


text_indigo_900 : Css.Style
text_indigo_900 =
    Css.batch
        [ Css.color (Css.hex "#3c366b")
        ]


text_purple_100 : Css.Style
text_purple_100 =
    Css.batch
        [ Css.color (Css.hex "#faf5ff")
        ]


text_purple_200 : Css.Style
text_purple_200 =
    Css.batch
        [ Css.color (Css.hex "#e9d8fd")
        ]


text_purple_300 : Css.Style
text_purple_300 =
    Css.batch
        [ Css.color (Css.hex "#d6bcfa")
        ]


text_purple_400 : Css.Style
text_purple_400 =
    Css.batch
        [ Css.color (Css.hex "#b794f4")
        ]


text_purple_500 : Css.Style
text_purple_500 =
    Css.batch
        [ Css.color (Css.hex "#9f7aea")
        ]


text_purple_600 : Css.Style
text_purple_600 =
    Css.batch
        [ Css.color (Css.hex "#805ad5")
        ]


text_purple_700 : Css.Style
text_purple_700 =
    Css.batch
        [ Css.color (Css.hex "#6b46c1")
        ]


text_purple_800 : Css.Style
text_purple_800 =
    Css.batch
        [ Css.color (Css.hex "#553c9a")
        ]


text_purple_900 : Css.Style
text_purple_900 =
    Css.batch
        [ Css.color (Css.hex "#44337a")
        ]


text_pink_100 : Css.Style
text_pink_100 =
    Css.batch
        [ Css.color (Css.hex "#fff5f7")
        ]


text_pink_200 : Css.Style
text_pink_200 =
    Css.batch
        [ Css.color (Css.hex "#fed7e2")
        ]


text_pink_300 : Css.Style
text_pink_300 =
    Css.batch
        [ Css.color (Css.hex "#fbb6ce")
        ]


text_pink_400 : Css.Style
text_pink_400 =
    Css.batch
        [ Css.color (Css.hex "#f687b3")
        ]


text_pink_500 : Css.Style
text_pink_500 =
    Css.batch
        [ Css.color (Css.hex "#ed64a6")
        ]


text_pink_600 : Css.Style
text_pink_600 =
    Css.batch
        [ Css.color (Css.hex "#d53f8c")
        ]


text_pink_700 : Css.Style
text_pink_700 =
    Css.batch
        [ Css.color (Css.hex "#b83280")
        ]


text_pink_800 : Css.Style
text_pink_800 =
    Css.batch
        [ Css.color (Css.hex "#97266d")
        ]


text_pink_900 : Css.Style
text_pink_900 =
    Css.batch
        [ Css.color (Css.hex "#702459")
        ]


hover__text_transparent : Css.Style
hover__text_transparent =
    Css.batch
        [ Css.hover
            [ Css.color Css.transparent
            ]
        ]


hover__text_current : Css.Style
hover__text_current =
    Css.batch
        [ Css.hover
            [ Css.color Css.currentColor
            ]
        ]


hover__text_black : Css.Style
hover__text_black =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#000")
            ]
        ]


hover__text_white : Css.Style
hover__text_white =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fff")
            ]
        ]


hover__text_gray_100 : Css.Style
hover__text_gray_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#f7fafc")
            ]
        ]


hover__text_gray_200 : Css.Style
hover__text_gray_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#edf2f7")
            ]
        ]


hover__text_gray_300 : Css.Style
hover__text_gray_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#e2e8f0")
            ]
        ]


hover__text_gray_400 : Css.Style
hover__text_gray_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#cbd5e0")
            ]
        ]


hover__text_gray_500 : Css.Style
hover__text_gray_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#a0aec0")
            ]
        ]


hover__text_gray_600 : Css.Style
hover__text_gray_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#718096")
            ]
        ]


hover__text_gray_700 : Css.Style
hover__text_gray_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#4a5568")
            ]
        ]


hover__text_gray_800 : Css.Style
hover__text_gray_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#2d3748")
            ]
        ]


hover__text_gray_900 : Css.Style
hover__text_gray_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#1a202c")
            ]
        ]


hover__text_red_100 : Css.Style
hover__text_red_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fff5f5")
            ]
        ]


hover__text_red_200 : Css.Style
hover__text_red_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fed7d7")
            ]
        ]


hover__text_red_300 : Css.Style
hover__text_red_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#feb2b2")
            ]
        ]


hover__text_red_400 : Css.Style
hover__text_red_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fc8181")
            ]
        ]


hover__text_red_500 : Css.Style
hover__text_red_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#f56565")
            ]
        ]


hover__text_red_600 : Css.Style
hover__text_red_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#e53e3e")
            ]
        ]


hover__text_red_700 : Css.Style
hover__text_red_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#c53030")
            ]
        ]


hover__text_red_800 : Css.Style
hover__text_red_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#9b2c2c")
            ]
        ]


hover__text_red_900 : Css.Style
hover__text_red_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#742a2a")
            ]
        ]


hover__text_orange_100 : Css.Style
hover__text_orange_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fffaf0")
            ]
        ]


hover__text_orange_200 : Css.Style
hover__text_orange_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#feebc8")
            ]
        ]


hover__text_orange_300 : Css.Style
hover__text_orange_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fbd38d")
            ]
        ]


hover__text_orange_400 : Css.Style
hover__text_orange_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#f6ad55")
            ]
        ]


hover__text_orange_500 : Css.Style
hover__text_orange_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#ed8936")
            ]
        ]


hover__text_orange_600 : Css.Style
hover__text_orange_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#dd6b20")
            ]
        ]


hover__text_orange_700 : Css.Style
hover__text_orange_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#c05621")
            ]
        ]


hover__text_orange_800 : Css.Style
hover__text_orange_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#9c4221")
            ]
        ]


hover__text_orange_900 : Css.Style
hover__text_orange_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#7b341e")
            ]
        ]


hover__text_yellow_100 : Css.Style
hover__text_yellow_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fffff0")
            ]
        ]


hover__text_yellow_200 : Css.Style
hover__text_yellow_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fefcbf")
            ]
        ]


hover__text_yellow_300 : Css.Style
hover__text_yellow_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#faf089")
            ]
        ]


hover__text_yellow_400 : Css.Style
hover__text_yellow_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#f6e05e")
            ]
        ]


hover__text_yellow_500 : Css.Style
hover__text_yellow_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#ecc94b")
            ]
        ]


hover__text_yellow_600 : Css.Style
hover__text_yellow_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#d69e2e")
            ]
        ]


hover__text_yellow_700 : Css.Style
hover__text_yellow_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#b7791f")
            ]
        ]


hover__text_yellow_800 : Css.Style
hover__text_yellow_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#975a16")
            ]
        ]


hover__text_yellow_900 : Css.Style
hover__text_yellow_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#744210")
            ]
        ]


hover__text_green_100 : Css.Style
hover__text_green_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#f0fff4")
            ]
        ]


hover__text_green_200 : Css.Style
hover__text_green_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#c6f6d5")
            ]
        ]


hover__text_green_300 : Css.Style
hover__text_green_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#9ae6b4")
            ]
        ]


hover__text_green_400 : Css.Style
hover__text_green_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#68d391")
            ]
        ]


hover__text_green_500 : Css.Style
hover__text_green_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#48bb78")
            ]
        ]


hover__text_green_600 : Css.Style
hover__text_green_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#38a169")
            ]
        ]


hover__text_green_700 : Css.Style
hover__text_green_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#2f855a")
            ]
        ]


hover__text_green_800 : Css.Style
hover__text_green_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#276749")
            ]
        ]


hover__text_green_900 : Css.Style
hover__text_green_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#22543d")
            ]
        ]


hover__text_teal_100 : Css.Style
hover__text_teal_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#e6fffa")
            ]
        ]


hover__text_teal_200 : Css.Style
hover__text_teal_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#b2f5ea")
            ]
        ]


hover__text_teal_300 : Css.Style
hover__text_teal_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#81e6d9")
            ]
        ]


hover__text_teal_400 : Css.Style
hover__text_teal_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#4fd1c5")
            ]
        ]


hover__text_teal_500 : Css.Style
hover__text_teal_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#38b2ac")
            ]
        ]


hover__text_teal_600 : Css.Style
hover__text_teal_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#319795")
            ]
        ]


hover__text_teal_700 : Css.Style
hover__text_teal_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#2c7a7b")
            ]
        ]


hover__text_teal_800 : Css.Style
hover__text_teal_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#285e61")
            ]
        ]


hover__text_teal_900 : Css.Style
hover__text_teal_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#234e52")
            ]
        ]


hover__text_blue_100 : Css.Style
hover__text_blue_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#ebf8ff")
            ]
        ]


hover__text_blue_200 : Css.Style
hover__text_blue_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#bee3f8")
            ]
        ]


hover__text_blue_300 : Css.Style
hover__text_blue_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#90cdf4")
            ]
        ]


hover__text_blue_400 : Css.Style
hover__text_blue_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#63b3ed")
            ]
        ]


hover__text_blue_500 : Css.Style
hover__text_blue_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#4299e1")
            ]
        ]


hover__text_blue_600 : Css.Style
hover__text_blue_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#3182ce")
            ]
        ]


hover__text_blue_700 : Css.Style
hover__text_blue_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#2b6cb0")
            ]
        ]


hover__text_blue_800 : Css.Style
hover__text_blue_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#2c5282")
            ]
        ]


hover__text_blue_900 : Css.Style
hover__text_blue_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#2a4365")
            ]
        ]


hover__text_indigo_100 : Css.Style
hover__text_indigo_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#ebf4ff")
            ]
        ]


hover__text_indigo_200 : Css.Style
hover__text_indigo_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#c3dafe")
            ]
        ]


hover__text_indigo_300 : Css.Style
hover__text_indigo_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#a3bffa")
            ]
        ]


hover__text_indigo_400 : Css.Style
hover__text_indigo_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#7f9cf5")
            ]
        ]


hover__text_indigo_500 : Css.Style
hover__text_indigo_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#667eea")
            ]
        ]


hover__text_indigo_600 : Css.Style
hover__text_indigo_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#5a67d8")
            ]
        ]


hover__text_indigo_700 : Css.Style
hover__text_indigo_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#4c51bf")
            ]
        ]


hover__text_indigo_800 : Css.Style
hover__text_indigo_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#434190")
            ]
        ]


hover__text_indigo_900 : Css.Style
hover__text_indigo_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#3c366b")
            ]
        ]


hover__text_purple_100 : Css.Style
hover__text_purple_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#faf5ff")
            ]
        ]


hover__text_purple_200 : Css.Style
hover__text_purple_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#e9d8fd")
            ]
        ]


hover__text_purple_300 : Css.Style
hover__text_purple_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#d6bcfa")
            ]
        ]


hover__text_purple_400 : Css.Style
hover__text_purple_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#b794f4")
            ]
        ]


hover__text_purple_500 : Css.Style
hover__text_purple_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#9f7aea")
            ]
        ]


hover__text_purple_600 : Css.Style
hover__text_purple_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#805ad5")
            ]
        ]


hover__text_purple_700 : Css.Style
hover__text_purple_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#6b46c1")
            ]
        ]


hover__text_purple_800 : Css.Style
hover__text_purple_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#553c9a")
            ]
        ]


hover__text_purple_900 : Css.Style
hover__text_purple_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#44337a")
            ]
        ]


hover__text_pink_100 : Css.Style
hover__text_pink_100 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fff5f7")
            ]
        ]


hover__text_pink_200 : Css.Style
hover__text_pink_200 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fed7e2")
            ]
        ]


hover__text_pink_300 : Css.Style
hover__text_pink_300 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#fbb6ce")
            ]
        ]


hover__text_pink_400 : Css.Style
hover__text_pink_400 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#f687b3")
            ]
        ]


hover__text_pink_500 : Css.Style
hover__text_pink_500 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#ed64a6")
            ]
        ]


hover__text_pink_600 : Css.Style
hover__text_pink_600 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#d53f8c")
            ]
        ]


hover__text_pink_700 : Css.Style
hover__text_pink_700 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#b83280")
            ]
        ]


hover__text_pink_800 : Css.Style
hover__text_pink_800 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#97266d")
            ]
        ]


hover__text_pink_900 : Css.Style
hover__text_pink_900 =
    Css.batch
        [ Css.hover
            [ Css.color (Css.hex "#702459")
            ]
        ]


focus__text_transparent : Css.Style
focus__text_transparent =
    Css.batch
        [ Css.focus
            [ Css.color Css.transparent
            ]
        ]


focus__text_current : Css.Style
focus__text_current =
    Css.batch
        [ Css.focus
            [ Css.color Css.currentColor
            ]
        ]


focus__text_black : Css.Style
focus__text_black =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#000")
            ]
        ]


focus__text_white : Css.Style
focus__text_white =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fff")
            ]
        ]


focus__text_gray_100 : Css.Style
focus__text_gray_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f7fafc")
            ]
        ]


focus__text_gray_200 : Css.Style
focus__text_gray_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#edf2f7")
            ]
        ]


focus__text_gray_300 : Css.Style
focus__text_gray_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e2e8f0")
            ]
        ]


focus__text_gray_400 : Css.Style
focus__text_gray_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#cbd5e0")
            ]
        ]


focus__text_gray_500 : Css.Style
focus__text_gray_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#a0aec0")
            ]
        ]


focus__text_gray_600 : Css.Style
focus__text_gray_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#718096")
            ]
        ]


focus__text_gray_700 : Css.Style
focus__text_gray_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4a5568")
            ]
        ]


focus__text_gray_800 : Css.Style
focus__text_gray_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2d3748")
            ]
        ]


focus__text_gray_900 : Css.Style
focus__text_gray_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#1a202c")
            ]
        ]


focus__text_red_100 : Css.Style
focus__text_red_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fff5f5")
            ]
        ]


focus__text_red_200 : Css.Style
focus__text_red_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fed7d7")
            ]
        ]


focus__text_red_300 : Css.Style
focus__text_red_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#feb2b2")
            ]
        ]


focus__text_red_400 : Css.Style
focus__text_red_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fc8181")
            ]
        ]


focus__text_red_500 : Css.Style
focus__text_red_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f56565")
            ]
        ]


focus__text_red_600 : Css.Style
focus__text_red_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e53e3e")
            ]
        ]


focus__text_red_700 : Css.Style
focus__text_red_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c53030")
            ]
        ]


focus__text_red_800 : Css.Style
focus__text_red_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9b2c2c")
            ]
        ]


focus__text_red_900 : Css.Style
focus__text_red_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#742a2a")
            ]
        ]


focus__text_orange_100 : Css.Style
focus__text_orange_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fffaf0")
            ]
        ]


focus__text_orange_200 : Css.Style
focus__text_orange_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#feebc8")
            ]
        ]


focus__text_orange_300 : Css.Style
focus__text_orange_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fbd38d")
            ]
        ]


focus__text_orange_400 : Css.Style
focus__text_orange_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f6ad55")
            ]
        ]


focus__text_orange_500 : Css.Style
focus__text_orange_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ed8936")
            ]
        ]


focus__text_orange_600 : Css.Style
focus__text_orange_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#dd6b20")
            ]
        ]


focus__text_orange_700 : Css.Style
focus__text_orange_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c05621")
            ]
        ]


focus__text_orange_800 : Css.Style
focus__text_orange_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9c4221")
            ]
        ]


focus__text_orange_900 : Css.Style
focus__text_orange_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#7b341e")
            ]
        ]


focus__text_yellow_100 : Css.Style
focus__text_yellow_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fffff0")
            ]
        ]


focus__text_yellow_200 : Css.Style
focus__text_yellow_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fefcbf")
            ]
        ]


focus__text_yellow_300 : Css.Style
focus__text_yellow_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#faf089")
            ]
        ]


focus__text_yellow_400 : Css.Style
focus__text_yellow_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f6e05e")
            ]
        ]


focus__text_yellow_500 : Css.Style
focus__text_yellow_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ecc94b")
            ]
        ]


focus__text_yellow_600 : Css.Style
focus__text_yellow_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#d69e2e")
            ]
        ]


focus__text_yellow_700 : Css.Style
focus__text_yellow_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b7791f")
            ]
        ]


focus__text_yellow_800 : Css.Style
focus__text_yellow_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#975a16")
            ]
        ]


focus__text_yellow_900 : Css.Style
focus__text_yellow_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#744210")
            ]
        ]


focus__text_green_100 : Css.Style
focus__text_green_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f0fff4")
            ]
        ]


focus__text_green_200 : Css.Style
focus__text_green_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c6f6d5")
            ]
        ]


focus__text_green_300 : Css.Style
focus__text_green_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9ae6b4")
            ]
        ]


focus__text_green_400 : Css.Style
focus__text_green_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#68d391")
            ]
        ]


focus__text_green_500 : Css.Style
focus__text_green_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#48bb78")
            ]
        ]


focus__text_green_600 : Css.Style
focus__text_green_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#38a169")
            ]
        ]


focus__text_green_700 : Css.Style
focus__text_green_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2f855a")
            ]
        ]


focus__text_green_800 : Css.Style
focus__text_green_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#276749")
            ]
        ]


focus__text_green_900 : Css.Style
focus__text_green_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#22543d")
            ]
        ]


focus__text_teal_100 : Css.Style
focus__text_teal_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e6fffa")
            ]
        ]


focus__text_teal_200 : Css.Style
focus__text_teal_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b2f5ea")
            ]
        ]


focus__text_teal_300 : Css.Style
focus__text_teal_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#81e6d9")
            ]
        ]


focus__text_teal_400 : Css.Style
focus__text_teal_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4fd1c5")
            ]
        ]


focus__text_teal_500 : Css.Style
focus__text_teal_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#38b2ac")
            ]
        ]


focus__text_teal_600 : Css.Style
focus__text_teal_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#319795")
            ]
        ]


focus__text_teal_700 : Css.Style
focus__text_teal_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2c7a7b")
            ]
        ]


focus__text_teal_800 : Css.Style
focus__text_teal_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#285e61")
            ]
        ]


focus__text_teal_900 : Css.Style
focus__text_teal_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#234e52")
            ]
        ]


focus__text_blue_100 : Css.Style
focus__text_blue_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ebf8ff")
            ]
        ]


focus__text_blue_200 : Css.Style
focus__text_blue_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#bee3f8")
            ]
        ]


focus__text_blue_300 : Css.Style
focus__text_blue_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#90cdf4")
            ]
        ]


focus__text_blue_400 : Css.Style
focus__text_blue_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#63b3ed")
            ]
        ]


focus__text_blue_500 : Css.Style
focus__text_blue_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4299e1")
            ]
        ]


focus__text_blue_600 : Css.Style
focus__text_blue_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#3182ce")
            ]
        ]


focus__text_blue_700 : Css.Style
focus__text_blue_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2b6cb0")
            ]
        ]


focus__text_blue_800 : Css.Style
focus__text_blue_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2c5282")
            ]
        ]


focus__text_blue_900 : Css.Style
focus__text_blue_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#2a4365")
            ]
        ]


focus__text_indigo_100 : Css.Style
focus__text_indigo_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ebf4ff")
            ]
        ]


focus__text_indigo_200 : Css.Style
focus__text_indigo_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#c3dafe")
            ]
        ]


focus__text_indigo_300 : Css.Style
focus__text_indigo_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#a3bffa")
            ]
        ]


focus__text_indigo_400 : Css.Style
focus__text_indigo_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#7f9cf5")
            ]
        ]


focus__text_indigo_500 : Css.Style
focus__text_indigo_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#667eea")
            ]
        ]


focus__text_indigo_600 : Css.Style
focus__text_indigo_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#5a67d8")
            ]
        ]


focus__text_indigo_700 : Css.Style
focus__text_indigo_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#4c51bf")
            ]
        ]


focus__text_indigo_800 : Css.Style
focus__text_indigo_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#434190")
            ]
        ]


focus__text_indigo_900 : Css.Style
focus__text_indigo_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#3c366b")
            ]
        ]


focus__text_purple_100 : Css.Style
focus__text_purple_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#faf5ff")
            ]
        ]


focus__text_purple_200 : Css.Style
focus__text_purple_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#e9d8fd")
            ]
        ]


focus__text_purple_300 : Css.Style
focus__text_purple_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#d6bcfa")
            ]
        ]


focus__text_purple_400 : Css.Style
focus__text_purple_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b794f4")
            ]
        ]


focus__text_purple_500 : Css.Style
focus__text_purple_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#9f7aea")
            ]
        ]


focus__text_purple_600 : Css.Style
focus__text_purple_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#805ad5")
            ]
        ]


focus__text_purple_700 : Css.Style
focus__text_purple_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#6b46c1")
            ]
        ]


focus__text_purple_800 : Css.Style
focus__text_purple_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#553c9a")
            ]
        ]


focus__text_purple_900 : Css.Style
focus__text_purple_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#44337a")
            ]
        ]


focus__text_pink_100 : Css.Style
focus__text_pink_100 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fff5f7")
            ]
        ]


focus__text_pink_200 : Css.Style
focus__text_pink_200 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fed7e2")
            ]
        ]


focus__text_pink_300 : Css.Style
focus__text_pink_300 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#fbb6ce")
            ]
        ]


focus__text_pink_400 : Css.Style
focus__text_pink_400 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#f687b3")
            ]
        ]


focus__text_pink_500 : Css.Style
focus__text_pink_500 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#ed64a6")
            ]
        ]


focus__text_pink_600 : Css.Style
focus__text_pink_600 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#d53f8c")
            ]
        ]


focus__text_pink_700 : Css.Style
focus__text_pink_700 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#b83280")
            ]
        ]


focus__text_pink_800 : Css.Style
focus__text_pink_800 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#97266d")
            ]
        ]


focus__text_pink_900 : Css.Style
focus__text_pink_900 =
    Css.batch
        [ Css.focus
            [ Css.color (Css.hex "#702459")
            ]
        ]


italic : Css.Style
italic =
    Css.batch
        [ Css.fontStyle Css.italic
        ]


not_italic : Css.Style
not_italic =
    Css.batch
        [ Css.fontStyle Css.normal
        ]


uppercase : Css.Style
uppercase =
    Css.batch
        [ Css.textTransform Css.uppercase
        ]


lowercase : Css.Style
lowercase =
    Css.batch
        [ Css.textTransform Css.lowercase
        ]


capitalize : Css.Style
capitalize =
    Css.batch
        [ Css.textTransform Css.capitalize
        ]


normal_case : Css.Style
normal_case =
    Css.batch
        [ Css.textTransform Css.none
        ]


underline : Css.Style
underline =
    Css.batch
        [ Css.textDecoration Css.underline
        ]


line_through : Css.Style
line_through =
    Css.batch
        [ Css.textDecoration Css.lineThrough
        ]


no_underline : Css.Style
no_underline =
    Css.batch
        [ Css.textDecoration Css.none
        ]


hover__underline : Css.Style
hover__underline =
    Css.batch
        [ Css.hover
            [ Css.textDecoration Css.underline
            ]
        ]


hover__line_through : Css.Style
hover__line_through =
    Css.batch
        [ Css.hover
            [ Css.textDecoration Css.lineThrough
            ]
        ]


hover__no_underline : Css.Style
hover__no_underline =
    Css.batch
        [ Css.hover
            [ Css.textDecoration Css.none
            ]
        ]


focus__underline : Css.Style
focus__underline =
    Css.batch
        [ Css.focus
            [ Css.textDecoration Css.underline
            ]
        ]


focus__line_through : Css.Style
focus__line_through =
    Css.batch
        [ Css.focus
            [ Css.textDecoration Css.lineThrough
            ]
        ]


focus__no_underline : Css.Style
focus__no_underline =
    Css.batch
        [ Css.focus
            [ Css.textDecoration Css.none
            ]
        ]


antialiased : Css.Style
antialiased =
    Css.batch
        [ Css.property "-webkit-font-smoothing" "antialiased"
        , Css.property "-moz-osx-font-smoothing" "grayscale"
        ]


subpixel_antialiased : Css.Style
subpixel_antialiased =
    Css.batch
        [ Css.property "-webkit-font-smoothing" "auto"
        , Css.property "-moz-osx-font-smoothing" "auto"
        ]


tracking_tighter : Css.Style
tracking_tighter =
    Css.batch
        [ Css.letterSpacing (Css.em -0.05)
        ]


tracking_tight : Css.Style
tracking_tight =
    Css.batch
        [ Css.letterSpacing (Css.em -0.025)
        ]


tracking_normal : Css.Style
tracking_normal =
    Css.batch
        [ Css.letterSpacing (Css.px 0)
        ]


tracking_wide : Css.Style
tracking_wide =
    Css.batch
        [ Css.letterSpacing (Css.em 0.025)
        ]


tracking_wider : Css.Style
tracking_wider =
    Css.batch
        [ Css.letterSpacing (Css.em 0.05)
        ]


tracking_widest : Css.Style
tracking_widest =
    Css.batch
        [ Css.letterSpacing (Css.em 0.1)
        ]


select_none : Css.Style
select_none =
    Css.batch
        [ Css.property "user-select" "none"
        ]


select_text : Css.Style
select_text =
    Css.batch
        [ Css.property "user-select" "text"
        ]


select_all : Css.Style
select_all =
    Css.batch
        [ Css.property "user-select" "all"
        ]


select_auto : Css.Style
select_auto =
    Css.batch
        [ Css.property "user-select" "auto"
        ]


align_baseline : Css.Style
align_baseline =
    Css.batch
        [ Css.verticalAlign Css.baseline
        ]


align_top : Css.Style
align_top =
    Css.batch
        [ Css.verticalAlign Css.top
        ]


align_middle : Css.Style
align_middle =
    Css.batch
        [ Css.verticalAlign Css.middle
        ]


align_bottom : Css.Style
align_bottom =
    Css.batch
        [ Css.verticalAlign Css.bottom
        ]


align_text_top : Css.Style
align_text_top =
    Css.batch
        [ Css.verticalAlign Css.textTop
        ]


align_text_bottom : Css.Style
align_text_bottom =
    Css.batch
        [ Css.verticalAlign Css.textBottom
        ]


visible : Css.Style
visible =
    Css.batch
        [ Css.visibility Css.visible
        ]


invisible : Css.Style
invisible =
    Css.batch
        [ Css.visibility Css.hidden
        ]


whitespace_normal : Css.Style
whitespace_normal =
    Css.batch
        [ Css.whiteSpace Css.normal
        ]


whitespace_no_wrap : Css.Style
whitespace_no_wrap =
    Css.batch
        [ Css.whiteSpace Css.noWrap
        ]


whitespace_pre : Css.Style
whitespace_pre =
    Css.batch
        [ Css.whiteSpace Css.pre
        ]


whitespace_pre_line : Css.Style
whitespace_pre_line =
    Css.batch
        [ Css.whiteSpace Css.preLine
        ]


whitespace_pre_wrap : Css.Style
whitespace_pre_wrap =
    Css.batch
        [ Css.whiteSpace Css.preWrap
        ]


break_normal : Css.Style
break_normal =
    Css.batch
        [ Css.overflowWrap Css.normal
        , Css.property "word-break" "normal"
        ]


break_words : Css.Style
break_words =
    Css.batch
        [ Css.overflowWrap Css.breakWord
        ]


break_all : Css.Style
break_all =
    Css.batch
        [ Css.property "word-break" "break-all"
        ]


truncate : Css.Style
truncate =
    Css.batch
        [ Css.overflow Css.hidden
        , Css.textOverflow Css.ellipsis
        , Css.whiteSpace Css.noWrap
        ]


w_0 : Css.Style
w_0 =
    Css.batch
        [ Css.width (Css.px 0)
        ]


w_1 : Css.Style
w_1 =
    Css.batch
        [ Css.width (Css.rem 0.25)
        ]


w_2 : Css.Style
w_2 =
    Css.batch
        [ Css.width (Css.rem 0.5)
        ]


w_3 : Css.Style
w_3 =
    Css.batch
        [ Css.width (Css.rem 0.75)
        ]


w_4 : Css.Style
w_4 =
    Css.batch
        [ Css.width (Css.rem 1)
        ]


w_5 : Css.Style
w_5 =
    Css.batch
        [ Css.width (Css.rem 1.25)
        ]


w_6 : Css.Style
w_6 =
    Css.batch
        [ Css.width (Css.rem 1.5)
        ]


w_8 : Css.Style
w_8 =
    Css.batch
        [ Css.width (Css.rem 2)
        ]


w_10 : Css.Style
w_10 =
    Css.batch
        [ Css.width (Css.rem 2.5)
        ]


w_12 : Css.Style
w_12 =
    Css.batch
        [ Css.width (Css.rem 3)
        ]


w_16 : Css.Style
w_16 =
    Css.batch
        [ Css.width (Css.rem 4)
        ]


w_20 : Css.Style
w_20 =
    Css.batch
        [ Css.width (Css.rem 5)
        ]


w_24 : Css.Style
w_24 =
    Css.batch
        [ Css.width (Css.rem 6)
        ]


w_32 : Css.Style
w_32 =
    Css.batch
        [ Css.width (Css.rem 8)
        ]


w_40 : Css.Style
w_40 =
    Css.batch
        [ Css.width (Css.rem 10)
        ]


w_48 : Css.Style
w_48 =
    Css.batch
        [ Css.width (Css.rem 12)
        ]


w_56 : Css.Style
w_56 =
    Css.batch
        [ Css.width (Css.rem 14)
        ]


w_64 : Css.Style
w_64 =
    Css.batch
        [ Css.width (Css.rem 16)
        ]


w_auto : Css.Style
w_auto =
    Css.batch
        [ Css.width Css.auto
        ]


w_px : Css.Style
w_px =
    Css.batch
        [ Css.width (Css.px 1)
        ]


w_1over2 : Css.Style
w_1over2 =
    Css.batch
        [ Css.width (Css.pct 50)
        ]


w_1over3 : Css.Style
w_1over3 =
    Css.batch
        [ Css.width (Css.pct 33.333333)
        ]


w_2over3 : Css.Style
w_2over3 =
    Css.batch
        [ Css.width (Css.pct 66.666667)
        ]


w_1over4 : Css.Style
w_1over4 =
    Css.batch
        [ Css.width (Css.pct 25)
        ]


w_2over4 : Css.Style
w_2over4 =
    Css.batch
        [ Css.width (Css.pct 50)
        ]


w_3over4 : Css.Style
w_3over4 =
    Css.batch
        [ Css.width (Css.pct 75)
        ]


w_1over5 : Css.Style
w_1over5 =
    Css.batch
        [ Css.width (Css.pct 20)
        ]


w_2over5 : Css.Style
w_2over5 =
    Css.batch
        [ Css.width (Css.pct 40)
        ]


w_3over5 : Css.Style
w_3over5 =
    Css.batch
        [ Css.width (Css.pct 60)
        ]


w_4over5 : Css.Style
w_4over5 =
    Css.batch
        [ Css.width (Css.pct 80)
        ]


w_1over6 : Css.Style
w_1over6 =
    Css.batch
        [ Css.width (Css.pct 16.666667)
        ]


w_2over6 : Css.Style
w_2over6 =
    Css.batch
        [ Css.width (Css.pct 33.333333)
        ]


w_3over6 : Css.Style
w_3over6 =
    Css.batch
        [ Css.width (Css.pct 50)
        ]


w_4over6 : Css.Style
w_4over6 =
    Css.batch
        [ Css.width (Css.pct 66.666667)
        ]


w_5over6 : Css.Style
w_5over6 =
    Css.batch
        [ Css.width (Css.pct 83.333333)
        ]


w_1over12 : Css.Style
w_1over12 =
    Css.batch
        [ Css.width (Css.pct 8.333333)
        ]


w_2over12 : Css.Style
w_2over12 =
    Css.batch
        [ Css.width (Css.pct 16.666667)
        ]


w_3over12 : Css.Style
w_3over12 =
    Css.batch
        [ Css.width (Css.pct 25)
        ]


w_4over12 : Css.Style
w_4over12 =
    Css.batch
        [ Css.width (Css.pct 33.333333)
        ]


w_5over12 : Css.Style
w_5over12 =
    Css.batch
        [ Css.width (Css.pct 41.666667)
        ]


w_6over12 : Css.Style
w_6over12 =
    Css.batch
        [ Css.width (Css.pct 50)
        ]


w_7over12 : Css.Style
w_7over12 =
    Css.batch
        [ Css.width (Css.pct 58.333333)
        ]


w_8over12 : Css.Style
w_8over12 =
    Css.batch
        [ Css.width (Css.pct 66.666667)
        ]


w_9over12 : Css.Style
w_9over12 =
    Css.batch
        [ Css.width (Css.pct 75)
        ]


w_10over12 : Css.Style
w_10over12 =
    Css.batch
        [ Css.width (Css.pct 83.333333)
        ]


w_11over12 : Css.Style
w_11over12 =
    Css.batch
        [ Css.width (Css.pct 91.666667)
        ]


w_full : Css.Style
w_full =
    Css.batch
        [ Css.width (Css.pct 100)
        ]


w_screen : Css.Style
w_screen =
    Css.batch
        [ Css.width (Css.vw 100)
        ]


z_0 : Css.Style
z_0 =
    Css.batch
        [ Css.zIndex (Css.int 0)
        ]


z_10 : Css.Style
z_10 =
    Css.batch
        [ Css.zIndex (Css.int 10)
        ]


z_20 : Css.Style
z_20 =
    Css.batch
        [ Css.zIndex (Css.int 20)
        ]


z_30 : Css.Style
z_30 =
    Css.batch
        [ Css.zIndex (Css.int 30)
        ]


z_40 : Css.Style
z_40 =
    Css.batch
        [ Css.zIndex (Css.int 40)
        ]


z_50 : Css.Style
z_50 =
    Css.batch
        [ Css.zIndex (Css.int 50)
        ]


z_auto : Css.Style
z_auto =
    Css.batch
        [ Css.zIndex Css.auto
        ]


transform_none : Css.Style
transform_none =
    Css.batch
        [ Css.transform Css.none
        ]


origin_center : Css.Style
origin_center =
    Css.batch
        [ Css.property "transform-origin" "center"
        ]


origin_top : Css.Style
origin_top =
    Css.batch
        [ Css.property "transform-origin" "top"
        ]


origin_top_right : Css.Style
origin_top_right =
    Css.batch
        [ Css.property "transform-origin" "top right"
        ]


origin_right : Css.Style
origin_right =
    Css.batch
        [ Css.property "transform-origin" "right"
        ]


origin_bottom_right : Css.Style
origin_bottom_right =
    Css.batch
        [ Css.property "transform-origin" "bottom right"
        ]


origin_bottom : Css.Style
origin_bottom =
    Css.batch
        [ Css.property "transform-origin" "bottom"
        ]


origin_bottom_left : Css.Style
origin_bottom_left =
    Css.batch
        [ Css.property "transform-origin" "bottom left"
        ]


origin_left : Css.Style
origin_left =
    Css.batch
        [ Css.property "transform-origin" "left"
        ]


origin_top_left : Css.Style
origin_top_left =
    Css.batch
        [ Css.property "transform-origin" "top left"
        ]
