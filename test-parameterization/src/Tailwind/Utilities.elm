module Tailwind.Utilities exposing
    ( absolute
    , accentWithColor
    , accent_auto
    , align_baseline
    , align_bottom
    , align_middle
    , align_sub
    , align_super
    , align_text_bottom
    , align_text_top
    , align_top
    , animate_bounce
    , animate_none
    , animate_ping
    , animate_pulse
    , animate_spin
    , antialiased
    , appearance_none
    , aspect_1
    , aspect_10
    , aspect_11
    , aspect_12
    , aspect_13
    , aspect_14
    , aspect_15
    , aspect_16
    , aspect_2
    , aspect_3
    , aspect_4
    , aspect_5
    , aspect_6
    , aspect_7
    , aspect_8
    , aspect_9
    , aspect_h_1
    , aspect_h_10
    , aspect_h_11
    , aspect_h_12
    , aspect_h_13
    , aspect_h_14
    , aspect_h_15
    , aspect_h_16
    , aspect_h_2
    , aspect_h_3
    , aspect_h_4
    , aspect_h_5
    , aspect_h_6
    , aspect_h_7
    , aspect_h_8
    , aspect_h_9
    , aspect_none
    , aspect_w_1
    , aspect_w_10
    , aspect_w_11
    , aspect_w_12
    , aspect_w_13
    , aspect_w_14
    , aspect_w_15
    , aspect_w_16
    , aspect_w_2
    , aspect_w_3
    , aspect_w_4
    , aspect_w_5
    , aspect_w_6
    , aspect_w_7
    , aspect_w_8
    , aspect_w_9
    , auto_cols_auto
    , auto_cols_fr
    , auto_cols_max
    , auto_cols_min
    , auto_rows_auto
    , auto_rows_fr
    , auto_rows_max
    , auto_rows_min
    , backdrop_blur
    , backdrop_blur_0
    , backdrop_blur_2xl
    , backdrop_blur_3xl
    , backdrop_blur_lg
    , backdrop_blur_md
    , backdrop_blur_none
    , backdrop_blur_sm
    , backdrop_blur_xl
    , backdrop_brightness_0
    , backdrop_brightness_100
    , backdrop_brightness_105
    , backdrop_brightness_110
    , backdrop_brightness_125
    , backdrop_brightness_150
    , backdrop_brightness_200
    , backdrop_brightness_50
    , backdrop_brightness_75
    , backdrop_brightness_90
    , backdrop_brightness_95
    , backdrop_contrast_0
    , backdrop_contrast_100
    , backdrop_contrast_125
    , backdrop_contrast_150
    , backdrop_contrast_200
    , backdrop_contrast_50
    , backdrop_contrast_75
    , backdrop_filter
    , backdrop_filter_none
    , backdrop_grayscale
    , backdrop_grayscale_0
    , backdrop_hue_rotate_0
    , backdrop_hue_rotate_15
    , backdrop_hue_rotate_180
    , backdrop_hue_rotate_30
    , backdrop_hue_rotate_60
    , backdrop_hue_rotate_90
    , backdrop_invert
    , backdrop_invert_0
    , backdrop_opacity_0
    , backdrop_opacity_10
    , backdrop_opacity_100
    , backdrop_opacity_20
    , backdrop_opacity_25
    , backdrop_opacity_30
    , backdrop_opacity_40
    , backdrop_opacity_5
    , backdrop_opacity_50
    , backdrop_opacity_60
    , backdrop_opacity_70
    , backdrop_opacity_75
    , backdrop_opacity_80
    , backdrop_opacity_90
    , backdrop_opacity_95
    , backdrop_saturate_0
    , backdrop_saturate_100
    , backdrop_saturate_150
    , backdrop_saturate_200
    , backdrop_saturate_50
    , backdrop_sepia
    , backdrop_sepia_0
    , basis_0
    , basis_0_dot_5
    , basis_1
    , basis_10
    , basis_10over12
    , basis_11
    , basis_11over12
    , basis_12
    , basis_14
    , basis_16
    , basis_1_dot_5
    , basis_1over12
    , basis_1over2
    , basis_1over3
    , basis_1over4
    , basis_1over5
    , basis_1over6
    , basis_2
    , basis_20
    , basis_24
    , basis_28
    , basis_2_dot_5
    , basis_2over12
    , basis_2over3
    , basis_2over4
    , basis_2over5
    , basis_2over6
    , basis_3
    , basis_32
    , basis_36
    , basis_3_dot_5
    , basis_3over12
    , basis_3over4
    , basis_3over5
    , basis_3over6
    , basis_4
    , basis_40
    , basis_44
    , basis_48
    , basis_4over12
    , basis_4over5
    , basis_4over6
    , basis_5
    , basis_52
    , basis_56
    , basis_5over12
    , basis_5over6
    , basis_6
    , basis_60
    , basis_64
    , basis_6over12
    , basis_7
    , basis_72
    , basis_7over12
    , basis_8
    , basis_80
    , basis_8over12
    , basis_9
    , basis_96
    , basis_9over12
    , basis_auto
    , basis_full
    , basis_px
    , bgWithColor
    , bg_auto
    , bg_blend_color
    , bg_blend_color_burn
    , bg_blend_color_dodge
    , bg_blend_darken
    , bg_blend_difference
    , bg_blend_exclusion
    , bg_blend_hard_light
    , bg_blend_hue
    , bg_blend_lighten
    , bg_blend_luminosity
    , bg_blend_multiply
    , bg_blend_normal
    , bg_blend_overlay
    , bg_blend_saturation
    , bg_blend_screen
    , bg_blend_soft_light
    , bg_bottom
    , bg_center
    , bg_clip_border
    , bg_clip_content
    , bg_clip_padding
    , bg_clip_text
    , bg_contain
    , bg_cover
    , bg_fixed
    , bg_gradient_to_b
    , bg_gradient_to_bl
    , bg_gradient_to_br
    , bg_gradient_to_l
    , bg_gradient_to_r
    , bg_gradient_to_t
    , bg_gradient_to_tl
    , bg_gradient_to_tr
    , bg_left
    , bg_left_bottom
    , bg_left_top
    , bg_local
    , bg_no_repeat
    , bg_none
    , bg_opacity_0
    , bg_opacity_10
    , bg_opacity_100
    , bg_opacity_20
    , bg_opacity_25
    , bg_opacity_30
    , bg_opacity_40
    , bg_opacity_5
    , bg_opacity_50
    , bg_opacity_60
    , bg_opacity_70
    , bg_opacity_75
    , bg_opacity_80
    , bg_opacity_90
    , bg_opacity_95
    , bg_origin_border
    , bg_origin_content
    , bg_origin_padding
    , bg_repeat
    , bg_repeat_round
    , bg_repeat_space
    , bg_repeat_x
    , bg_repeat_y
    , bg_right
    , bg_right_bottom
    , bg_right_top
    , bg_scroll
    , bg_top
    , block
    , blur
    , blur_0
    , blur_2xl
    , blur_3xl
    , blur_lg
    , blur_md
    , blur_none
    , blur_sm
    , blur_xl
    , border
    , borderWithColor
    , border_0
    , border_2
    , border_4
    , border_8
    , border_b
    , border_bWithColor
    , border_b_0
    , border_b_2
    , border_b_4
    , border_b_8
    , border_collapse
    , border_dashed
    , border_dotted
    , border_double
    , border_hidden
    , border_l
    , border_lWithColor
    , border_l_0
    , border_l_2
    , border_l_4
    , border_l_8
    , border_none
    , border_opacity_0
    , border_opacity_10
    , border_opacity_100
    , border_opacity_20
    , border_opacity_25
    , border_opacity_30
    , border_opacity_40
    , border_opacity_5
    , border_opacity_50
    , border_opacity_60
    , border_opacity_70
    , border_opacity_75
    , border_opacity_80
    , border_opacity_90
    , border_opacity_95
    , border_r
    , border_rWithColor
    , border_r_0
    , border_r_2
    , border_r_4
    , border_r_8
    , border_separate
    , border_solid
    , border_spacing_0
    , border_spacing_0_dot_5
    , border_spacing_1
    , border_spacing_10
    , border_spacing_11
    , border_spacing_12
    , border_spacing_14
    , border_spacing_16
    , border_spacing_1_dot_5
    , border_spacing_2
    , border_spacing_20
    , border_spacing_24
    , border_spacing_28
    , border_spacing_2_dot_5
    , border_spacing_3
    , border_spacing_32
    , border_spacing_36
    , border_spacing_3_dot_5
    , border_spacing_4
    , border_spacing_40
    , border_spacing_44
    , border_spacing_48
    , border_spacing_5
    , border_spacing_52
    , border_spacing_56
    , border_spacing_6
    , border_spacing_60
    , border_spacing_64
    , border_spacing_7
    , border_spacing_72
    , border_spacing_8
    , border_spacing_80
    , border_spacing_9
    , border_spacing_96
    , border_spacing_px
    , border_spacing_x_0
    , border_spacing_x_0_dot_5
    , border_spacing_x_1
    , border_spacing_x_10
    , border_spacing_x_11
    , border_spacing_x_12
    , border_spacing_x_14
    , border_spacing_x_16
    , border_spacing_x_1_dot_5
    , border_spacing_x_2
    , border_spacing_x_20
    , border_spacing_x_24
    , border_spacing_x_28
    , border_spacing_x_2_dot_5
    , border_spacing_x_3
    , border_spacing_x_32
    , border_spacing_x_36
    , border_spacing_x_3_dot_5
    , border_spacing_x_4
    , border_spacing_x_40
    , border_spacing_x_44
    , border_spacing_x_48
    , border_spacing_x_5
    , border_spacing_x_52
    , border_spacing_x_56
    , border_spacing_x_6
    , border_spacing_x_60
    , border_spacing_x_64
    , border_spacing_x_7
    , border_spacing_x_72
    , border_spacing_x_8
    , border_spacing_x_80
    , border_spacing_x_9
    , border_spacing_x_96
    , border_spacing_x_px
    , border_spacing_y_0
    , border_spacing_y_0_dot_5
    , border_spacing_y_1
    , border_spacing_y_10
    , border_spacing_y_11
    , border_spacing_y_12
    , border_spacing_y_14
    , border_spacing_y_16
    , border_spacing_y_1_dot_5
    , border_spacing_y_2
    , border_spacing_y_20
    , border_spacing_y_24
    , border_spacing_y_28
    , border_spacing_y_2_dot_5
    , border_spacing_y_3
    , border_spacing_y_32
    , border_spacing_y_36
    , border_spacing_y_3_dot_5
    , border_spacing_y_4
    , border_spacing_y_40
    , border_spacing_y_44
    , border_spacing_y_48
    , border_spacing_y_5
    , border_spacing_y_52
    , border_spacing_y_56
    , border_spacing_y_6
    , border_spacing_y_60
    , border_spacing_y_64
    , border_spacing_y_7
    , border_spacing_y_72
    , border_spacing_y_8
    , border_spacing_y_80
    , border_spacing_y_9
    , border_spacing_y_96
    , border_spacing_y_px
    , border_t
    , border_tWithColor
    , border_t_0
    , border_t_2
    , border_t_4
    , border_t_8
    , border_x
    , border_xWithColor
    , border_x_0
    , border_x_2
    , border_x_4
    , border_x_8
    , border_y
    , border_yWithColor
    , border_y_0
    , border_y_2
    , border_y_4
    , border_y_8
    , bottom_0
    , bottom_0_dot_5
    , bottom_1
    , bottom_10
    , bottom_11
    , bottom_12
    , bottom_14
    , bottom_16
    , bottom_1_dot_5
    , bottom_1over2
    , bottom_1over3
    , bottom_1over4
    , bottom_2
    , bottom_20
    , bottom_24
    , bottom_28
    , bottom_2_dot_5
    , bottom_2over3
    , bottom_2over4
    , bottom_3
    , bottom_32
    , bottom_36
    , bottom_3_dot_5
    , bottom_3over4
    , bottom_4
    , bottom_40
    , bottom_44
    , bottom_48
    , bottom_5
    , bottom_52
    , bottom_56
    , bottom_6
    , bottom_60
    , bottom_64
    , bottom_7
    , bottom_72
    , bottom_8
    , bottom_80
    , bottom_9
    , bottom_96
    , bottom_auto
    , bottom_full
    , bottom_px
    , box_border
    , box_content
    , box_decoration_clone
    , box_decoration_slice
    , break_after_all
    , break_after_auto
    , break_after_avoid
    , break_after_avoid_page
    , break_after_column
    , break_after_left
    , break_after_page
    , break_after_right
    , break_all
    , break_before_all
    , break_before_auto
    , break_before_avoid
    , break_before_avoid_page
    , break_before_column
    , break_before_left
    , break_before_page
    , break_before_right
    , break_inside_auto
    , break_inside_avoid
    , break_inside_avoid_column
    , break_inside_avoid_page
    , break_normal
    , break_words
    , brightness_0
    , brightness_100
    , brightness_105
    , brightness_110
    , brightness_125
    , brightness_150
    , brightness_200
    , brightness_50
    , brightness_75
    , brightness_90
    , brightness_95
    , capitalize
    , caretWithColor
    , clear_both
    , clear_left
    , clear_none
    , clear_right
    , col_auto
    , col_end_1
    , col_end_10
    , col_end_11
    , col_end_12
    , col_end_13
    , col_end_2
    , col_end_3
    , col_end_4
    , col_end_5
    , col_end_6
    , col_end_7
    , col_end_8
    , col_end_9
    , col_end_auto
    , col_span_1
    , col_span_10
    , col_span_11
    , col_span_12
    , col_span_2
    , col_span_3
    , col_span_4
    , col_span_5
    , col_span_6
    , col_span_7
    , col_span_8
    , col_span_9
    , col_span_full
    , col_start_1
    , col_start_10
    , col_start_11
    , col_start_12
    , col_start_13
    , col_start_2
    , col_start_3
    , col_start_4
    , col_start_5
    , col_start_6
    , col_start_7
    , col_start_8
    , col_start_9
    , col_start_auto
    , columns_1
    , columns_10
    , columns_11
    , columns_12
    , columns_2
    , columns_2xl
    , columns_2xs
    , columns_3
    , columns_3xl
    , columns_3xs
    , columns_4
    , columns_4xl
    , columns_5
    , columns_5xl
    , columns_6
    , columns_6xl
    , columns_7
    , columns_7xl
    , columns_8
    , columns_9
    , columns_auto
    , columns_lg
    , columns_md
    , columns_sm
    , columns_xl
    , columns_xs
    , container
    , content_around
    , content_between
    , content_center
    , content_end
    , content_evenly
    , content_none
    , content_start
    , contents
    , contrast_0
    , contrast_100
    , contrast_125
    , contrast_150
    , contrast_200
    , contrast_50
    , contrast_75
    , cursor_alias
    , cursor_all_scroll
    , cursor_auto
    , cursor_cell
    , cursor_col_resize
    , cursor_context_menu
    , cursor_copy
    , cursor_crosshair
    , cursor_default
    , cursor_e_resize
    , cursor_ew_resize
    , cursor_grab
    , cursor_grabbing
    , cursor_help
    , cursor_move
    , cursor_n_resize
    , cursor_ne_resize
    , cursor_nesw_resize
    , cursor_no_drop
    , cursor_none
    , cursor_not_allowed
    , cursor_ns_resize
    , cursor_nw_resize
    , cursor_nwse_resize
    , cursor_pointer
    , cursor_progress
    , cursor_row_resize
    , cursor_s_resize
    , cursor_se_resize
    , cursor_sw_resize
    , cursor_text
    , cursor_vertical_text
    , cursor_w_resize
    , cursor_wait
    , cursor_zoom_in
    , cursor_zoom_out
    , decorationWithColor
    , decoration_0
    , decoration_1
    , decoration_2
    , decoration_4
    , decoration_8
    , decoration_auto
    , decoration_clone
    , decoration_dashed
    , decoration_dotted
    , decoration_double
    , decoration_from_font
    , decoration_slice
    , decoration_solid
    , decoration_wavy
    , delay_100
    , delay_1000
    , delay_150
    , delay_200
    , delay_300
    , delay_500
    , delay_700
    , delay_75
    , diagonal_fractions
    , divideWithColor
    , divide_dashed
    , divide_dotted
    , divide_double
    , divide_none
    , divide_opacity_0
    , divide_opacity_10
    , divide_opacity_100
    , divide_opacity_20
    , divide_opacity_25
    , divide_opacity_30
    , divide_opacity_40
    , divide_opacity_5
    , divide_opacity_50
    , divide_opacity_60
    , divide_opacity_70
    , divide_opacity_75
    , divide_opacity_80
    , divide_opacity_90
    , divide_opacity_95
    , divide_solid
    , divide_x
    , divide_x_0
    , divide_x_2
    , divide_x_4
    , divide_x_8
    , divide_x_reverse
    , divide_y
    , divide_y_0
    , divide_y_2
    , divide_y_4
    , divide_y_8
    , divide_y_reverse
    , drop_shadow
    , drop_shadow_2xl
    , drop_shadow_lg
    , drop_shadow_md
    , drop_shadow_none
    , drop_shadow_sm
    , drop_shadow_xl
    , duration_100
    , duration_1000
    , duration_150
    , duration_200
    , duration_300
    , duration_500
    , duration_700
    , duration_75
    , ease_in
    , ease_in_out
    , ease_linear
    , ease_out
    , fillWithColor
    , filter
    , filter_none
    , fixed
    , flex
    , flex_1
    , flex_auto
    , flex_col
    , flex_col_reverse
    , flex_grow
    , flex_grow_0
    , flex_initial
    , flex_none
    , flex_nowrap
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
    , fontWithColor
    , font_bold
    , font_extrabold
    , font_extralight
    , font_light
    , font_medium
    , font_mono
    , font_normal
    , font_sans
    , font_semibold
    , font_serif
    , font_thin
    , form_checkbox
    , form_input
    , form_multiselect
    , form_radio
    , form_select
    , form_textarea
    , fromWithColor
    , gap_0
    , gap_0_dot_5
    , gap_1
    , gap_10
    , gap_11
    , gap_12
    , gap_14
    , gap_16
    , gap_1_dot_5
    , gap_2
    , gap_20
    , gap_24
    , gap_28
    , gap_2_dot_5
    , gap_3
    , gap_32
    , gap_36
    , gap_3_dot_5
    , gap_4
    , gap_40
    , gap_44
    , gap_48
    , gap_5
    , gap_52
    , gap_56
    , gap_6
    , gap_60
    , gap_64
    , gap_7
    , gap_72
    , gap_8
    , gap_80
    , gap_9
    , gap_96
    , gap_px
    , gap_x_0
    , gap_x_0_dot_5
    , gap_x_1
    , gap_x_10
    , gap_x_11
    , gap_x_12
    , gap_x_14
    , gap_x_16
    , gap_x_1_dot_5
    , gap_x_2
    , gap_x_20
    , gap_x_24
    , gap_x_28
    , gap_x_2_dot_5
    , gap_x_3
    , gap_x_32
    , gap_x_36
    , gap_x_3_dot_5
    , gap_x_4
    , gap_x_40
    , gap_x_44
    , gap_x_48
    , gap_x_5
    , gap_x_52
    , gap_x_56
    , gap_x_6
    , gap_x_60
    , gap_x_64
    , gap_x_7
    , gap_x_72
    , gap_x_8
    , gap_x_80
    , gap_x_9
    , gap_x_96
    , gap_x_px
    , gap_y_0
    , gap_y_0_dot_5
    , gap_y_1
    , gap_y_10
    , gap_y_11
    , gap_y_12
    , gap_y_14
    , gap_y_16
    , gap_y_1_dot_5
    , gap_y_2
    , gap_y_20
    , gap_y_24
    , gap_y_28
    , gap_y_2_dot_5
    , gap_y_3
    , gap_y_32
    , gap_y_36
    , gap_y_3_dot_5
    , gap_y_4
    , gap_y_40
    , gap_y_44
    , gap_y_48
    , gap_y_5
    , gap_y_52
    , gap_y_56
    , gap_y_6
    , gap_y_60
    , gap_y_64
    , gap_y_7
    , gap_y_72
    , gap_y_8
    , gap_y_80
    , gap_y_9
    , gap_y_96
    , gap_y_px
    , globalStyles
    , grayscale
    , grayscale_0
    , grid
    , grid_cols_1
    , grid_cols_10
    , grid_cols_11
    , grid_cols_12
    , grid_cols_2
    , grid_cols_3
    , grid_cols_4
    , grid_cols_5
    , grid_cols_6
    , grid_cols_7
    , grid_cols_8
    , grid_cols_9
    , grid_cols_none
    , grid_flow_col
    , grid_flow_col_dense
    , grid_flow_dense
    , grid_flow_row
    , grid_flow_row_dense
    , grid_rows_1
    , grid_rows_2
    , grid_rows_3
    , grid_rows_4
    , grid_rows_5
    , grid_rows_6
    , grid_rows_none
    , grow
    , grow_0
    , h_0
    , h_0_dot_5
    , h_1
    , h_10
    , h_11
    , h_12
    , h_14
    , h_16
    , h_1_dot_5
    , h_1over2
    , h_1over3
    , h_1over4
    , h_1over5
    , h_1over6
    , h_2
    , h_20
    , h_24
    , h_28
    , h_2_dot_5
    , h_2over3
    , h_2over4
    , h_2over5
    , h_2over6
    , h_3
    , h_32
    , h_36
    , h_3_dot_5
    , h_3over4
    , h_3over5
    , h_3over6
    , h_4
    , h_40
    , h_44
    , h_48
    , h_4over5
    , h_4over6
    , h_5
    , h_52
    , h_56
    , h_5over6
    , h_6
    , h_60
    , h_64
    , h_7
    , h_72
    , h_8
    , h_80
    , h_9
    , h_96
    , h_auto
    , h_fit
    , h_full
    , h_max
    , h_min
    , h_px
    , h_screen
    , hidden
    , hue_rotate_0
    , hue_rotate_15
    , hue_rotate_180
    , hue_rotate_30
    , hue_rotate_60
    , hue_rotate_90
    , indent_0
    , indent_0_dot_5
    , indent_1
    , indent_10
    , indent_11
    , indent_12
    , indent_14
    , indent_16
    , indent_1_dot_5
    , indent_2
    , indent_20
    , indent_24
    , indent_28
    , indent_2_dot_5
    , indent_3
    , indent_32
    , indent_36
    , indent_3_dot_5
    , indent_4
    , indent_40
    , indent_44
    , indent_48
    , indent_5
    , indent_52
    , indent_56
    , indent_6
    , indent_60
    , indent_64
    , indent_7
    , indent_72
    , indent_8
    , indent_80
    , indent_9
    , indent_96
    , indent_px
    , inline
    , inline_block
    , inline_flex
    , inline_grid
    , inline_table
    , inset_0
    , inset_0_dot_5
    , inset_1
    , inset_10
    , inset_11
    , inset_12
    , inset_14
    , inset_16
    , inset_1_dot_5
    , inset_1over2
    , inset_1over3
    , inset_1over4
    , inset_2
    , inset_20
    , inset_24
    , inset_28
    , inset_2_dot_5
    , inset_2over3
    , inset_2over4
    , inset_3
    , inset_32
    , inset_36
    , inset_3_dot_5
    , inset_3over4
    , inset_4
    , inset_40
    , inset_44
    , inset_48
    , inset_5
    , inset_52
    , inset_56
    , inset_6
    , inset_60
    , inset_64
    , inset_7
    , inset_72
    , inset_8
    , inset_80
    , inset_9
    , inset_96
    , inset_auto
    , inset_full
    , inset_px
    , inset_x_0
    , inset_x_0_dot_5
    , inset_x_1
    , inset_x_10
    , inset_x_11
    , inset_x_12
    , inset_x_14
    , inset_x_16
    , inset_x_1_dot_5
    , inset_x_1over2
    , inset_x_1over3
    , inset_x_1over4
    , inset_x_2
    , inset_x_20
    , inset_x_24
    , inset_x_28
    , inset_x_2_dot_5
    , inset_x_2over3
    , inset_x_2over4
    , inset_x_3
    , inset_x_32
    , inset_x_36
    , inset_x_3_dot_5
    , inset_x_3over4
    , inset_x_4
    , inset_x_40
    , inset_x_44
    , inset_x_48
    , inset_x_5
    , inset_x_52
    , inset_x_56
    , inset_x_6
    , inset_x_60
    , inset_x_64
    , inset_x_7
    , inset_x_72
    , inset_x_8
    , inset_x_80
    , inset_x_9
    , inset_x_96
    , inset_x_auto
    , inset_x_full
    , inset_x_px
    , inset_y_0
    , inset_y_0_dot_5
    , inset_y_1
    , inset_y_10
    , inset_y_11
    , inset_y_12
    , inset_y_14
    , inset_y_16
    , inset_y_1_dot_5
    , inset_y_1over2
    , inset_y_1over3
    , inset_y_1over4
    , inset_y_2
    , inset_y_20
    , inset_y_24
    , inset_y_28
    , inset_y_2_dot_5
    , inset_y_2over3
    , inset_y_2over4
    , inset_y_3
    , inset_y_32
    , inset_y_36
    , inset_y_3_dot_5
    , inset_y_3over4
    , inset_y_4
    , inset_y_40
    , inset_y_44
    , inset_y_48
    , inset_y_5
    , inset_y_52
    , inset_y_56
    , inset_y_6
    , inset_y_60
    , inset_y_64
    , inset_y_7
    , inset_y_72
    , inset_y_8
    , inset_y_80
    , inset_y_9
    , inset_y_96
    , inset_y_auto
    , inset_y_full
    , inset_y_px
    , invert
    , invert_0
    , invisible
    , isolate
    , isolation_auto
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
    , justify_items_center
    , justify_items_end
    , justify_items_start
    , justify_items_stretch
    , justify_self_auto
    , justify_self_center
    , justify_self_end
    , justify_self_start
    , justify_self_stretch
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
    , left_0_dot_5
    , left_1
    , left_10
    , left_11
    , left_12
    , left_14
    , left_16
    , left_1_dot_5
    , left_1over2
    , left_1over3
    , left_1over4
    , left_2
    , left_20
    , left_24
    , left_28
    , left_2_dot_5
    , left_2over3
    , left_2over4
    , left_3
    , left_32
    , left_36
    , left_3_dot_5
    , left_3over4
    , left_4
    , left_40
    , left_44
    , left_48
    , left_5
    , left_52
    , left_56
    , left_6
    , left_60
    , left_64
    , left_7
    , left_72
    , left_8
    , left_80
    , left_9
    , left_96
    , left_auto
    , left_full
    , left_px
    , line_through
    , lining_nums
    , list_decimal
    , list_disc
    , list_inside
    , list_item
    , list_none
    , list_outside
    , lowercase
    , m_0
    , m_0_dot_5
    , m_1
    , m_10
    , m_11
    , m_12
    , m_14
    , m_16
    , m_1_dot_5
    , m_2
    , m_20
    , m_24
    , m_28
    , m_2_dot_5
    , m_3
    , m_32
    , m_36
    , m_3_dot_5
    , m_4
    , m_40
    , m_44
    , m_48
    , m_5
    , m_52
    , m_56
    , m_6
    , m_60
    , m_64
    , m_7
    , m_72
    , m_8
    , m_80
    , m_9
    , m_96
    , m_auto
    , m_px
    , max_h_0
    , max_h_0_dot_5
    , max_h_1
    , max_h_10
    , max_h_11
    , max_h_12
    , max_h_14
    , max_h_16
    , max_h_1_dot_5
    , max_h_2
    , max_h_20
    , max_h_24
    , max_h_28
    , max_h_2_dot_5
    , max_h_3
    , max_h_32
    , max_h_36
    , max_h_3_dot_5
    , max_h_4
    , max_h_40
    , max_h_44
    , max_h_48
    , max_h_5
    , max_h_52
    , max_h_56
    , max_h_6
    , max_h_60
    , max_h_64
    , max_h_7
    , max_h_72
    , max_h_8
    , max_h_80
    , max_h_9
    , max_h_96
    , max_h_fit
    , max_h_full
    , max_h_max
    , max_h_min
    , max_h_px
    , max_h_screen
    , max_w_0
    , max_w_2xl
    , max_w_3xl
    , max_w_4xl
    , max_w_5xl
    , max_w_6xl
    , max_w_7xl
    , max_w_fit
    , max_w_full
    , max_w_lg
    , max_w_max
    , max_w_md
    , max_w_min
    , max_w_none
    , max_w_prose
    , max_w_screen_2xl
    , max_w_screen_lg
    , max_w_screen_md
    , max_w_screen_sm
    , max_w_screen_xl
    , max_w_sm
    , max_w_xl
    , max_w_xs
    , mb_0
    , mb_0_dot_5
    , mb_1
    , mb_10
    , mb_11
    , mb_12
    , mb_14
    , mb_16
    , mb_1_dot_5
    , mb_2
    , mb_20
    , mb_24
    , mb_28
    , mb_2_dot_5
    , mb_3
    , mb_32
    , mb_36
    , mb_3_dot_5
    , mb_4
    , mb_40
    , mb_44
    , mb_48
    , mb_5
    , mb_52
    , mb_56
    , mb_6
    , mb_60
    , mb_64
    , mb_7
    , mb_72
    , mb_8
    , mb_80
    , mb_9
    , mb_96
    , mb_auto
    , mb_px
    , min_h_0
    , min_h_fit
    , min_h_full
    , min_h_max
    , min_h_min
    , min_h_screen
    , min_w_0
    , min_w_fit
    , min_w_full
    , min_w_max
    , min_w_min
    , mix_blend_color
    , mix_blend_color_burn
    , mix_blend_color_dodge
    , mix_blend_darken
    , mix_blend_difference
    , mix_blend_exclusion
    , mix_blend_hard_light
    , mix_blend_hue
    , mix_blend_lighten
    , mix_blend_luminosity
    , mix_blend_multiply
    , mix_blend_normal
    , mix_blend_overlay
    , mix_blend_plus_lighter
    , mix_blend_saturation
    , mix_blend_screen
    , mix_blend_soft_light
    , ml_0
    , ml_0_dot_5
    , ml_1
    , ml_10
    , ml_11
    , ml_12
    , ml_14
    , ml_16
    , ml_1_dot_5
    , ml_2
    , ml_20
    , ml_24
    , ml_28
    , ml_2_dot_5
    , ml_3
    , ml_32
    , ml_36
    , ml_3_dot_5
    , ml_4
    , ml_40
    , ml_44
    , ml_48
    , ml_5
    , ml_52
    , ml_56
    , ml_6
    , ml_60
    , ml_64
    , ml_7
    , ml_72
    , ml_8
    , ml_80
    , ml_9
    , ml_96
    , ml_auto
    , ml_px
    , mr_0
    , mr_0_dot_5
    , mr_1
    , mr_10
    , mr_11
    , mr_12
    , mr_14
    , mr_16
    , mr_1_dot_5
    , mr_2
    , mr_20
    , mr_24
    , mr_28
    , mr_2_dot_5
    , mr_3
    , mr_32
    , mr_36
    , mr_3_dot_5
    , mr_4
    , mr_40
    , mr_44
    , mr_48
    , mr_5
    , mr_52
    , mr_56
    , mr_6
    , mr_60
    , mr_64
    , mr_7
    , mr_72
    , mr_8
    , mr_80
    , mr_9
    , mr_96
    , mr_auto
    , mr_px
    , mt_0
    , mt_0_dot_5
    , mt_1
    , mt_10
    , mt_11
    , mt_12
    , mt_14
    , mt_16
    , mt_1_dot_5
    , mt_2
    , mt_20
    , mt_24
    , mt_28
    , mt_2_dot_5
    , mt_3
    , mt_32
    , mt_36
    , mt_3_dot_5
    , mt_4
    , mt_40
    , mt_44
    , mt_48
    , mt_5
    , mt_52
    , mt_56
    , mt_6
    , mt_60
    , mt_64
    , mt_7
    , mt_72
    , mt_8
    , mt_80
    , mt_9
    , mt_96
    , mt_auto
    , mt_px
    , mx_0
    , mx_0_dot_5
    , mx_1
    , mx_10
    , mx_11
    , mx_12
    , mx_14
    , mx_16
    , mx_1_dot_5
    , mx_2
    , mx_20
    , mx_24
    , mx_28
    , mx_2_dot_5
    , mx_3
    , mx_32
    , mx_36
    , mx_3_dot_5
    , mx_4
    , mx_40
    , mx_44
    , mx_48
    , mx_5
    , mx_52
    , mx_56
    , mx_6
    , mx_60
    , mx_64
    , mx_7
    , mx_72
    , mx_8
    , mx_80
    , mx_9
    , mx_96
    , mx_auto
    , mx_px
    , my_0
    , my_0_dot_5
    , my_1
    , my_10
    , my_11
    , my_12
    , my_14
    , my_16
    , my_1_dot_5
    , my_2
    , my_20
    , my_24
    , my_28
    , my_2_dot_5
    , my_3
    , my_32
    , my_36
    , my_3_dot_5
    , my_4
    , my_40
    , my_44
    , my_48
    , my_5
    , my_52
    , my_56
    , my_6
    , my_60
    , my_64
    , my_7
    , my_72
    , my_8
    , my_80
    , my_9
    , my_96
    , my_auto
    , my_px
    , neg_backdrop_hue_rotate_0
    , neg_backdrop_hue_rotate_15
    , neg_backdrop_hue_rotate_180
    , neg_backdrop_hue_rotate_30
    , neg_backdrop_hue_rotate_60
    , neg_backdrop_hue_rotate_90
    , neg_bottom_0
    , neg_bottom_0_dot_5
    , neg_bottom_1
    , neg_bottom_10
    , neg_bottom_11
    , neg_bottom_12
    , neg_bottom_14
    , neg_bottom_16
    , neg_bottom_1_dot_5
    , neg_bottom_1over2
    , neg_bottom_1over3
    , neg_bottom_1over4
    , neg_bottom_2
    , neg_bottom_20
    , neg_bottom_24
    , neg_bottom_28
    , neg_bottom_2_dot_5
    , neg_bottom_2over3
    , neg_bottom_2over4
    , neg_bottom_3
    , neg_bottom_32
    , neg_bottom_36
    , neg_bottom_3_dot_5
    , neg_bottom_3over4
    , neg_bottom_4
    , neg_bottom_40
    , neg_bottom_44
    , neg_bottom_48
    , neg_bottom_5
    , neg_bottom_52
    , neg_bottom_56
    , neg_bottom_6
    , neg_bottom_60
    , neg_bottom_64
    , neg_bottom_7
    , neg_bottom_72
    , neg_bottom_8
    , neg_bottom_80
    , neg_bottom_9
    , neg_bottom_96
    , neg_bottom_full
    , neg_bottom_px
    , neg_hue_rotate_0
    , neg_hue_rotate_15
    , neg_hue_rotate_180
    , neg_hue_rotate_30
    , neg_hue_rotate_60
    , neg_hue_rotate_90
    , neg_indent_0
    , neg_indent_0_dot_5
    , neg_indent_1
    , neg_indent_10
    , neg_indent_11
    , neg_indent_12
    , neg_indent_14
    , neg_indent_16
    , neg_indent_1_dot_5
    , neg_indent_2
    , neg_indent_20
    , neg_indent_24
    , neg_indent_28
    , neg_indent_2_dot_5
    , neg_indent_3
    , neg_indent_32
    , neg_indent_36
    , neg_indent_3_dot_5
    , neg_indent_4
    , neg_indent_40
    , neg_indent_44
    , neg_indent_48
    , neg_indent_5
    , neg_indent_52
    , neg_indent_56
    , neg_indent_6
    , neg_indent_60
    , neg_indent_64
    , neg_indent_7
    , neg_indent_72
    , neg_indent_8
    , neg_indent_80
    , neg_indent_9
    , neg_indent_96
    , neg_indent_px
    , neg_inset_0
    , neg_inset_0_dot_5
    , neg_inset_1
    , neg_inset_10
    , neg_inset_11
    , neg_inset_12
    , neg_inset_14
    , neg_inset_16
    , neg_inset_1_dot_5
    , neg_inset_1over2
    , neg_inset_1over3
    , neg_inset_1over4
    , neg_inset_2
    , neg_inset_20
    , neg_inset_24
    , neg_inset_28
    , neg_inset_2_dot_5
    , neg_inset_2over3
    , neg_inset_2over4
    , neg_inset_3
    , neg_inset_32
    , neg_inset_36
    , neg_inset_3_dot_5
    , neg_inset_3over4
    , neg_inset_4
    , neg_inset_40
    , neg_inset_44
    , neg_inset_48
    , neg_inset_5
    , neg_inset_52
    , neg_inset_56
    , neg_inset_6
    , neg_inset_60
    , neg_inset_64
    , neg_inset_7
    , neg_inset_72
    , neg_inset_8
    , neg_inset_80
    , neg_inset_9
    , neg_inset_96
    , neg_inset_full
    , neg_inset_px
    , neg_inset_x_0
    , neg_inset_x_0_dot_5
    , neg_inset_x_1
    , neg_inset_x_10
    , neg_inset_x_11
    , neg_inset_x_12
    , neg_inset_x_14
    , neg_inset_x_16
    , neg_inset_x_1_dot_5
    , neg_inset_x_1over2
    , neg_inset_x_1over3
    , neg_inset_x_1over4
    , neg_inset_x_2
    , neg_inset_x_20
    , neg_inset_x_24
    , neg_inset_x_28
    , neg_inset_x_2_dot_5
    , neg_inset_x_2over3
    , neg_inset_x_2over4
    , neg_inset_x_3
    , neg_inset_x_32
    , neg_inset_x_36
    , neg_inset_x_3_dot_5
    , neg_inset_x_3over4
    , neg_inset_x_4
    , neg_inset_x_40
    , neg_inset_x_44
    , neg_inset_x_48
    , neg_inset_x_5
    , neg_inset_x_52
    , neg_inset_x_56
    , neg_inset_x_6
    , neg_inset_x_60
    , neg_inset_x_64
    , neg_inset_x_7
    , neg_inset_x_72
    , neg_inset_x_8
    , neg_inset_x_80
    , neg_inset_x_9
    , neg_inset_x_96
    , neg_inset_x_full
    , neg_inset_x_px
    , neg_inset_y_0
    , neg_inset_y_0_dot_5
    , neg_inset_y_1
    , neg_inset_y_10
    , neg_inset_y_11
    , neg_inset_y_12
    , neg_inset_y_14
    , neg_inset_y_16
    , neg_inset_y_1_dot_5
    , neg_inset_y_1over2
    , neg_inset_y_1over3
    , neg_inset_y_1over4
    , neg_inset_y_2
    , neg_inset_y_20
    , neg_inset_y_24
    , neg_inset_y_28
    , neg_inset_y_2_dot_5
    , neg_inset_y_2over3
    , neg_inset_y_2over4
    , neg_inset_y_3
    , neg_inset_y_32
    , neg_inset_y_36
    , neg_inset_y_3_dot_5
    , neg_inset_y_3over4
    , neg_inset_y_4
    , neg_inset_y_40
    , neg_inset_y_44
    , neg_inset_y_48
    , neg_inset_y_5
    , neg_inset_y_52
    , neg_inset_y_56
    , neg_inset_y_6
    , neg_inset_y_60
    , neg_inset_y_64
    , neg_inset_y_7
    , neg_inset_y_72
    , neg_inset_y_8
    , neg_inset_y_80
    , neg_inset_y_9
    , neg_inset_y_96
    , neg_inset_y_full
    , neg_inset_y_px
    , neg_left_0
    , neg_left_0_dot_5
    , neg_left_1
    , neg_left_10
    , neg_left_11
    , neg_left_12
    , neg_left_14
    , neg_left_16
    , neg_left_1_dot_5
    , neg_left_1over2
    , neg_left_1over3
    , neg_left_1over4
    , neg_left_2
    , neg_left_20
    , neg_left_24
    , neg_left_28
    , neg_left_2_dot_5
    , neg_left_2over3
    , neg_left_2over4
    , neg_left_3
    , neg_left_32
    , neg_left_36
    , neg_left_3_dot_5
    , neg_left_3over4
    , neg_left_4
    , neg_left_40
    , neg_left_44
    , neg_left_48
    , neg_left_5
    , neg_left_52
    , neg_left_56
    , neg_left_6
    , neg_left_60
    , neg_left_64
    , neg_left_7
    , neg_left_72
    , neg_left_8
    , neg_left_80
    , neg_left_9
    , neg_left_96
    , neg_left_full
    , neg_left_px
    , neg_m_0
    , neg_m_0_dot_5
    , neg_m_1
    , neg_m_10
    , neg_m_11
    , neg_m_12
    , neg_m_14
    , neg_m_16
    , neg_m_1_dot_5
    , neg_m_2
    , neg_m_20
    , neg_m_24
    , neg_m_28
    , neg_m_2_dot_5
    , neg_m_3
    , neg_m_32
    , neg_m_36
    , neg_m_3_dot_5
    , neg_m_4
    , neg_m_40
    , neg_m_44
    , neg_m_48
    , neg_m_5
    , neg_m_52
    , neg_m_56
    , neg_m_6
    , neg_m_60
    , neg_m_64
    , neg_m_7
    , neg_m_72
    , neg_m_8
    , neg_m_80
    , neg_m_9
    , neg_m_96
    , neg_m_px
    , neg_mb_0
    , neg_mb_0_dot_5
    , neg_mb_1
    , neg_mb_10
    , neg_mb_11
    , neg_mb_12
    , neg_mb_14
    , neg_mb_16
    , neg_mb_1_dot_5
    , neg_mb_2
    , neg_mb_20
    , neg_mb_24
    , neg_mb_28
    , neg_mb_2_dot_5
    , neg_mb_3
    , neg_mb_32
    , neg_mb_36
    , neg_mb_3_dot_5
    , neg_mb_4
    , neg_mb_40
    , neg_mb_44
    , neg_mb_48
    , neg_mb_5
    , neg_mb_52
    , neg_mb_56
    , neg_mb_6
    , neg_mb_60
    , neg_mb_64
    , neg_mb_7
    , neg_mb_72
    , neg_mb_8
    , neg_mb_80
    , neg_mb_9
    , neg_mb_96
    , neg_mb_px
    , neg_ml_0
    , neg_ml_0_dot_5
    , neg_ml_1
    , neg_ml_10
    , neg_ml_11
    , neg_ml_12
    , neg_ml_14
    , neg_ml_16
    , neg_ml_1_dot_5
    , neg_ml_2
    , neg_ml_20
    , neg_ml_24
    , neg_ml_28
    , neg_ml_2_dot_5
    , neg_ml_3
    , neg_ml_32
    , neg_ml_36
    , neg_ml_3_dot_5
    , neg_ml_4
    , neg_ml_40
    , neg_ml_44
    , neg_ml_48
    , neg_ml_5
    , neg_ml_52
    , neg_ml_56
    , neg_ml_6
    , neg_ml_60
    , neg_ml_64
    , neg_ml_7
    , neg_ml_72
    , neg_ml_8
    , neg_ml_80
    , neg_ml_9
    , neg_ml_96
    , neg_ml_px
    , neg_mr_0
    , neg_mr_0_dot_5
    , neg_mr_1
    , neg_mr_10
    , neg_mr_11
    , neg_mr_12
    , neg_mr_14
    , neg_mr_16
    , neg_mr_1_dot_5
    , neg_mr_2
    , neg_mr_20
    , neg_mr_24
    , neg_mr_28
    , neg_mr_2_dot_5
    , neg_mr_3
    , neg_mr_32
    , neg_mr_36
    , neg_mr_3_dot_5
    , neg_mr_4
    , neg_mr_40
    , neg_mr_44
    , neg_mr_48
    , neg_mr_5
    , neg_mr_52
    , neg_mr_56
    , neg_mr_6
    , neg_mr_60
    , neg_mr_64
    , neg_mr_7
    , neg_mr_72
    , neg_mr_8
    , neg_mr_80
    , neg_mr_9
    , neg_mr_96
    , neg_mr_px
    , neg_mt_0
    , neg_mt_0_dot_5
    , neg_mt_1
    , neg_mt_10
    , neg_mt_11
    , neg_mt_12
    , neg_mt_14
    , neg_mt_16
    , neg_mt_1_dot_5
    , neg_mt_2
    , neg_mt_20
    , neg_mt_24
    , neg_mt_28
    , neg_mt_2_dot_5
    , neg_mt_3
    , neg_mt_32
    , neg_mt_36
    , neg_mt_3_dot_5
    , neg_mt_4
    , neg_mt_40
    , neg_mt_44
    , neg_mt_48
    , neg_mt_5
    , neg_mt_52
    , neg_mt_56
    , neg_mt_6
    , neg_mt_60
    , neg_mt_64
    , neg_mt_7
    , neg_mt_72
    , neg_mt_8
    , neg_mt_80
    , neg_mt_9
    , neg_mt_96
    , neg_mt_px
    , neg_mx_0
    , neg_mx_0_dot_5
    , neg_mx_1
    , neg_mx_10
    , neg_mx_11
    , neg_mx_12
    , neg_mx_14
    , neg_mx_16
    , neg_mx_1_dot_5
    , neg_mx_2
    , neg_mx_20
    , neg_mx_24
    , neg_mx_28
    , neg_mx_2_dot_5
    , neg_mx_3
    , neg_mx_32
    , neg_mx_36
    , neg_mx_3_dot_5
    , neg_mx_4
    , neg_mx_40
    , neg_mx_44
    , neg_mx_48
    , neg_mx_5
    , neg_mx_52
    , neg_mx_56
    , neg_mx_6
    , neg_mx_60
    , neg_mx_64
    , neg_mx_7
    , neg_mx_72
    , neg_mx_8
    , neg_mx_80
    , neg_mx_9
    , neg_mx_96
    , neg_mx_px
    , neg_my_0
    , neg_my_0_dot_5
    , neg_my_1
    , neg_my_10
    , neg_my_11
    , neg_my_12
    , neg_my_14
    , neg_my_16
    , neg_my_1_dot_5
    , neg_my_2
    , neg_my_20
    , neg_my_24
    , neg_my_28
    , neg_my_2_dot_5
    , neg_my_3
    , neg_my_32
    , neg_my_36
    , neg_my_3_dot_5
    , neg_my_4
    , neg_my_40
    , neg_my_44
    , neg_my_48
    , neg_my_5
    , neg_my_52
    , neg_my_56
    , neg_my_6
    , neg_my_60
    , neg_my_64
    , neg_my_7
    , neg_my_72
    , neg_my_8
    , neg_my_80
    , neg_my_9
    , neg_my_96
    , neg_my_px
    , neg_order_1
    , neg_order_10
    , neg_order_11
    , neg_order_12
    , neg_order_2
    , neg_order_3
    , neg_order_4
    , neg_order_5
    , neg_order_6
    , neg_order_7
    , neg_order_8
    , neg_order_9
    , neg_order_first
    , neg_order_last
    , neg_order_none
    , neg_right_0
    , neg_right_0_dot_5
    , neg_right_1
    , neg_right_10
    , neg_right_11
    , neg_right_12
    , neg_right_14
    , neg_right_16
    , neg_right_1_dot_5
    , neg_right_1over2
    , neg_right_1over3
    , neg_right_1over4
    , neg_right_2
    , neg_right_20
    , neg_right_24
    , neg_right_28
    , neg_right_2_dot_5
    , neg_right_2over3
    , neg_right_2over4
    , neg_right_3
    , neg_right_32
    , neg_right_36
    , neg_right_3_dot_5
    , neg_right_3over4
    , neg_right_4
    , neg_right_40
    , neg_right_44
    , neg_right_48
    , neg_right_5
    , neg_right_52
    , neg_right_56
    , neg_right_6
    , neg_right_60
    , neg_right_64
    , neg_right_7
    , neg_right_72
    , neg_right_8
    , neg_right_80
    , neg_right_9
    , neg_right_96
    , neg_right_full
    , neg_right_px
    , neg_rotate_0
    , neg_rotate_1
    , neg_rotate_12
    , neg_rotate_180
    , neg_rotate_2
    , neg_rotate_3
    , neg_rotate_45
    , neg_rotate_6
    , neg_rotate_90
    , neg_scale_0
    , neg_scale_100
    , neg_scale_105
    , neg_scale_110
    , neg_scale_125
    , neg_scale_150
    , neg_scale_50
    , neg_scale_75
    , neg_scale_90
    , neg_scale_95
    , neg_scale_x_0
    , neg_scale_x_100
    , neg_scale_x_105
    , neg_scale_x_110
    , neg_scale_x_125
    , neg_scale_x_150
    , neg_scale_x_50
    , neg_scale_x_75
    , neg_scale_x_90
    , neg_scale_x_95
    , neg_scale_y_0
    , neg_scale_y_100
    , neg_scale_y_105
    , neg_scale_y_110
    , neg_scale_y_125
    , neg_scale_y_150
    , neg_scale_y_50
    , neg_scale_y_75
    , neg_scale_y_90
    , neg_scale_y_95
    , neg_scroll_m_0
    , neg_scroll_m_0_dot_5
    , neg_scroll_m_1
    , neg_scroll_m_10
    , neg_scroll_m_11
    , neg_scroll_m_12
    , neg_scroll_m_14
    , neg_scroll_m_16
    , neg_scroll_m_1_dot_5
    , neg_scroll_m_2
    , neg_scroll_m_20
    , neg_scroll_m_24
    , neg_scroll_m_28
    , neg_scroll_m_2_dot_5
    , neg_scroll_m_3
    , neg_scroll_m_32
    , neg_scroll_m_36
    , neg_scroll_m_3_dot_5
    , neg_scroll_m_4
    , neg_scroll_m_40
    , neg_scroll_m_44
    , neg_scroll_m_48
    , neg_scroll_m_5
    , neg_scroll_m_52
    , neg_scroll_m_56
    , neg_scroll_m_6
    , neg_scroll_m_60
    , neg_scroll_m_64
    , neg_scroll_m_7
    , neg_scroll_m_72
    , neg_scroll_m_8
    , neg_scroll_m_80
    , neg_scroll_m_9
    , neg_scroll_m_96
    , neg_scroll_m_px
    , neg_scroll_mb_0
    , neg_scroll_mb_0_dot_5
    , neg_scroll_mb_1
    , neg_scroll_mb_10
    , neg_scroll_mb_11
    , neg_scroll_mb_12
    , neg_scroll_mb_14
    , neg_scroll_mb_16
    , neg_scroll_mb_1_dot_5
    , neg_scroll_mb_2
    , neg_scroll_mb_20
    , neg_scroll_mb_24
    , neg_scroll_mb_28
    , neg_scroll_mb_2_dot_5
    , neg_scroll_mb_3
    , neg_scroll_mb_32
    , neg_scroll_mb_36
    , neg_scroll_mb_3_dot_5
    , neg_scroll_mb_4
    , neg_scroll_mb_40
    , neg_scroll_mb_44
    , neg_scroll_mb_48
    , neg_scroll_mb_5
    , neg_scroll_mb_52
    , neg_scroll_mb_56
    , neg_scroll_mb_6
    , neg_scroll_mb_60
    , neg_scroll_mb_64
    , neg_scroll_mb_7
    , neg_scroll_mb_72
    , neg_scroll_mb_8
    , neg_scroll_mb_80
    , neg_scroll_mb_9
    , neg_scroll_mb_96
    , neg_scroll_mb_px
    , neg_scroll_ml_0
    , neg_scroll_ml_0_dot_5
    , neg_scroll_ml_1
    , neg_scroll_ml_10
    , neg_scroll_ml_11
    , neg_scroll_ml_12
    , neg_scroll_ml_14
    , neg_scroll_ml_16
    , neg_scroll_ml_1_dot_5
    , neg_scroll_ml_2
    , neg_scroll_ml_20
    , neg_scroll_ml_24
    , neg_scroll_ml_28
    , neg_scroll_ml_2_dot_5
    , neg_scroll_ml_3
    , neg_scroll_ml_32
    , neg_scroll_ml_36
    , neg_scroll_ml_3_dot_5
    , neg_scroll_ml_4
    , neg_scroll_ml_40
    , neg_scroll_ml_44
    , neg_scroll_ml_48
    , neg_scroll_ml_5
    , neg_scroll_ml_52
    , neg_scroll_ml_56
    , neg_scroll_ml_6
    , neg_scroll_ml_60
    , neg_scroll_ml_64
    , neg_scroll_ml_7
    , neg_scroll_ml_72
    , neg_scroll_ml_8
    , neg_scroll_ml_80
    , neg_scroll_ml_9
    , neg_scroll_ml_96
    , neg_scroll_ml_px
    , neg_scroll_mr_0
    , neg_scroll_mr_0_dot_5
    , neg_scroll_mr_1
    , neg_scroll_mr_10
    , neg_scroll_mr_11
    , neg_scroll_mr_12
    , neg_scroll_mr_14
    , neg_scroll_mr_16
    , neg_scroll_mr_1_dot_5
    , neg_scroll_mr_2
    , neg_scroll_mr_20
    , neg_scroll_mr_24
    , neg_scroll_mr_28
    , neg_scroll_mr_2_dot_5
    , neg_scroll_mr_3
    , neg_scroll_mr_32
    , neg_scroll_mr_36
    , neg_scroll_mr_3_dot_5
    , neg_scroll_mr_4
    , neg_scroll_mr_40
    , neg_scroll_mr_44
    , neg_scroll_mr_48
    , neg_scroll_mr_5
    , neg_scroll_mr_52
    , neg_scroll_mr_56
    , neg_scroll_mr_6
    , neg_scroll_mr_60
    , neg_scroll_mr_64
    , neg_scroll_mr_7
    , neg_scroll_mr_72
    , neg_scroll_mr_8
    , neg_scroll_mr_80
    , neg_scroll_mr_9
    , neg_scroll_mr_96
    , neg_scroll_mr_px
    , neg_scroll_mt_0
    , neg_scroll_mt_0_dot_5
    , neg_scroll_mt_1
    , neg_scroll_mt_10
    , neg_scroll_mt_11
    , neg_scroll_mt_12
    , neg_scroll_mt_14
    , neg_scroll_mt_16
    , neg_scroll_mt_1_dot_5
    , neg_scroll_mt_2
    , neg_scroll_mt_20
    , neg_scroll_mt_24
    , neg_scroll_mt_28
    , neg_scroll_mt_2_dot_5
    , neg_scroll_mt_3
    , neg_scroll_mt_32
    , neg_scroll_mt_36
    , neg_scroll_mt_3_dot_5
    , neg_scroll_mt_4
    , neg_scroll_mt_40
    , neg_scroll_mt_44
    , neg_scroll_mt_48
    , neg_scroll_mt_5
    , neg_scroll_mt_52
    , neg_scroll_mt_56
    , neg_scroll_mt_6
    , neg_scroll_mt_60
    , neg_scroll_mt_64
    , neg_scroll_mt_7
    , neg_scroll_mt_72
    , neg_scroll_mt_8
    , neg_scroll_mt_80
    , neg_scroll_mt_9
    , neg_scroll_mt_96
    , neg_scroll_mt_px
    , neg_scroll_mx_0
    , neg_scroll_mx_0_dot_5
    , neg_scroll_mx_1
    , neg_scroll_mx_10
    , neg_scroll_mx_11
    , neg_scroll_mx_12
    , neg_scroll_mx_14
    , neg_scroll_mx_16
    , neg_scroll_mx_1_dot_5
    , neg_scroll_mx_2
    , neg_scroll_mx_20
    , neg_scroll_mx_24
    , neg_scroll_mx_28
    , neg_scroll_mx_2_dot_5
    , neg_scroll_mx_3
    , neg_scroll_mx_32
    , neg_scroll_mx_36
    , neg_scroll_mx_3_dot_5
    , neg_scroll_mx_4
    , neg_scroll_mx_40
    , neg_scroll_mx_44
    , neg_scroll_mx_48
    , neg_scroll_mx_5
    , neg_scroll_mx_52
    , neg_scroll_mx_56
    , neg_scroll_mx_6
    , neg_scroll_mx_60
    , neg_scroll_mx_64
    , neg_scroll_mx_7
    , neg_scroll_mx_72
    , neg_scroll_mx_8
    , neg_scroll_mx_80
    , neg_scroll_mx_9
    , neg_scroll_mx_96
    , neg_scroll_mx_px
    , neg_scroll_my_0
    , neg_scroll_my_0_dot_5
    , neg_scroll_my_1
    , neg_scroll_my_10
    , neg_scroll_my_11
    , neg_scroll_my_12
    , neg_scroll_my_14
    , neg_scroll_my_16
    , neg_scroll_my_1_dot_5
    , neg_scroll_my_2
    , neg_scroll_my_20
    , neg_scroll_my_24
    , neg_scroll_my_28
    , neg_scroll_my_2_dot_5
    , neg_scroll_my_3
    , neg_scroll_my_32
    , neg_scroll_my_36
    , neg_scroll_my_3_dot_5
    , neg_scroll_my_4
    , neg_scroll_my_40
    , neg_scroll_my_44
    , neg_scroll_my_48
    , neg_scroll_my_5
    , neg_scroll_my_52
    , neg_scroll_my_56
    , neg_scroll_my_6
    , neg_scroll_my_60
    , neg_scroll_my_64
    , neg_scroll_my_7
    , neg_scroll_my_72
    , neg_scroll_my_8
    , neg_scroll_my_80
    , neg_scroll_my_9
    , neg_scroll_my_96
    , neg_scroll_my_px
    , neg_skew_x_0
    , neg_skew_x_1
    , neg_skew_x_12
    , neg_skew_x_2
    , neg_skew_x_3
    , neg_skew_x_6
    , neg_skew_y_0
    , neg_skew_y_1
    , neg_skew_y_12
    , neg_skew_y_2
    , neg_skew_y_3
    , neg_skew_y_6
    , neg_space_x_0
    , neg_space_x_0_dot_5
    , neg_space_x_1
    , neg_space_x_10
    , neg_space_x_11
    , neg_space_x_12
    , neg_space_x_14
    , neg_space_x_16
    , neg_space_x_1_dot_5
    , neg_space_x_2
    , neg_space_x_20
    , neg_space_x_24
    , neg_space_x_28
    , neg_space_x_2_dot_5
    , neg_space_x_3
    , neg_space_x_32
    , neg_space_x_36
    , neg_space_x_3_dot_5
    , neg_space_x_4
    , neg_space_x_40
    , neg_space_x_44
    , neg_space_x_48
    , neg_space_x_5
    , neg_space_x_52
    , neg_space_x_56
    , neg_space_x_6
    , neg_space_x_60
    , neg_space_x_64
    , neg_space_x_7
    , neg_space_x_72
    , neg_space_x_8
    , neg_space_x_80
    , neg_space_x_9
    , neg_space_x_96
    , neg_space_x_px
    , neg_space_y_0
    , neg_space_y_0_dot_5
    , neg_space_y_1
    , neg_space_y_10
    , neg_space_y_11
    , neg_space_y_12
    , neg_space_y_14
    , neg_space_y_16
    , neg_space_y_1_dot_5
    , neg_space_y_2
    , neg_space_y_20
    , neg_space_y_24
    , neg_space_y_28
    , neg_space_y_2_dot_5
    , neg_space_y_3
    , neg_space_y_32
    , neg_space_y_36
    , neg_space_y_3_dot_5
    , neg_space_y_4
    , neg_space_y_40
    , neg_space_y_44
    , neg_space_y_48
    , neg_space_y_5
    , neg_space_y_52
    , neg_space_y_56
    , neg_space_y_6
    , neg_space_y_60
    , neg_space_y_64
    , neg_space_y_7
    , neg_space_y_72
    , neg_space_y_8
    , neg_space_y_80
    , neg_space_y_9
    , neg_space_y_96
    , neg_space_y_px
    , neg_top_0
    , neg_top_0_dot_5
    , neg_top_1
    , neg_top_10
    , neg_top_11
    , neg_top_12
    , neg_top_14
    , neg_top_16
    , neg_top_1_dot_5
    , neg_top_1over2
    , neg_top_1over3
    , neg_top_1over4
    , neg_top_2
    , neg_top_20
    , neg_top_24
    , neg_top_28
    , neg_top_2_dot_5
    , neg_top_2over3
    , neg_top_2over4
    , neg_top_3
    , neg_top_32
    , neg_top_36
    , neg_top_3_dot_5
    , neg_top_3over4
    , neg_top_4
    , neg_top_40
    , neg_top_44
    , neg_top_48
    , neg_top_5
    , neg_top_52
    , neg_top_56
    , neg_top_6
    , neg_top_60
    , neg_top_64
    , neg_top_7
    , neg_top_72
    , neg_top_8
    , neg_top_80
    , neg_top_9
    , neg_top_96
    , neg_top_full
    , neg_top_px
    , neg_tracking_normal
    , neg_tracking_tight
    , neg_tracking_tighter
    , neg_tracking_wide
    , neg_tracking_wider
    , neg_tracking_widest
    , neg_translate_x_0
    , neg_translate_x_0_dot_5
    , neg_translate_x_1
    , neg_translate_x_10
    , neg_translate_x_11
    , neg_translate_x_12
    , neg_translate_x_14
    , neg_translate_x_16
    , neg_translate_x_1_dot_5
    , neg_translate_x_1over2
    , neg_translate_x_1over3
    , neg_translate_x_1over4
    , neg_translate_x_2
    , neg_translate_x_20
    , neg_translate_x_24
    , neg_translate_x_28
    , neg_translate_x_2_dot_5
    , neg_translate_x_2over3
    , neg_translate_x_2over4
    , neg_translate_x_3
    , neg_translate_x_32
    , neg_translate_x_36
    , neg_translate_x_3_dot_5
    , neg_translate_x_3over4
    , neg_translate_x_4
    , neg_translate_x_40
    , neg_translate_x_44
    , neg_translate_x_48
    , neg_translate_x_5
    , neg_translate_x_52
    , neg_translate_x_56
    , neg_translate_x_6
    , neg_translate_x_60
    , neg_translate_x_64
    , neg_translate_x_7
    , neg_translate_x_72
    , neg_translate_x_8
    , neg_translate_x_80
    , neg_translate_x_9
    , neg_translate_x_96
    , neg_translate_x_full
    , neg_translate_x_px
    , neg_translate_y_0
    , neg_translate_y_0_dot_5
    , neg_translate_y_1
    , neg_translate_y_10
    , neg_translate_y_11
    , neg_translate_y_12
    , neg_translate_y_14
    , neg_translate_y_16
    , neg_translate_y_1_dot_5
    , neg_translate_y_1over2
    , neg_translate_y_1over3
    , neg_translate_y_1over4
    , neg_translate_y_2
    , neg_translate_y_20
    , neg_translate_y_24
    , neg_translate_y_28
    , neg_translate_y_2_dot_5
    , neg_translate_y_2over3
    , neg_translate_y_2over4
    , neg_translate_y_3
    , neg_translate_y_32
    , neg_translate_y_36
    , neg_translate_y_3_dot_5
    , neg_translate_y_3over4
    , neg_translate_y_4
    , neg_translate_y_40
    , neg_translate_y_44
    , neg_translate_y_48
    , neg_translate_y_5
    , neg_translate_y_52
    , neg_translate_y_56
    , neg_translate_y_6
    , neg_translate_y_60
    , neg_translate_y_64
    , neg_translate_y_7
    , neg_translate_y_72
    , neg_translate_y_8
    , neg_translate_y_80
    , neg_translate_y_9
    , neg_translate_y_96
    , neg_translate_y_full
    , neg_translate_y_px
    , neg_z_0
    , neg_z_10
    , neg_z_20
    , neg_z_30
    , neg_z_40
    , neg_z_50
    , no_underline
    , normal_case
    , normal_nums
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
    , oldstyle_nums
    , opacity_0
    , opacity_10
    , opacity_100
    , opacity_20
    , opacity_25
    , opacity_30
    , opacity_40
    , opacity_5
    , opacity_50
    , opacity_60
    , opacity_70
    , opacity_75
    , opacity_80
    , opacity_90
    , opacity_95
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
    , ordinal
    , origin_bottom
    , origin_bottom_left
    , origin_bottom_right
    , origin_center
    , origin_left
    , origin_right
    , origin_top
    , origin_top_left
    , origin_top_right
    , outline
    , outlineWithColor
    , outline_0
    , outline_1
    , outline_2
    , outline_4
    , outline_8
    , outline_dashed
    , outline_dotted
    , outline_double
    , outline_hidden
    , outline_none
    , outline_offset_0
    , outline_offset_1
    , outline_offset_2
    , outline_offset_4
    , outline_offset_8
    , overflow_auto
    , overflow_clip
    , overflow_ellipsis
    , overflow_hidden
    , overflow_scroll
    , overflow_visible
    , overflow_x_auto
    , overflow_x_clip
    , overflow_x_hidden
    , overflow_x_scroll
    , overflow_x_visible
    , overflow_y_auto
    , overflow_y_clip
    , overflow_y_hidden
    , overflow_y_scroll
    , overflow_y_visible
    , overline
    , overscroll_auto
    , overscroll_contain
    , overscroll_none
    , overscroll_x_auto
    , overscroll_x_contain
    , overscroll_x_none
    , overscroll_y_auto
    , overscroll_y_contain
    , overscroll_y_none
    , p_0
    , p_0_dot_5
    , p_1
    , p_10
    , p_11
    , p_12
    , p_14
    , p_16
    , p_1_dot_5
    , p_2
    , p_20
    , p_24
    , p_28
    , p_2_dot_5
    , p_3
    , p_32
    , p_36
    , p_3_dot_5
    , p_4
    , p_40
    , p_44
    , p_48
    , p_5
    , p_52
    , p_56
    , p_6
    , p_60
    , p_64
    , p_7
    , p_72
    , p_8
    , p_80
    , p_9
    , p_96
    , p_px
    , pb_0
    , pb_0_dot_5
    , pb_1
    , pb_10
    , pb_11
    , pb_12
    , pb_14
    , pb_16
    , pb_1_dot_5
    , pb_2
    , pb_20
    , pb_24
    , pb_28
    , pb_2_dot_5
    , pb_3
    , pb_32
    , pb_36
    , pb_3_dot_5
    , pb_4
    , pb_40
    , pb_44
    , pb_48
    , pb_5
    , pb_52
    , pb_56
    , pb_6
    , pb_60
    , pb_64
    , pb_7
    , pb_72
    , pb_8
    , pb_80
    , pb_9
    , pb_96
    , pb_px
    , pl_0
    , pl_0_dot_5
    , pl_1
    , pl_10
    , pl_11
    , pl_12
    , pl_14
    , pl_16
    , pl_1_dot_5
    , pl_2
    , pl_20
    , pl_24
    , pl_28
    , pl_2_dot_5
    , pl_3
    , pl_32
    , pl_36
    , pl_3_dot_5
    , pl_4
    , pl_40
    , pl_44
    , pl_48
    , pl_5
    , pl_52
    , pl_56
    , pl_6
    , pl_60
    , pl_64
    , pl_7
    , pl_72
    , pl_8
    , pl_80
    , pl_9
    , pl_96
    , pl_px
    , place_content_around
    , place_content_between
    , place_content_center
    , place_content_end
    , place_content_evenly
    , place_content_start
    , place_content_stretch
    , place_items_center
    , place_items_end
    , place_items_start
    , place_items_stretch
    , place_self_auto
    , place_self_center
    , place_self_end
    , place_self_start
    , place_self_stretch
    , placeholderWithColor
    , placeholder_opacity_0
    , placeholder_opacity_10
    , placeholder_opacity_100
    , placeholder_opacity_20
    , placeholder_opacity_25
    , placeholder_opacity_30
    , placeholder_opacity_40
    , placeholder_opacity_5
    , placeholder_opacity_50
    , placeholder_opacity_60
    , placeholder_opacity_70
    , placeholder_opacity_75
    , placeholder_opacity_80
    , placeholder_opacity_90
    , placeholder_opacity_95
    , pointer_events_auto
    , pointer_events_none
    , pr_0
    , pr_0_dot_5
    , pr_1
    , pr_10
    , pr_11
    , pr_12
    , pr_14
    , pr_16
    , pr_1_dot_5
    , pr_2
    , pr_20
    , pr_24
    , pr_28
    , pr_2_dot_5
    , pr_3
    , pr_32
    , pr_36
    , pr_3_dot_5
    , pr_4
    , pr_40
    , pr_44
    , pr_48
    , pr_5
    , pr_52
    , pr_56
    , pr_6
    , pr_60
    , pr_64
    , pr_7
    , pr_72
    , pr_8
    , pr_80
    , pr_9
    , pr_96
    , pr_px
    , proportional_nums
    , prose
    , prose_2xl
    , prose_amber
    , prose_base
    , prose_blue
    , prose_cyan
    , prose_emerald
    , prose_fuchsia
    , prose_gray
    , prose_green
    , prose_indigo
    , prose_invert
    , prose_lg
    , prose_lime
    , prose_neutral
    , prose_orange
    , prose_pink
    , prose_purple
    , prose_red
    , prose_rose
    , prose_sky
    , prose_slate
    , prose_sm
    , prose_stone
    , prose_teal
    , prose_violet
    , prose_xl
    , prose_yellow
    , prose_zinc
    , pt_0
    , pt_0_dot_5
    , pt_1
    , pt_10
    , pt_11
    , pt_12
    , pt_14
    , pt_16
    , pt_1_dot_5
    , pt_2
    , pt_20
    , pt_24
    , pt_28
    , pt_2_dot_5
    , pt_3
    , pt_32
    , pt_36
    , pt_3_dot_5
    , pt_4
    , pt_40
    , pt_44
    , pt_48
    , pt_5
    , pt_52
    , pt_56
    , pt_6
    , pt_60
    , pt_64
    , pt_7
    , pt_72
    , pt_8
    , pt_80
    , pt_9
    , pt_96
    , pt_px
    , px_0
    , px_0_dot_5
    , px_1
    , px_10
    , px_11
    , px_12
    , px_14
    , px_16
    , px_1_dot_5
    , px_2
    , px_20
    , px_24
    , px_28
    , px_2_dot_5
    , px_3
    , px_32
    , px_36
    , px_3_dot_5
    , px_4
    , px_40
    , px_44
    , px_48
    , px_5
    , px_52
    , px_56
    , px_6
    , px_60
    , px_64
    , px_7
    , px_72
    , px_8
    , px_80
    , px_9
    , px_96
    , px_px
    , py_0
    , py_0_dot_5
    , py_1
    , py_10
    , py_11
    , py_12
    , py_14
    , py_16
    , py_1_dot_5
    , py_2
    , py_20
    , py_24
    , py_28
    , py_2_dot_5
    , py_3
    , py_32
    , py_36
    , py_3_dot_5
    , py_4
    , py_40
    , py_44
    , py_48
    , py_5
    , py_52
    , py_56
    , py_6
    , py_60
    , py_64
    , py_7
    , py_72
    , py_8
    , py_80
    , py_9
    , py_96
    , py_px
    , relative
    , resize
    , resize_none
    , resize_x
    , resize_y
    , right_0
    , right_0_dot_5
    , right_1
    , right_10
    , right_11
    , right_12
    , right_14
    , right_16
    , right_1_dot_5
    , right_1over2
    , right_1over3
    , right_1over4
    , right_2
    , right_20
    , right_24
    , right_28
    , right_2_dot_5
    , right_2over3
    , right_2over4
    , right_3
    , right_32
    , right_36
    , right_3_dot_5
    , right_3over4
    , right_4
    , right_40
    , right_44
    , right_48
    , right_5
    , right_52
    , right_56
    , right_6
    , right_60
    , right_64
    , right_7
    , right_72
    , right_8
    , right_80
    , right_9
    , right_96
    , right_auto
    , right_full
    , right_px
    , ring
    , ringWithColor
    , ring_0
    , ring_1
    , ring_2
    , ring_4
    , ring_8
    , ring_inset
    , ring_offsetWithColor
    , ring_offset_0
    , ring_offset_1
    , ring_offset_2
    , ring_offset_4
    , ring_offset_8
    , ring_opacity_0
    , ring_opacity_10
    , ring_opacity_100
    , ring_opacity_20
    , ring_opacity_25
    , ring_opacity_30
    , ring_opacity_40
    , ring_opacity_5
    , ring_opacity_50
    , ring_opacity_60
    , ring_opacity_70
    , ring_opacity_75
    , ring_opacity_80
    , ring_opacity_90
    , ring_opacity_95
    , rotate_0
    , rotate_1
    , rotate_12
    , rotate_180
    , rotate_2
    , rotate_3
    , rotate_45
    , rotate_6
    , rotate_90
    , rounded
    , rounded_2xl
    , rounded_3xl
    , rounded_b
    , rounded_b_2xl
    , rounded_b_3xl
    , rounded_b_full
    , rounded_b_lg
    , rounded_b_md
    , rounded_b_none
    , rounded_b_sm
    , rounded_b_xl
    , rounded_bl
    , rounded_bl_2xl
    , rounded_bl_3xl
    , rounded_bl_full
    , rounded_bl_lg
    , rounded_bl_md
    , rounded_bl_none
    , rounded_bl_sm
    , rounded_bl_xl
    , rounded_br
    , rounded_br_2xl
    , rounded_br_3xl
    , rounded_br_full
    , rounded_br_lg
    , rounded_br_md
    , rounded_br_none
    , rounded_br_sm
    , rounded_br_xl
    , rounded_full
    , rounded_l
    , rounded_l_2xl
    , rounded_l_3xl
    , rounded_l_full
    , rounded_l_lg
    , rounded_l_md
    , rounded_l_none
    , rounded_l_sm
    , rounded_l_xl
    , rounded_lg
    , rounded_md
    , rounded_none
    , rounded_r
    , rounded_r_2xl
    , rounded_r_3xl
    , rounded_r_full
    , rounded_r_lg
    , rounded_r_md
    , rounded_r_none
    , rounded_r_sm
    , rounded_r_xl
    , rounded_sm
    , rounded_t
    , rounded_t_2xl
    , rounded_t_3xl
    , rounded_t_full
    , rounded_t_lg
    , rounded_t_md
    , rounded_t_none
    , rounded_t_sm
    , rounded_t_xl
    , rounded_tl
    , rounded_tl_2xl
    , rounded_tl_3xl
    , rounded_tl_full
    , rounded_tl_lg
    , rounded_tl_md
    , rounded_tl_none
    , rounded_tl_sm
    , rounded_tl_xl
    , rounded_tr
    , rounded_tr_2xl
    , rounded_tr_3xl
    , rounded_tr_full
    , rounded_tr_lg
    , rounded_tr_md
    , rounded_tr_none
    , rounded_tr_sm
    , rounded_tr_xl
    , rounded_xl
    , row_auto
    , row_end_1
    , row_end_2
    , row_end_3
    , row_end_4
    , row_end_5
    , row_end_6
    , row_end_7
    , row_end_auto
    , row_span_1
    , row_span_2
    , row_span_3
    , row_span_4
    , row_span_5
    , row_span_6
    , row_span_full
    , row_start_1
    , row_start_2
    , row_start_3
    , row_start_4
    , row_start_5
    , row_start_6
    , row_start_7
    , row_start_auto
    , saturate_0
    , saturate_100
    , saturate_150
    , saturate_200
    , saturate_50
    , scale_0
    , scale_100
    , scale_105
    , scale_110
    , scale_125
    , scale_150
    , scale_50
    , scale_75
    , scale_90
    , scale_95
    , scale_x_0
    , scale_x_100
    , scale_x_105
    , scale_x_110
    , scale_x_125
    , scale_x_150
    , scale_x_50
    , scale_x_75
    , scale_x_90
    , scale_x_95
    , scale_y_0
    , scale_y_100
    , scale_y_105
    , scale_y_110
    , scale_y_125
    , scale_y_150
    , scale_y_50
    , scale_y_75
    , scale_y_90
    , scale_y_95
    , scroll_auto
    , scroll_m_0
    , scroll_m_0_dot_5
    , scroll_m_1
    , scroll_m_10
    , scroll_m_11
    , scroll_m_12
    , scroll_m_14
    , scroll_m_16
    , scroll_m_1_dot_5
    , scroll_m_2
    , scroll_m_20
    , scroll_m_24
    , scroll_m_28
    , scroll_m_2_dot_5
    , scroll_m_3
    , scroll_m_32
    , scroll_m_36
    , scroll_m_3_dot_5
    , scroll_m_4
    , scroll_m_40
    , scroll_m_44
    , scroll_m_48
    , scroll_m_5
    , scroll_m_52
    , scroll_m_56
    , scroll_m_6
    , scroll_m_60
    , scroll_m_64
    , scroll_m_7
    , scroll_m_72
    , scroll_m_8
    , scroll_m_80
    , scroll_m_9
    , scroll_m_96
    , scroll_m_px
    , scroll_mb_0
    , scroll_mb_0_dot_5
    , scroll_mb_1
    , scroll_mb_10
    , scroll_mb_11
    , scroll_mb_12
    , scroll_mb_14
    , scroll_mb_16
    , scroll_mb_1_dot_5
    , scroll_mb_2
    , scroll_mb_20
    , scroll_mb_24
    , scroll_mb_28
    , scroll_mb_2_dot_5
    , scroll_mb_3
    , scroll_mb_32
    , scroll_mb_36
    , scroll_mb_3_dot_5
    , scroll_mb_4
    , scroll_mb_40
    , scroll_mb_44
    , scroll_mb_48
    , scroll_mb_5
    , scroll_mb_52
    , scroll_mb_56
    , scroll_mb_6
    , scroll_mb_60
    , scroll_mb_64
    , scroll_mb_7
    , scroll_mb_72
    , scroll_mb_8
    , scroll_mb_80
    , scroll_mb_9
    , scroll_mb_96
    , scroll_mb_px
    , scroll_ml_0
    , scroll_ml_0_dot_5
    , scroll_ml_1
    , scroll_ml_10
    , scroll_ml_11
    , scroll_ml_12
    , scroll_ml_14
    , scroll_ml_16
    , scroll_ml_1_dot_5
    , scroll_ml_2
    , scroll_ml_20
    , scroll_ml_24
    , scroll_ml_28
    , scroll_ml_2_dot_5
    , scroll_ml_3
    , scroll_ml_32
    , scroll_ml_36
    , scroll_ml_3_dot_5
    , scroll_ml_4
    , scroll_ml_40
    , scroll_ml_44
    , scroll_ml_48
    , scroll_ml_5
    , scroll_ml_52
    , scroll_ml_56
    , scroll_ml_6
    , scroll_ml_60
    , scroll_ml_64
    , scroll_ml_7
    , scroll_ml_72
    , scroll_ml_8
    , scroll_ml_80
    , scroll_ml_9
    , scroll_ml_96
    , scroll_ml_px
    , scroll_mr_0
    , scroll_mr_0_dot_5
    , scroll_mr_1
    , scroll_mr_10
    , scroll_mr_11
    , scroll_mr_12
    , scroll_mr_14
    , scroll_mr_16
    , scroll_mr_1_dot_5
    , scroll_mr_2
    , scroll_mr_20
    , scroll_mr_24
    , scroll_mr_28
    , scroll_mr_2_dot_5
    , scroll_mr_3
    , scroll_mr_32
    , scroll_mr_36
    , scroll_mr_3_dot_5
    , scroll_mr_4
    , scroll_mr_40
    , scroll_mr_44
    , scroll_mr_48
    , scroll_mr_5
    , scroll_mr_52
    , scroll_mr_56
    , scroll_mr_6
    , scroll_mr_60
    , scroll_mr_64
    , scroll_mr_7
    , scroll_mr_72
    , scroll_mr_8
    , scroll_mr_80
    , scroll_mr_9
    , scroll_mr_96
    , scroll_mr_px
    , scroll_mt_0
    , scroll_mt_0_dot_5
    , scroll_mt_1
    , scroll_mt_10
    , scroll_mt_11
    , scroll_mt_12
    , scroll_mt_14
    , scroll_mt_16
    , scroll_mt_1_dot_5
    , scroll_mt_2
    , scroll_mt_20
    , scroll_mt_24
    , scroll_mt_28
    , scroll_mt_2_dot_5
    , scroll_mt_3
    , scroll_mt_32
    , scroll_mt_36
    , scroll_mt_3_dot_5
    , scroll_mt_4
    , scroll_mt_40
    , scroll_mt_44
    , scroll_mt_48
    , scroll_mt_5
    , scroll_mt_52
    , scroll_mt_56
    , scroll_mt_6
    , scroll_mt_60
    , scroll_mt_64
    , scroll_mt_7
    , scroll_mt_72
    , scroll_mt_8
    , scroll_mt_80
    , scroll_mt_9
    , scroll_mt_96
    , scroll_mt_px
    , scroll_mx_0
    , scroll_mx_0_dot_5
    , scroll_mx_1
    , scroll_mx_10
    , scroll_mx_11
    , scroll_mx_12
    , scroll_mx_14
    , scroll_mx_16
    , scroll_mx_1_dot_5
    , scroll_mx_2
    , scroll_mx_20
    , scroll_mx_24
    , scroll_mx_28
    , scroll_mx_2_dot_5
    , scroll_mx_3
    , scroll_mx_32
    , scroll_mx_36
    , scroll_mx_3_dot_5
    , scroll_mx_4
    , scroll_mx_40
    , scroll_mx_44
    , scroll_mx_48
    , scroll_mx_5
    , scroll_mx_52
    , scroll_mx_56
    , scroll_mx_6
    , scroll_mx_60
    , scroll_mx_64
    , scroll_mx_7
    , scroll_mx_72
    , scroll_mx_8
    , scroll_mx_80
    , scroll_mx_9
    , scroll_mx_96
    , scroll_mx_px
    , scroll_my_0
    , scroll_my_0_dot_5
    , scroll_my_1
    , scroll_my_10
    , scroll_my_11
    , scroll_my_12
    , scroll_my_14
    , scroll_my_16
    , scroll_my_1_dot_5
    , scroll_my_2
    , scroll_my_20
    , scroll_my_24
    , scroll_my_28
    , scroll_my_2_dot_5
    , scroll_my_3
    , scroll_my_32
    , scroll_my_36
    , scroll_my_3_dot_5
    , scroll_my_4
    , scroll_my_40
    , scroll_my_44
    , scroll_my_48
    , scroll_my_5
    , scroll_my_52
    , scroll_my_56
    , scroll_my_6
    , scroll_my_60
    , scroll_my_64
    , scroll_my_7
    , scroll_my_72
    , scroll_my_8
    , scroll_my_80
    , scroll_my_9
    , scroll_my_96
    , scroll_my_px
    , scroll_p_0
    , scroll_p_0_dot_5
    , scroll_p_1
    , scroll_p_10
    , scroll_p_11
    , scroll_p_12
    , scroll_p_14
    , scroll_p_16
    , scroll_p_1_dot_5
    , scroll_p_2
    , scroll_p_20
    , scroll_p_24
    , scroll_p_28
    , scroll_p_2_dot_5
    , scroll_p_3
    , scroll_p_32
    , scroll_p_36
    , scroll_p_3_dot_5
    , scroll_p_4
    , scroll_p_40
    , scroll_p_44
    , scroll_p_48
    , scroll_p_5
    , scroll_p_52
    , scroll_p_56
    , scroll_p_6
    , scroll_p_60
    , scroll_p_64
    , scroll_p_7
    , scroll_p_72
    , scroll_p_8
    , scroll_p_80
    , scroll_p_9
    , scroll_p_96
    , scroll_p_px
    , scroll_pb_0
    , scroll_pb_0_dot_5
    , scroll_pb_1
    , scroll_pb_10
    , scroll_pb_11
    , scroll_pb_12
    , scroll_pb_14
    , scroll_pb_16
    , scroll_pb_1_dot_5
    , scroll_pb_2
    , scroll_pb_20
    , scroll_pb_24
    , scroll_pb_28
    , scroll_pb_2_dot_5
    , scroll_pb_3
    , scroll_pb_32
    , scroll_pb_36
    , scroll_pb_3_dot_5
    , scroll_pb_4
    , scroll_pb_40
    , scroll_pb_44
    , scroll_pb_48
    , scroll_pb_5
    , scroll_pb_52
    , scroll_pb_56
    , scroll_pb_6
    , scroll_pb_60
    , scroll_pb_64
    , scroll_pb_7
    , scroll_pb_72
    , scroll_pb_8
    , scroll_pb_80
    , scroll_pb_9
    , scroll_pb_96
    , scroll_pb_px
    , scroll_pl_0
    , scroll_pl_0_dot_5
    , scroll_pl_1
    , scroll_pl_10
    , scroll_pl_11
    , scroll_pl_12
    , scroll_pl_14
    , scroll_pl_16
    , scroll_pl_1_dot_5
    , scroll_pl_2
    , scroll_pl_20
    , scroll_pl_24
    , scroll_pl_28
    , scroll_pl_2_dot_5
    , scroll_pl_3
    , scroll_pl_32
    , scroll_pl_36
    , scroll_pl_3_dot_5
    , scroll_pl_4
    , scroll_pl_40
    , scroll_pl_44
    , scroll_pl_48
    , scroll_pl_5
    , scroll_pl_52
    , scroll_pl_56
    , scroll_pl_6
    , scroll_pl_60
    , scroll_pl_64
    , scroll_pl_7
    , scroll_pl_72
    , scroll_pl_8
    , scroll_pl_80
    , scroll_pl_9
    , scroll_pl_96
    , scroll_pl_px
    , scroll_pr_0
    , scroll_pr_0_dot_5
    , scroll_pr_1
    , scroll_pr_10
    , scroll_pr_11
    , scroll_pr_12
    , scroll_pr_14
    , scroll_pr_16
    , scroll_pr_1_dot_5
    , scroll_pr_2
    , scroll_pr_20
    , scroll_pr_24
    , scroll_pr_28
    , scroll_pr_2_dot_5
    , scroll_pr_3
    , scroll_pr_32
    , scroll_pr_36
    , scroll_pr_3_dot_5
    , scroll_pr_4
    , scroll_pr_40
    , scroll_pr_44
    , scroll_pr_48
    , scroll_pr_5
    , scroll_pr_52
    , scroll_pr_56
    , scroll_pr_6
    , scroll_pr_60
    , scroll_pr_64
    , scroll_pr_7
    , scroll_pr_72
    , scroll_pr_8
    , scroll_pr_80
    , scroll_pr_9
    , scroll_pr_96
    , scroll_pr_px
    , scroll_pt_0
    , scroll_pt_0_dot_5
    , scroll_pt_1
    , scroll_pt_10
    , scroll_pt_11
    , scroll_pt_12
    , scroll_pt_14
    , scroll_pt_16
    , scroll_pt_1_dot_5
    , scroll_pt_2
    , scroll_pt_20
    , scroll_pt_24
    , scroll_pt_28
    , scroll_pt_2_dot_5
    , scroll_pt_3
    , scroll_pt_32
    , scroll_pt_36
    , scroll_pt_3_dot_5
    , scroll_pt_4
    , scroll_pt_40
    , scroll_pt_44
    , scroll_pt_48
    , scroll_pt_5
    , scroll_pt_52
    , scroll_pt_56
    , scroll_pt_6
    , scroll_pt_60
    , scroll_pt_64
    , scroll_pt_7
    , scroll_pt_72
    , scroll_pt_8
    , scroll_pt_80
    , scroll_pt_9
    , scroll_pt_96
    , scroll_pt_px
    , scroll_px_0
    , scroll_px_0_dot_5
    , scroll_px_1
    , scroll_px_10
    , scroll_px_11
    , scroll_px_12
    , scroll_px_14
    , scroll_px_16
    , scroll_px_1_dot_5
    , scroll_px_2
    , scroll_px_20
    , scroll_px_24
    , scroll_px_28
    , scroll_px_2_dot_5
    , scroll_px_3
    , scroll_px_32
    , scroll_px_36
    , scroll_px_3_dot_5
    , scroll_px_4
    , scroll_px_40
    , scroll_px_44
    , scroll_px_48
    , scroll_px_5
    , scroll_px_52
    , scroll_px_56
    , scroll_px_6
    , scroll_px_60
    , scroll_px_64
    , scroll_px_7
    , scroll_px_72
    , scroll_px_8
    , scroll_px_80
    , scroll_px_9
    , scroll_px_96
    , scroll_px_px
    , scroll_py_0
    , scroll_py_0_dot_5
    , scroll_py_1
    , scroll_py_10
    , scroll_py_11
    , scroll_py_12
    , scroll_py_14
    , scroll_py_16
    , scroll_py_1_dot_5
    , scroll_py_2
    , scroll_py_20
    , scroll_py_24
    , scroll_py_28
    , scroll_py_2_dot_5
    , scroll_py_3
    , scroll_py_32
    , scroll_py_36
    , scroll_py_3_dot_5
    , scroll_py_4
    , scroll_py_40
    , scroll_py_44
    , scroll_py_48
    , scroll_py_5
    , scroll_py_52
    , scroll_py_56
    , scroll_py_6
    , scroll_py_60
    , scroll_py_64
    , scroll_py_7
    , scroll_py_72
    , scroll_py_8
    , scroll_py_80
    , scroll_py_9
    , scroll_py_96
    , scroll_py_px
    , scroll_smooth
    , select_all
    , select_auto
    , select_none
    , select_text
    , self_auto
    , self_baseline
    , self_center
    , self_end
    , self_start
    , self_stretch
    , sepia
    , sepia_0
    , shadow
    , shadowWithColor
    , shadow_2xl
    , shadow_inner
    , shadow_lg
    , shadow_md
    , shadow_none
    , shadow_sm
    , shadow_xl
    , shrink
    , shrink_0
    , skew_x_0
    , skew_x_1
    , skew_x_12
    , skew_x_2
    , skew_x_3
    , skew_x_6
    , skew_y_0
    , skew_y_1
    , skew_y_12
    , skew_y_2
    , skew_y_3
    , skew_y_6
    , slashed_zero
    , snap_align_none
    , snap_always
    , snap_both
    , snap_center
    , snap_end
    , snap_mandatory
    , snap_none
    , snap_normal
    , snap_proximity
    , snap_start
    , snap_x
    , snap_y
    , space_x_0
    , space_x_0_dot_5
    , space_x_1
    , space_x_10
    , space_x_11
    , space_x_12
    , space_x_14
    , space_x_16
    , space_x_1_dot_5
    , space_x_2
    , space_x_20
    , space_x_24
    , space_x_28
    , space_x_2_dot_5
    , space_x_3
    , space_x_32
    , space_x_36
    , space_x_3_dot_5
    , space_x_4
    , space_x_40
    , space_x_44
    , space_x_48
    , space_x_5
    , space_x_52
    , space_x_56
    , space_x_6
    , space_x_60
    , space_x_64
    , space_x_7
    , space_x_72
    , space_x_8
    , space_x_80
    , space_x_9
    , space_x_96
    , space_x_px
    , space_x_reverse
    , space_y_0
    , space_y_0_dot_5
    , space_y_1
    , space_y_10
    , space_y_11
    , space_y_12
    , space_y_14
    , space_y_16
    , space_y_1_dot_5
    , space_y_2
    , space_y_20
    , space_y_24
    , space_y_28
    , space_y_2_dot_5
    , space_y_3
    , space_y_32
    , space_y_36
    , space_y_3_dot_5
    , space_y_4
    , space_y_40
    , space_y_44
    , space_y_48
    , space_y_5
    , space_y_52
    , space_y_56
    , space_y_6
    , space_y_60
    , space_y_64
    , space_y_7
    , space_y_72
    , space_y_8
    , space_y_80
    , space_y_9
    , space_y_96
    , space_y_px
    , space_y_reverse
    , sr_only
    , stacked_fractions
    , static
    , sticky
    , strokeWithColor
    , stroke_0
    , stroke_1
    , stroke_2
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
    , tabular_nums
    , textWithColor
    , text_2xl
    , text_3xl
    , text_4xl
    , text_5xl
    , text_6xl
    , text_7xl
    , text_8xl
    , text_9xl
    , text_base
    , text_center
    , text_clip
    , text_ellipsis
    , text_end
    , text_justify
    , text_left
    , text_lg
    , text_opacity_0
    , text_opacity_10
    , text_opacity_100
    , text_opacity_20
    , text_opacity_25
    , text_opacity_30
    , text_opacity_40
    , text_opacity_5
    , text_opacity_50
    , text_opacity_60
    , text_opacity_70
    , text_opacity_75
    , text_opacity_80
    , text_opacity_90
    , text_opacity_95
    , text_right
    , text_sm
    , text_start
    , text_xl
    , text_xs
    , toWithColor
    , top_0
    , top_0_dot_5
    , top_1
    , top_10
    , top_11
    , top_12
    , top_14
    , top_16
    , top_1_dot_5
    , top_1over2
    , top_1over3
    , top_1over4
    , top_2
    , top_20
    , top_24
    , top_28
    , top_2_dot_5
    , top_2over3
    , top_2over4
    , top_3
    , top_32
    , top_36
    , top_3_dot_5
    , top_3over4
    , top_4
    , top_40
    , top_44
    , top_48
    , top_5
    , top_52
    , top_56
    , top_6
    , top_60
    , top_64
    , top_7
    , top_72
    , top_8
    , top_80
    , top_9
    , top_96
    , top_auto
    , top_full
    , top_px
    , touch_auto
    , touch_manipulation
    , touch_none
    , touch_pan_down
    , touch_pan_left
    , touch_pan_right
    , touch_pan_up
    , touch_pan_x
    , touch_pan_y
    , touch_pinch_zoom
    , tracking_normal
    , tracking_tight
    , tracking_tighter
    , tracking_wide
    , tracking_wider
    , tracking_widest
    , transform
    , transform_cpu
    , transform_gpu
    , transform_none
    , transition
    , transition_all
    , transition_colors
    , transition_none
    , transition_opacity
    , transition_shadow
    , transition_transform
    , translate_x_0
    , translate_x_0_dot_5
    , translate_x_1
    , translate_x_10
    , translate_x_11
    , translate_x_12
    , translate_x_14
    , translate_x_16
    , translate_x_1_dot_5
    , translate_x_1over2
    , translate_x_1over3
    , translate_x_1over4
    , translate_x_2
    , translate_x_20
    , translate_x_24
    , translate_x_28
    , translate_x_2_dot_5
    , translate_x_2over3
    , translate_x_2over4
    , translate_x_3
    , translate_x_32
    , translate_x_36
    , translate_x_3_dot_5
    , translate_x_3over4
    , translate_x_4
    , translate_x_40
    , translate_x_44
    , translate_x_48
    , translate_x_5
    , translate_x_52
    , translate_x_56
    , translate_x_6
    , translate_x_60
    , translate_x_64
    , translate_x_7
    , translate_x_72
    , translate_x_8
    , translate_x_80
    , translate_x_9
    , translate_x_96
    , translate_x_full
    , translate_x_px
    , translate_y_0
    , translate_y_0_dot_5
    , translate_y_1
    , translate_y_10
    , translate_y_11
    , translate_y_12
    , translate_y_14
    , translate_y_16
    , translate_y_1_dot_5
    , translate_y_1over2
    , translate_y_1over3
    , translate_y_1over4
    , translate_y_2
    , translate_y_20
    , translate_y_24
    , translate_y_28
    , translate_y_2_dot_5
    , translate_y_2over3
    , translate_y_2over4
    , translate_y_3
    , translate_y_32
    , translate_y_36
    , translate_y_3_dot_5
    , translate_y_3over4
    , translate_y_4
    , translate_y_40
    , translate_y_44
    , translate_y_48
    , translate_y_5
    , translate_y_52
    , translate_y_56
    , translate_y_6
    , translate_y_60
    , translate_y_64
    , translate_y_7
    , translate_y_72
    , translate_y_8
    , translate_y_80
    , translate_y_9
    , translate_y_96
    , translate_y_full
    , translate_y_px
    , truncate
    , underline
    , underline_offset_0
    , underline_offset_1
    , underline_offset_2
    , underline_offset_4
    , underline_offset_8
    , underline_offset_auto
    , uppercase
    , viaWithColor
    , visible
    , w_0
    , w_0_dot_5
    , w_1
    , w_10
    , w_10over12
    , w_11
    , w_11over12
    , w_12
    , w_14
    , w_16
    , w_1_dot_5
    , w_1over12
    , w_1over2
    , w_1over3
    , w_1over4
    , w_1over5
    , w_1over6
    , w_2
    , w_20
    , w_24
    , w_28
    , w_2_dot_5
    , w_2over12
    , w_2over3
    , w_2over4
    , w_2over5
    , w_2over6
    , w_3
    , w_32
    , w_36
    , w_3_dot_5
    , w_3over12
    , w_3over4
    , w_3over5
    , w_3over6
    , w_4
    , w_40
    , w_44
    , w_48
    , w_4over12
    , w_4over5
    , w_4over6
    , w_5
    , w_52
    , w_56
    , w_5over12
    , w_5over6
    , w_6
    , w_60
    , w_64
    , w_6over12
    , w_7
    , w_72
    , w_7over12
    , w_8
    , w_80
    , w_8over12
    , w_9
    , w_96
    , w_9over12
    , w_auto
    , w_fit
    , w_full
    , w_max
    , w_min
    , w_px
    , w_screen
    , whitespace_normal
    , whitespace_nowrap
    , whitespace_pre
    , whitespace_pre_line
    , whitespace_pre_wrap
    , will_change_auto
    , will_change_contents
    , will_change_scroll
    , will_change_transform
    , z_0
    , z_10
    , z_20
    , z_30
    , z_40
    , z_50
    , z_auto
    )

{-|


## Tailwind Utilities

This module contains

1.  Tailwind's style reset in the `globalStyles` definition.
    Make sure to include this in your HTML via elm-css' `Css.Global.global` function.
2.  All default tailwind css utility classes. You can browse the documentation on
    [tailwind's website](https://tailwindcss.com/docs)

@docs globalStyles
@docs absolute
@docs accentWithColor
@docs accent_auto
@docs align_baseline
@docs align_bottom
@docs align_middle
@docs align_sub
@docs align_super
@docs align_text_bottom
@docs align_text_top
@docs align_top
@docs animate_bounce
@docs animate_none
@docs animate_ping
@docs animate_pulse
@docs animate_spin
@docs antialiased
@docs appearance_none
@docs aspect_1
@docs aspect_10
@docs aspect_11
@docs aspect_12
@docs aspect_13
@docs aspect_14
@docs aspect_15
@docs aspect_16
@docs aspect_2
@docs aspect_3
@docs aspect_4
@docs aspect_5
@docs aspect_6
@docs aspect_7
@docs aspect_8
@docs aspect_9
@docs aspect_h_1
@docs aspect_h_10
@docs aspect_h_11
@docs aspect_h_12
@docs aspect_h_13
@docs aspect_h_14
@docs aspect_h_15
@docs aspect_h_16
@docs aspect_h_2
@docs aspect_h_3
@docs aspect_h_4
@docs aspect_h_5
@docs aspect_h_6
@docs aspect_h_7
@docs aspect_h_8
@docs aspect_h_9
@docs aspect_none
@docs aspect_w_1
@docs aspect_w_10
@docs aspect_w_11
@docs aspect_w_12
@docs aspect_w_13
@docs aspect_w_14
@docs aspect_w_15
@docs aspect_w_16
@docs aspect_w_2
@docs aspect_w_3
@docs aspect_w_4
@docs aspect_w_5
@docs aspect_w_6
@docs aspect_w_7
@docs aspect_w_8
@docs aspect_w_9
@docs auto_cols_auto
@docs auto_cols_fr
@docs auto_cols_max
@docs auto_cols_min
@docs auto_rows_auto
@docs auto_rows_fr
@docs auto_rows_max
@docs auto_rows_min
@docs backdrop_blur
@docs backdrop_blur_0
@docs backdrop_blur_2xl
@docs backdrop_blur_3xl
@docs backdrop_blur_lg
@docs backdrop_blur_md
@docs backdrop_blur_none
@docs backdrop_blur_sm
@docs backdrop_blur_xl
@docs backdrop_brightness_0
@docs backdrop_brightness_100
@docs backdrop_brightness_105
@docs backdrop_brightness_110
@docs backdrop_brightness_125
@docs backdrop_brightness_150
@docs backdrop_brightness_200
@docs backdrop_brightness_50
@docs backdrop_brightness_75
@docs backdrop_brightness_90
@docs backdrop_brightness_95
@docs backdrop_contrast_0
@docs backdrop_contrast_100
@docs backdrop_contrast_125
@docs backdrop_contrast_150
@docs backdrop_contrast_200
@docs backdrop_contrast_50
@docs backdrop_contrast_75
@docs backdrop_filter
@docs backdrop_filter_none
@docs backdrop_grayscale
@docs backdrop_grayscale_0
@docs backdrop_hue_rotate_0
@docs backdrop_hue_rotate_15
@docs backdrop_hue_rotate_180
@docs backdrop_hue_rotate_30
@docs backdrop_hue_rotate_60
@docs backdrop_hue_rotate_90
@docs backdrop_invert
@docs backdrop_invert_0
@docs backdrop_opacity_0
@docs backdrop_opacity_10
@docs backdrop_opacity_100
@docs backdrop_opacity_20
@docs backdrop_opacity_25
@docs backdrop_opacity_30
@docs backdrop_opacity_40
@docs backdrop_opacity_5
@docs backdrop_opacity_50
@docs backdrop_opacity_60
@docs backdrop_opacity_70
@docs backdrop_opacity_75
@docs backdrop_opacity_80
@docs backdrop_opacity_90
@docs backdrop_opacity_95
@docs backdrop_saturate_0
@docs backdrop_saturate_100
@docs backdrop_saturate_150
@docs backdrop_saturate_200
@docs backdrop_saturate_50
@docs backdrop_sepia
@docs backdrop_sepia_0
@docs basis_0
@docs basis_0_dot_5
@docs basis_1
@docs basis_10
@docs basis_10over12
@docs basis_11
@docs basis_11over12
@docs basis_12
@docs basis_14
@docs basis_16
@docs basis_1_dot_5
@docs basis_1over12
@docs basis_1over2
@docs basis_1over3
@docs basis_1over4
@docs basis_1over5
@docs basis_1over6
@docs basis_2
@docs basis_20
@docs basis_24
@docs basis_28
@docs basis_2_dot_5
@docs basis_2over12
@docs basis_2over3
@docs basis_2over4
@docs basis_2over5
@docs basis_2over6
@docs basis_3
@docs basis_32
@docs basis_36
@docs basis_3_dot_5
@docs basis_3over12
@docs basis_3over4
@docs basis_3over5
@docs basis_3over6
@docs basis_4
@docs basis_40
@docs basis_44
@docs basis_48
@docs basis_4over12
@docs basis_4over5
@docs basis_4over6
@docs basis_5
@docs basis_52
@docs basis_56
@docs basis_5over12
@docs basis_5over6
@docs basis_6
@docs basis_60
@docs basis_64
@docs basis_6over12
@docs basis_7
@docs basis_72
@docs basis_7over12
@docs basis_8
@docs basis_80
@docs basis_8over12
@docs basis_9
@docs basis_96
@docs basis_9over12
@docs basis_auto
@docs basis_full
@docs basis_px
@docs bgWithColor
@docs bg_auto
@docs bg_blend_color
@docs bg_blend_color_burn
@docs bg_blend_color_dodge
@docs bg_blend_darken
@docs bg_blend_difference
@docs bg_blend_exclusion
@docs bg_blend_hard_light
@docs bg_blend_hue
@docs bg_blend_lighten
@docs bg_blend_luminosity
@docs bg_blend_multiply
@docs bg_blend_normal
@docs bg_blend_overlay
@docs bg_blend_saturation
@docs bg_blend_screen
@docs bg_blend_soft_light
@docs bg_bottom
@docs bg_center
@docs bg_clip_border
@docs bg_clip_content
@docs bg_clip_padding
@docs bg_clip_text
@docs bg_contain
@docs bg_cover
@docs bg_fixed
@docs bg_gradient_to_b
@docs bg_gradient_to_bl
@docs bg_gradient_to_br
@docs bg_gradient_to_l
@docs bg_gradient_to_r
@docs bg_gradient_to_t
@docs bg_gradient_to_tl
@docs bg_gradient_to_tr
@docs bg_left
@docs bg_left_bottom
@docs bg_left_top
@docs bg_local
@docs bg_no_repeat
@docs bg_none
@docs bg_opacity_0
@docs bg_opacity_10
@docs bg_opacity_100
@docs bg_opacity_20
@docs bg_opacity_25
@docs bg_opacity_30
@docs bg_opacity_40
@docs bg_opacity_5
@docs bg_opacity_50
@docs bg_opacity_60
@docs bg_opacity_70
@docs bg_opacity_75
@docs bg_opacity_80
@docs bg_opacity_90
@docs bg_opacity_95
@docs bg_origin_border
@docs bg_origin_content
@docs bg_origin_padding
@docs bg_repeat
@docs bg_repeat_round
@docs bg_repeat_space
@docs bg_repeat_x
@docs bg_repeat_y
@docs bg_right
@docs bg_right_bottom
@docs bg_right_top
@docs bg_scroll
@docs bg_top
@docs block
@docs blur
@docs blur_0
@docs blur_2xl
@docs blur_3xl
@docs blur_lg
@docs blur_md
@docs blur_none
@docs blur_sm
@docs blur_xl
@docs border
@docs borderWithColor
@docs border_0
@docs border_2
@docs border_4
@docs border_8
@docs border_b
@docs border_bWithColor
@docs border_b_0
@docs border_b_2
@docs border_b_4
@docs border_b_8
@docs border_collapse
@docs border_dashed
@docs border_dotted
@docs border_double
@docs border_hidden
@docs border_l
@docs border_lWithColor
@docs border_l_0
@docs border_l_2
@docs border_l_4
@docs border_l_8
@docs border_none
@docs border_opacity_0
@docs border_opacity_10
@docs border_opacity_100
@docs border_opacity_20
@docs border_opacity_25
@docs border_opacity_30
@docs border_opacity_40
@docs border_opacity_5
@docs border_opacity_50
@docs border_opacity_60
@docs border_opacity_70
@docs border_opacity_75
@docs border_opacity_80
@docs border_opacity_90
@docs border_opacity_95
@docs border_r
@docs border_rWithColor
@docs border_r_0
@docs border_r_2
@docs border_r_4
@docs border_r_8
@docs border_separate
@docs border_solid
@docs border_spacing_0
@docs border_spacing_0_dot_5
@docs border_spacing_1
@docs border_spacing_10
@docs border_spacing_11
@docs border_spacing_12
@docs border_spacing_14
@docs border_spacing_16
@docs border_spacing_1_dot_5
@docs border_spacing_2
@docs border_spacing_20
@docs border_spacing_24
@docs border_spacing_28
@docs border_spacing_2_dot_5
@docs border_spacing_3
@docs border_spacing_32
@docs border_spacing_36
@docs border_spacing_3_dot_5
@docs border_spacing_4
@docs border_spacing_40
@docs border_spacing_44
@docs border_spacing_48
@docs border_spacing_5
@docs border_spacing_52
@docs border_spacing_56
@docs border_spacing_6
@docs border_spacing_60
@docs border_spacing_64
@docs border_spacing_7
@docs border_spacing_72
@docs border_spacing_8
@docs border_spacing_80
@docs border_spacing_9
@docs border_spacing_96
@docs border_spacing_px
@docs border_spacing_x_0
@docs border_spacing_x_0_dot_5
@docs border_spacing_x_1
@docs border_spacing_x_10
@docs border_spacing_x_11
@docs border_spacing_x_12
@docs border_spacing_x_14
@docs border_spacing_x_16
@docs border_spacing_x_1_dot_5
@docs border_spacing_x_2
@docs border_spacing_x_20
@docs border_spacing_x_24
@docs border_spacing_x_28
@docs border_spacing_x_2_dot_5
@docs border_spacing_x_3
@docs border_spacing_x_32
@docs border_spacing_x_36
@docs border_spacing_x_3_dot_5
@docs border_spacing_x_4
@docs border_spacing_x_40
@docs border_spacing_x_44
@docs border_spacing_x_48
@docs border_spacing_x_5
@docs border_spacing_x_52
@docs border_spacing_x_56
@docs border_spacing_x_6
@docs border_spacing_x_60
@docs border_spacing_x_64
@docs border_spacing_x_7
@docs border_spacing_x_72
@docs border_spacing_x_8
@docs border_spacing_x_80
@docs border_spacing_x_9
@docs border_spacing_x_96
@docs border_spacing_x_px
@docs border_spacing_y_0
@docs border_spacing_y_0_dot_5
@docs border_spacing_y_1
@docs border_spacing_y_10
@docs border_spacing_y_11
@docs border_spacing_y_12
@docs border_spacing_y_14
@docs border_spacing_y_16
@docs border_spacing_y_1_dot_5
@docs border_spacing_y_2
@docs border_spacing_y_20
@docs border_spacing_y_24
@docs border_spacing_y_28
@docs border_spacing_y_2_dot_5
@docs border_spacing_y_3
@docs border_spacing_y_32
@docs border_spacing_y_36
@docs border_spacing_y_3_dot_5
@docs border_spacing_y_4
@docs border_spacing_y_40
@docs border_spacing_y_44
@docs border_spacing_y_48
@docs border_spacing_y_5
@docs border_spacing_y_52
@docs border_spacing_y_56
@docs border_spacing_y_6
@docs border_spacing_y_60
@docs border_spacing_y_64
@docs border_spacing_y_7
@docs border_spacing_y_72
@docs border_spacing_y_8
@docs border_spacing_y_80
@docs border_spacing_y_9
@docs border_spacing_y_96
@docs border_spacing_y_px
@docs border_t
@docs border_tWithColor
@docs border_t_0
@docs border_t_2
@docs border_t_4
@docs border_t_8
@docs border_x
@docs border_xWithColor
@docs border_x_0
@docs border_x_2
@docs border_x_4
@docs border_x_8
@docs border_y
@docs border_yWithColor
@docs border_y_0
@docs border_y_2
@docs border_y_4
@docs border_y_8
@docs bottom_0
@docs bottom_0_dot_5
@docs bottom_1
@docs bottom_10
@docs bottom_11
@docs bottom_12
@docs bottom_14
@docs bottom_16
@docs bottom_1_dot_5
@docs bottom_1over2
@docs bottom_1over3
@docs bottom_1over4
@docs bottom_2
@docs bottom_20
@docs bottom_24
@docs bottom_28
@docs bottom_2_dot_5
@docs bottom_2over3
@docs bottom_2over4
@docs bottom_3
@docs bottom_32
@docs bottom_36
@docs bottom_3_dot_5
@docs bottom_3over4
@docs bottom_4
@docs bottom_40
@docs bottom_44
@docs bottom_48
@docs bottom_5
@docs bottom_52
@docs bottom_56
@docs bottom_6
@docs bottom_60
@docs bottom_64
@docs bottom_7
@docs bottom_72
@docs bottom_8
@docs bottom_80
@docs bottom_9
@docs bottom_96
@docs bottom_auto
@docs bottom_full
@docs bottom_px
@docs box_border
@docs box_content
@docs box_decoration_clone
@docs box_decoration_slice
@docs break_after_all
@docs break_after_auto
@docs break_after_avoid
@docs break_after_avoid_page
@docs break_after_column
@docs break_after_left
@docs break_after_page
@docs break_after_right
@docs break_all
@docs break_before_all
@docs break_before_auto
@docs break_before_avoid
@docs break_before_avoid_page
@docs break_before_column
@docs break_before_left
@docs break_before_page
@docs break_before_right
@docs break_inside_auto
@docs break_inside_avoid
@docs break_inside_avoid_column
@docs break_inside_avoid_page
@docs break_normal
@docs break_words
@docs brightness_0
@docs brightness_100
@docs brightness_105
@docs brightness_110
@docs brightness_125
@docs brightness_150
@docs brightness_200
@docs brightness_50
@docs brightness_75
@docs brightness_90
@docs brightness_95
@docs capitalize
@docs caretWithColor
@docs clear_both
@docs clear_left
@docs clear_none
@docs clear_right
@docs col_auto
@docs col_end_1
@docs col_end_10
@docs col_end_11
@docs col_end_12
@docs col_end_13
@docs col_end_2
@docs col_end_3
@docs col_end_4
@docs col_end_5
@docs col_end_6
@docs col_end_7
@docs col_end_8
@docs col_end_9
@docs col_end_auto
@docs col_span_1
@docs col_span_10
@docs col_span_11
@docs col_span_12
@docs col_span_2
@docs col_span_3
@docs col_span_4
@docs col_span_5
@docs col_span_6
@docs col_span_7
@docs col_span_8
@docs col_span_9
@docs col_span_full
@docs col_start_1
@docs col_start_10
@docs col_start_11
@docs col_start_12
@docs col_start_13
@docs col_start_2
@docs col_start_3
@docs col_start_4
@docs col_start_5
@docs col_start_6
@docs col_start_7
@docs col_start_8
@docs col_start_9
@docs col_start_auto
@docs columns_1
@docs columns_10
@docs columns_11
@docs columns_12
@docs columns_2
@docs columns_2xl
@docs columns_2xs
@docs columns_3
@docs columns_3xl
@docs columns_3xs
@docs columns_4
@docs columns_4xl
@docs columns_5
@docs columns_5xl
@docs columns_6
@docs columns_6xl
@docs columns_7
@docs columns_7xl
@docs columns_8
@docs columns_9
@docs columns_auto
@docs columns_lg
@docs columns_md
@docs columns_sm
@docs columns_xl
@docs columns_xs
@docs container
@docs content_around
@docs content_between
@docs content_center
@docs content_end
@docs content_evenly
@docs content_none
@docs content_start
@docs contents
@docs contrast_0
@docs contrast_100
@docs contrast_125
@docs contrast_150
@docs contrast_200
@docs contrast_50
@docs contrast_75
@docs cursor_alias
@docs cursor_all_scroll
@docs cursor_auto
@docs cursor_cell
@docs cursor_col_resize
@docs cursor_context_menu
@docs cursor_copy
@docs cursor_crosshair
@docs cursor_default
@docs cursor_e_resize
@docs cursor_ew_resize
@docs cursor_grab
@docs cursor_grabbing
@docs cursor_help
@docs cursor_move
@docs cursor_n_resize
@docs cursor_ne_resize
@docs cursor_nesw_resize
@docs cursor_no_drop
@docs cursor_none
@docs cursor_not_allowed
@docs cursor_ns_resize
@docs cursor_nw_resize
@docs cursor_nwse_resize
@docs cursor_pointer
@docs cursor_progress
@docs cursor_row_resize
@docs cursor_s_resize
@docs cursor_se_resize
@docs cursor_sw_resize
@docs cursor_text
@docs cursor_vertical_text
@docs cursor_w_resize
@docs cursor_wait
@docs cursor_zoom_in
@docs cursor_zoom_out
@docs decorationWithColor
@docs decoration_0
@docs decoration_1
@docs decoration_2
@docs decoration_4
@docs decoration_8
@docs decoration_auto
@docs decoration_clone
@docs decoration_dashed
@docs decoration_dotted
@docs decoration_double
@docs decoration_from_font
@docs decoration_slice
@docs decoration_solid
@docs decoration_wavy
@docs delay_100
@docs delay_1000
@docs delay_150
@docs delay_200
@docs delay_300
@docs delay_500
@docs delay_700
@docs delay_75
@docs diagonal_fractions
@docs divideWithColor
@docs divide_dashed
@docs divide_dotted
@docs divide_double
@docs divide_none
@docs divide_opacity_0
@docs divide_opacity_10
@docs divide_opacity_100
@docs divide_opacity_20
@docs divide_opacity_25
@docs divide_opacity_30
@docs divide_opacity_40
@docs divide_opacity_5
@docs divide_opacity_50
@docs divide_opacity_60
@docs divide_opacity_70
@docs divide_opacity_75
@docs divide_opacity_80
@docs divide_opacity_90
@docs divide_opacity_95
@docs divide_solid
@docs divide_x
@docs divide_x_0
@docs divide_x_2
@docs divide_x_4
@docs divide_x_8
@docs divide_x_reverse
@docs divide_y
@docs divide_y_0
@docs divide_y_2
@docs divide_y_4
@docs divide_y_8
@docs divide_y_reverse
@docs drop_shadow
@docs drop_shadow_2xl
@docs drop_shadow_lg
@docs drop_shadow_md
@docs drop_shadow_none
@docs drop_shadow_sm
@docs drop_shadow_xl
@docs duration_100
@docs duration_1000
@docs duration_150
@docs duration_200
@docs duration_300
@docs duration_500
@docs duration_700
@docs duration_75
@docs ease_in
@docs ease_in_out
@docs ease_linear
@docs ease_out
@docs fillWithColor
@docs filter
@docs filter_none
@docs fixed
@docs flex
@docs flex_1
@docs flex_auto
@docs flex_col
@docs flex_col_reverse
@docs flex_grow
@docs flex_grow_0
@docs flex_initial
@docs flex_none
@docs flex_nowrap
@docs flex_row
@docs flex_row_reverse
@docs flex_shrink
@docs flex_shrink_0
@docs flex_wrap
@docs flex_wrap_reverse
@docs float_left
@docs float_none
@docs float_right
@docs flow_root
@docs fontWithColor
@docs font_bold
@docs font_extrabold
@docs font_extralight
@docs font_light
@docs font_medium
@docs font_mono
@docs font_normal
@docs font_sans
@docs font_semibold
@docs font_serif
@docs font_thin
@docs form_checkbox
@docs form_input
@docs form_multiselect
@docs form_radio
@docs form_select
@docs form_textarea
@docs fromWithColor
@docs gap_0
@docs gap_0_dot_5
@docs gap_1
@docs gap_10
@docs gap_11
@docs gap_12
@docs gap_14
@docs gap_16
@docs gap_1_dot_5
@docs gap_2
@docs gap_20
@docs gap_24
@docs gap_28
@docs gap_2_dot_5
@docs gap_3
@docs gap_32
@docs gap_36
@docs gap_3_dot_5
@docs gap_4
@docs gap_40
@docs gap_44
@docs gap_48
@docs gap_5
@docs gap_52
@docs gap_56
@docs gap_6
@docs gap_60
@docs gap_64
@docs gap_7
@docs gap_72
@docs gap_8
@docs gap_80
@docs gap_9
@docs gap_96
@docs gap_px
@docs gap_x_0
@docs gap_x_0_dot_5
@docs gap_x_1
@docs gap_x_10
@docs gap_x_11
@docs gap_x_12
@docs gap_x_14
@docs gap_x_16
@docs gap_x_1_dot_5
@docs gap_x_2
@docs gap_x_20
@docs gap_x_24
@docs gap_x_28
@docs gap_x_2_dot_5
@docs gap_x_3
@docs gap_x_32
@docs gap_x_36
@docs gap_x_3_dot_5
@docs gap_x_4
@docs gap_x_40
@docs gap_x_44
@docs gap_x_48
@docs gap_x_5
@docs gap_x_52
@docs gap_x_56
@docs gap_x_6
@docs gap_x_60
@docs gap_x_64
@docs gap_x_7
@docs gap_x_72
@docs gap_x_8
@docs gap_x_80
@docs gap_x_9
@docs gap_x_96
@docs gap_x_px
@docs gap_y_0
@docs gap_y_0_dot_5
@docs gap_y_1
@docs gap_y_10
@docs gap_y_11
@docs gap_y_12
@docs gap_y_14
@docs gap_y_16
@docs gap_y_1_dot_5
@docs gap_y_2
@docs gap_y_20
@docs gap_y_24
@docs gap_y_28
@docs gap_y_2_dot_5
@docs gap_y_3
@docs gap_y_32
@docs gap_y_36
@docs gap_y_3_dot_5
@docs gap_y_4
@docs gap_y_40
@docs gap_y_44
@docs gap_y_48
@docs gap_y_5
@docs gap_y_52
@docs gap_y_56
@docs gap_y_6
@docs gap_y_60
@docs gap_y_64
@docs gap_y_7
@docs gap_y_72
@docs gap_y_8
@docs gap_y_80
@docs gap_y_9
@docs gap_y_96
@docs gap_y_px
@docs grayscale
@docs grayscale_0
@docs grid
@docs grid_cols_1
@docs grid_cols_10
@docs grid_cols_11
@docs grid_cols_12
@docs grid_cols_2
@docs grid_cols_3
@docs grid_cols_4
@docs grid_cols_5
@docs grid_cols_6
@docs grid_cols_7
@docs grid_cols_8
@docs grid_cols_9
@docs grid_cols_none
@docs grid_flow_col
@docs grid_flow_col_dense
@docs grid_flow_dense
@docs grid_flow_row
@docs grid_flow_row_dense
@docs grid_rows_1
@docs grid_rows_2
@docs grid_rows_3
@docs grid_rows_4
@docs grid_rows_5
@docs grid_rows_6
@docs grid_rows_none
@docs grow
@docs grow_0
@docs h_0
@docs h_0_dot_5
@docs h_1
@docs h_10
@docs h_11
@docs h_12
@docs h_14
@docs h_16
@docs h_1_dot_5
@docs h_1over2
@docs h_1over3
@docs h_1over4
@docs h_1over5
@docs h_1over6
@docs h_2
@docs h_20
@docs h_24
@docs h_28
@docs h_2_dot_5
@docs h_2over3
@docs h_2over4
@docs h_2over5
@docs h_2over6
@docs h_3
@docs h_32
@docs h_36
@docs h_3_dot_5
@docs h_3over4
@docs h_3over5
@docs h_3over6
@docs h_4
@docs h_40
@docs h_44
@docs h_48
@docs h_4over5
@docs h_4over6
@docs h_5
@docs h_52
@docs h_56
@docs h_5over6
@docs h_6
@docs h_60
@docs h_64
@docs h_7
@docs h_72
@docs h_8
@docs h_80
@docs h_9
@docs h_96
@docs h_auto
@docs h_fit
@docs h_full
@docs h_max
@docs h_min
@docs h_px
@docs h_screen
@docs hidden
@docs hue_rotate_0
@docs hue_rotate_15
@docs hue_rotate_180
@docs hue_rotate_30
@docs hue_rotate_60
@docs hue_rotate_90
@docs indent_0
@docs indent_0_dot_5
@docs indent_1
@docs indent_10
@docs indent_11
@docs indent_12
@docs indent_14
@docs indent_16
@docs indent_1_dot_5
@docs indent_2
@docs indent_20
@docs indent_24
@docs indent_28
@docs indent_2_dot_5
@docs indent_3
@docs indent_32
@docs indent_36
@docs indent_3_dot_5
@docs indent_4
@docs indent_40
@docs indent_44
@docs indent_48
@docs indent_5
@docs indent_52
@docs indent_56
@docs indent_6
@docs indent_60
@docs indent_64
@docs indent_7
@docs indent_72
@docs indent_8
@docs indent_80
@docs indent_9
@docs indent_96
@docs indent_px
@docs inline
@docs inline_block
@docs inline_flex
@docs inline_grid
@docs inline_table
@docs inset_0
@docs inset_0_dot_5
@docs inset_1
@docs inset_10
@docs inset_11
@docs inset_12
@docs inset_14
@docs inset_16
@docs inset_1_dot_5
@docs inset_1over2
@docs inset_1over3
@docs inset_1over4
@docs inset_2
@docs inset_20
@docs inset_24
@docs inset_28
@docs inset_2_dot_5
@docs inset_2over3
@docs inset_2over4
@docs inset_3
@docs inset_32
@docs inset_36
@docs inset_3_dot_5
@docs inset_3over4
@docs inset_4
@docs inset_40
@docs inset_44
@docs inset_48
@docs inset_5
@docs inset_52
@docs inset_56
@docs inset_6
@docs inset_60
@docs inset_64
@docs inset_7
@docs inset_72
@docs inset_8
@docs inset_80
@docs inset_9
@docs inset_96
@docs inset_auto
@docs inset_full
@docs inset_px
@docs inset_x_0
@docs inset_x_0_dot_5
@docs inset_x_1
@docs inset_x_10
@docs inset_x_11
@docs inset_x_12
@docs inset_x_14
@docs inset_x_16
@docs inset_x_1_dot_5
@docs inset_x_1over2
@docs inset_x_1over3
@docs inset_x_1over4
@docs inset_x_2
@docs inset_x_20
@docs inset_x_24
@docs inset_x_28
@docs inset_x_2_dot_5
@docs inset_x_2over3
@docs inset_x_2over4
@docs inset_x_3
@docs inset_x_32
@docs inset_x_36
@docs inset_x_3_dot_5
@docs inset_x_3over4
@docs inset_x_4
@docs inset_x_40
@docs inset_x_44
@docs inset_x_48
@docs inset_x_5
@docs inset_x_52
@docs inset_x_56
@docs inset_x_6
@docs inset_x_60
@docs inset_x_64
@docs inset_x_7
@docs inset_x_72
@docs inset_x_8
@docs inset_x_80
@docs inset_x_9
@docs inset_x_96
@docs inset_x_auto
@docs inset_x_full
@docs inset_x_px
@docs inset_y_0
@docs inset_y_0_dot_5
@docs inset_y_1
@docs inset_y_10
@docs inset_y_11
@docs inset_y_12
@docs inset_y_14
@docs inset_y_16
@docs inset_y_1_dot_5
@docs inset_y_1over2
@docs inset_y_1over3
@docs inset_y_1over4
@docs inset_y_2
@docs inset_y_20
@docs inset_y_24
@docs inset_y_28
@docs inset_y_2_dot_5
@docs inset_y_2over3
@docs inset_y_2over4
@docs inset_y_3
@docs inset_y_32
@docs inset_y_36
@docs inset_y_3_dot_5
@docs inset_y_3over4
@docs inset_y_4
@docs inset_y_40
@docs inset_y_44
@docs inset_y_48
@docs inset_y_5
@docs inset_y_52
@docs inset_y_56
@docs inset_y_6
@docs inset_y_60
@docs inset_y_64
@docs inset_y_7
@docs inset_y_72
@docs inset_y_8
@docs inset_y_80
@docs inset_y_9
@docs inset_y_96
@docs inset_y_auto
@docs inset_y_full
@docs inset_y_px
@docs invert
@docs invert_0
@docs invisible
@docs isolate
@docs isolation_auto
@docs italic
@docs items_baseline
@docs items_center
@docs items_end
@docs items_start
@docs items_stretch
@docs justify_around
@docs justify_between
@docs justify_center
@docs justify_end
@docs justify_evenly
@docs justify_items_center
@docs justify_items_end
@docs justify_items_start
@docs justify_items_stretch
@docs justify_self_auto
@docs justify_self_center
@docs justify_self_end
@docs justify_self_start
@docs justify_self_stretch
@docs justify_start
@docs leading_10
@docs leading_3
@docs leading_4
@docs leading_5
@docs leading_6
@docs leading_7
@docs leading_8
@docs leading_9
@docs leading_loose
@docs leading_none
@docs leading_normal
@docs leading_relaxed
@docs leading_snug
@docs leading_tight
@docs left_0
@docs left_0_dot_5
@docs left_1
@docs left_10
@docs left_11
@docs left_12
@docs left_14
@docs left_16
@docs left_1_dot_5
@docs left_1over2
@docs left_1over3
@docs left_1over4
@docs left_2
@docs left_20
@docs left_24
@docs left_28
@docs left_2_dot_5
@docs left_2over3
@docs left_2over4
@docs left_3
@docs left_32
@docs left_36
@docs left_3_dot_5
@docs left_3over4
@docs left_4
@docs left_40
@docs left_44
@docs left_48
@docs left_5
@docs left_52
@docs left_56
@docs left_6
@docs left_60
@docs left_64
@docs left_7
@docs left_72
@docs left_8
@docs left_80
@docs left_9
@docs left_96
@docs left_auto
@docs left_full
@docs left_px
@docs line_through
@docs lining_nums
@docs list_decimal
@docs list_disc
@docs list_inside
@docs list_item
@docs list_none
@docs list_outside
@docs lowercase
@docs m_0
@docs m_0_dot_5
@docs m_1
@docs m_10
@docs m_11
@docs m_12
@docs m_14
@docs m_16
@docs m_1_dot_5
@docs m_2
@docs m_20
@docs m_24
@docs m_28
@docs m_2_dot_5
@docs m_3
@docs m_32
@docs m_36
@docs m_3_dot_5
@docs m_4
@docs m_40
@docs m_44
@docs m_48
@docs m_5
@docs m_52
@docs m_56
@docs m_6
@docs m_60
@docs m_64
@docs m_7
@docs m_72
@docs m_8
@docs m_80
@docs m_9
@docs m_96
@docs m_auto
@docs m_px
@docs max_h_0
@docs max_h_0_dot_5
@docs max_h_1
@docs max_h_10
@docs max_h_11
@docs max_h_12
@docs max_h_14
@docs max_h_16
@docs max_h_1_dot_5
@docs max_h_2
@docs max_h_20
@docs max_h_24
@docs max_h_28
@docs max_h_2_dot_5
@docs max_h_3
@docs max_h_32
@docs max_h_36
@docs max_h_3_dot_5
@docs max_h_4
@docs max_h_40
@docs max_h_44
@docs max_h_48
@docs max_h_5
@docs max_h_52
@docs max_h_56
@docs max_h_6
@docs max_h_60
@docs max_h_64
@docs max_h_7
@docs max_h_72
@docs max_h_8
@docs max_h_80
@docs max_h_9
@docs max_h_96
@docs max_h_fit
@docs max_h_full
@docs max_h_max
@docs max_h_min
@docs max_h_px
@docs max_h_screen
@docs max_w_0
@docs max_w_2xl
@docs max_w_3xl
@docs max_w_4xl
@docs max_w_5xl
@docs max_w_6xl
@docs max_w_7xl
@docs max_w_fit
@docs max_w_full
@docs max_w_lg
@docs max_w_max
@docs max_w_md
@docs max_w_min
@docs max_w_none
@docs max_w_prose
@docs max_w_screen_2xl
@docs max_w_screen_lg
@docs max_w_screen_md
@docs max_w_screen_sm
@docs max_w_screen_xl
@docs max_w_sm
@docs max_w_xl
@docs max_w_xs
@docs mb_0
@docs mb_0_dot_5
@docs mb_1
@docs mb_10
@docs mb_11
@docs mb_12
@docs mb_14
@docs mb_16
@docs mb_1_dot_5
@docs mb_2
@docs mb_20
@docs mb_24
@docs mb_28
@docs mb_2_dot_5
@docs mb_3
@docs mb_32
@docs mb_36
@docs mb_3_dot_5
@docs mb_4
@docs mb_40
@docs mb_44
@docs mb_48
@docs mb_5
@docs mb_52
@docs mb_56
@docs mb_6
@docs mb_60
@docs mb_64
@docs mb_7
@docs mb_72
@docs mb_8
@docs mb_80
@docs mb_9
@docs mb_96
@docs mb_auto
@docs mb_px
@docs min_h_0
@docs min_h_fit
@docs min_h_full
@docs min_h_max
@docs min_h_min
@docs min_h_screen
@docs min_w_0
@docs min_w_fit
@docs min_w_full
@docs min_w_max
@docs min_w_min
@docs mix_blend_color
@docs mix_blend_color_burn
@docs mix_blend_color_dodge
@docs mix_blend_darken
@docs mix_blend_difference
@docs mix_blend_exclusion
@docs mix_blend_hard_light
@docs mix_blend_hue
@docs mix_blend_lighten
@docs mix_blend_luminosity
@docs mix_blend_multiply
@docs mix_blend_normal
@docs mix_blend_overlay
@docs mix_blend_plus_lighter
@docs mix_blend_saturation
@docs mix_blend_screen
@docs mix_blend_soft_light
@docs ml_0
@docs ml_0_dot_5
@docs ml_1
@docs ml_10
@docs ml_11
@docs ml_12
@docs ml_14
@docs ml_16
@docs ml_1_dot_5
@docs ml_2
@docs ml_20
@docs ml_24
@docs ml_28
@docs ml_2_dot_5
@docs ml_3
@docs ml_32
@docs ml_36
@docs ml_3_dot_5
@docs ml_4
@docs ml_40
@docs ml_44
@docs ml_48
@docs ml_5
@docs ml_52
@docs ml_56
@docs ml_6
@docs ml_60
@docs ml_64
@docs ml_7
@docs ml_72
@docs ml_8
@docs ml_80
@docs ml_9
@docs ml_96
@docs ml_auto
@docs ml_px
@docs mr_0
@docs mr_0_dot_5
@docs mr_1
@docs mr_10
@docs mr_11
@docs mr_12
@docs mr_14
@docs mr_16
@docs mr_1_dot_5
@docs mr_2
@docs mr_20
@docs mr_24
@docs mr_28
@docs mr_2_dot_5
@docs mr_3
@docs mr_32
@docs mr_36
@docs mr_3_dot_5
@docs mr_4
@docs mr_40
@docs mr_44
@docs mr_48
@docs mr_5
@docs mr_52
@docs mr_56
@docs mr_6
@docs mr_60
@docs mr_64
@docs mr_7
@docs mr_72
@docs mr_8
@docs mr_80
@docs mr_9
@docs mr_96
@docs mr_auto
@docs mr_px
@docs mt_0
@docs mt_0_dot_5
@docs mt_1
@docs mt_10
@docs mt_11
@docs mt_12
@docs mt_14
@docs mt_16
@docs mt_1_dot_5
@docs mt_2
@docs mt_20
@docs mt_24
@docs mt_28
@docs mt_2_dot_5
@docs mt_3
@docs mt_32
@docs mt_36
@docs mt_3_dot_5
@docs mt_4
@docs mt_40
@docs mt_44
@docs mt_48
@docs mt_5
@docs mt_52
@docs mt_56
@docs mt_6
@docs mt_60
@docs mt_64
@docs mt_7
@docs mt_72
@docs mt_8
@docs mt_80
@docs mt_9
@docs mt_96
@docs mt_auto
@docs mt_px
@docs mx_0
@docs mx_0_dot_5
@docs mx_1
@docs mx_10
@docs mx_11
@docs mx_12
@docs mx_14
@docs mx_16
@docs mx_1_dot_5
@docs mx_2
@docs mx_20
@docs mx_24
@docs mx_28
@docs mx_2_dot_5
@docs mx_3
@docs mx_32
@docs mx_36
@docs mx_3_dot_5
@docs mx_4
@docs mx_40
@docs mx_44
@docs mx_48
@docs mx_5
@docs mx_52
@docs mx_56
@docs mx_6
@docs mx_60
@docs mx_64
@docs mx_7
@docs mx_72
@docs mx_8
@docs mx_80
@docs mx_9
@docs mx_96
@docs mx_auto
@docs mx_px
@docs my_0
@docs my_0_dot_5
@docs my_1
@docs my_10
@docs my_11
@docs my_12
@docs my_14
@docs my_16
@docs my_1_dot_5
@docs my_2
@docs my_20
@docs my_24
@docs my_28
@docs my_2_dot_5
@docs my_3
@docs my_32
@docs my_36
@docs my_3_dot_5
@docs my_4
@docs my_40
@docs my_44
@docs my_48
@docs my_5
@docs my_52
@docs my_56
@docs my_6
@docs my_60
@docs my_64
@docs my_7
@docs my_72
@docs my_8
@docs my_80
@docs my_9
@docs my_96
@docs my_auto
@docs my_px
@docs neg_backdrop_hue_rotate_0
@docs neg_backdrop_hue_rotate_15
@docs neg_backdrop_hue_rotate_180
@docs neg_backdrop_hue_rotate_30
@docs neg_backdrop_hue_rotate_60
@docs neg_backdrop_hue_rotate_90
@docs neg_bottom_0
@docs neg_bottom_0_dot_5
@docs neg_bottom_1
@docs neg_bottom_10
@docs neg_bottom_11
@docs neg_bottom_12
@docs neg_bottom_14
@docs neg_bottom_16
@docs neg_bottom_1_dot_5
@docs neg_bottom_1over2
@docs neg_bottom_1over3
@docs neg_bottom_1over4
@docs neg_bottom_2
@docs neg_bottom_20
@docs neg_bottom_24
@docs neg_bottom_28
@docs neg_bottom_2_dot_5
@docs neg_bottom_2over3
@docs neg_bottom_2over4
@docs neg_bottom_3
@docs neg_bottom_32
@docs neg_bottom_36
@docs neg_bottom_3_dot_5
@docs neg_bottom_3over4
@docs neg_bottom_4
@docs neg_bottom_40
@docs neg_bottom_44
@docs neg_bottom_48
@docs neg_bottom_5
@docs neg_bottom_52
@docs neg_bottom_56
@docs neg_bottom_6
@docs neg_bottom_60
@docs neg_bottom_64
@docs neg_bottom_7
@docs neg_bottom_72
@docs neg_bottom_8
@docs neg_bottom_80
@docs neg_bottom_9
@docs neg_bottom_96
@docs neg_bottom_full
@docs neg_bottom_px
@docs neg_hue_rotate_0
@docs neg_hue_rotate_15
@docs neg_hue_rotate_180
@docs neg_hue_rotate_30
@docs neg_hue_rotate_60
@docs neg_hue_rotate_90
@docs neg_indent_0
@docs neg_indent_0_dot_5
@docs neg_indent_1
@docs neg_indent_10
@docs neg_indent_11
@docs neg_indent_12
@docs neg_indent_14
@docs neg_indent_16
@docs neg_indent_1_dot_5
@docs neg_indent_2
@docs neg_indent_20
@docs neg_indent_24
@docs neg_indent_28
@docs neg_indent_2_dot_5
@docs neg_indent_3
@docs neg_indent_32
@docs neg_indent_36
@docs neg_indent_3_dot_5
@docs neg_indent_4
@docs neg_indent_40
@docs neg_indent_44
@docs neg_indent_48
@docs neg_indent_5
@docs neg_indent_52
@docs neg_indent_56
@docs neg_indent_6
@docs neg_indent_60
@docs neg_indent_64
@docs neg_indent_7
@docs neg_indent_72
@docs neg_indent_8
@docs neg_indent_80
@docs neg_indent_9
@docs neg_indent_96
@docs neg_indent_px
@docs neg_inset_0
@docs neg_inset_0_dot_5
@docs neg_inset_1
@docs neg_inset_10
@docs neg_inset_11
@docs neg_inset_12
@docs neg_inset_14
@docs neg_inset_16
@docs neg_inset_1_dot_5
@docs neg_inset_1over2
@docs neg_inset_1over3
@docs neg_inset_1over4
@docs neg_inset_2
@docs neg_inset_20
@docs neg_inset_24
@docs neg_inset_28
@docs neg_inset_2_dot_5
@docs neg_inset_2over3
@docs neg_inset_2over4
@docs neg_inset_3
@docs neg_inset_32
@docs neg_inset_36
@docs neg_inset_3_dot_5
@docs neg_inset_3over4
@docs neg_inset_4
@docs neg_inset_40
@docs neg_inset_44
@docs neg_inset_48
@docs neg_inset_5
@docs neg_inset_52
@docs neg_inset_56
@docs neg_inset_6
@docs neg_inset_60
@docs neg_inset_64
@docs neg_inset_7
@docs neg_inset_72
@docs neg_inset_8
@docs neg_inset_80
@docs neg_inset_9
@docs neg_inset_96
@docs neg_inset_full
@docs neg_inset_px
@docs neg_inset_x_0
@docs neg_inset_x_0_dot_5
@docs neg_inset_x_1
@docs neg_inset_x_10
@docs neg_inset_x_11
@docs neg_inset_x_12
@docs neg_inset_x_14
@docs neg_inset_x_16
@docs neg_inset_x_1_dot_5
@docs neg_inset_x_1over2
@docs neg_inset_x_1over3
@docs neg_inset_x_1over4
@docs neg_inset_x_2
@docs neg_inset_x_20
@docs neg_inset_x_24
@docs neg_inset_x_28
@docs neg_inset_x_2_dot_5
@docs neg_inset_x_2over3
@docs neg_inset_x_2over4
@docs neg_inset_x_3
@docs neg_inset_x_32
@docs neg_inset_x_36
@docs neg_inset_x_3_dot_5
@docs neg_inset_x_3over4
@docs neg_inset_x_4
@docs neg_inset_x_40
@docs neg_inset_x_44
@docs neg_inset_x_48
@docs neg_inset_x_5
@docs neg_inset_x_52
@docs neg_inset_x_56
@docs neg_inset_x_6
@docs neg_inset_x_60
@docs neg_inset_x_64
@docs neg_inset_x_7
@docs neg_inset_x_72
@docs neg_inset_x_8
@docs neg_inset_x_80
@docs neg_inset_x_9
@docs neg_inset_x_96
@docs neg_inset_x_full
@docs neg_inset_x_px
@docs neg_inset_y_0
@docs neg_inset_y_0_dot_5
@docs neg_inset_y_1
@docs neg_inset_y_10
@docs neg_inset_y_11
@docs neg_inset_y_12
@docs neg_inset_y_14
@docs neg_inset_y_16
@docs neg_inset_y_1_dot_5
@docs neg_inset_y_1over2
@docs neg_inset_y_1over3
@docs neg_inset_y_1over4
@docs neg_inset_y_2
@docs neg_inset_y_20
@docs neg_inset_y_24
@docs neg_inset_y_28
@docs neg_inset_y_2_dot_5
@docs neg_inset_y_2over3
@docs neg_inset_y_2over4
@docs neg_inset_y_3
@docs neg_inset_y_32
@docs neg_inset_y_36
@docs neg_inset_y_3_dot_5
@docs neg_inset_y_3over4
@docs neg_inset_y_4
@docs neg_inset_y_40
@docs neg_inset_y_44
@docs neg_inset_y_48
@docs neg_inset_y_5
@docs neg_inset_y_52
@docs neg_inset_y_56
@docs neg_inset_y_6
@docs neg_inset_y_60
@docs neg_inset_y_64
@docs neg_inset_y_7
@docs neg_inset_y_72
@docs neg_inset_y_8
@docs neg_inset_y_80
@docs neg_inset_y_9
@docs neg_inset_y_96
@docs neg_inset_y_full
@docs neg_inset_y_px
@docs neg_left_0
@docs neg_left_0_dot_5
@docs neg_left_1
@docs neg_left_10
@docs neg_left_11
@docs neg_left_12
@docs neg_left_14
@docs neg_left_16
@docs neg_left_1_dot_5
@docs neg_left_1over2
@docs neg_left_1over3
@docs neg_left_1over4
@docs neg_left_2
@docs neg_left_20
@docs neg_left_24
@docs neg_left_28
@docs neg_left_2_dot_5
@docs neg_left_2over3
@docs neg_left_2over4
@docs neg_left_3
@docs neg_left_32
@docs neg_left_36
@docs neg_left_3_dot_5
@docs neg_left_3over4
@docs neg_left_4
@docs neg_left_40
@docs neg_left_44
@docs neg_left_48
@docs neg_left_5
@docs neg_left_52
@docs neg_left_56
@docs neg_left_6
@docs neg_left_60
@docs neg_left_64
@docs neg_left_7
@docs neg_left_72
@docs neg_left_8
@docs neg_left_80
@docs neg_left_9
@docs neg_left_96
@docs neg_left_full
@docs neg_left_px
@docs neg_m_0
@docs neg_m_0_dot_5
@docs neg_m_1
@docs neg_m_10
@docs neg_m_11
@docs neg_m_12
@docs neg_m_14
@docs neg_m_16
@docs neg_m_1_dot_5
@docs neg_m_2
@docs neg_m_20
@docs neg_m_24
@docs neg_m_28
@docs neg_m_2_dot_5
@docs neg_m_3
@docs neg_m_32
@docs neg_m_36
@docs neg_m_3_dot_5
@docs neg_m_4
@docs neg_m_40
@docs neg_m_44
@docs neg_m_48
@docs neg_m_5
@docs neg_m_52
@docs neg_m_56
@docs neg_m_6
@docs neg_m_60
@docs neg_m_64
@docs neg_m_7
@docs neg_m_72
@docs neg_m_8
@docs neg_m_80
@docs neg_m_9
@docs neg_m_96
@docs neg_m_px
@docs neg_mb_0
@docs neg_mb_0_dot_5
@docs neg_mb_1
@docs neg_mb_10
@docs neg_mb_11
@docs neg_mb_12
@docs neg_mb_14
@docs neg_mb_16
@docs neg_mb_1_dot_5
@docs neg_mb_2
@docs neg_mb_20
@docs neg_mb_24
@docs neg_mb_28
@docs neg_mb_2_dot_5
@docs neg_mb_3
@docs neg_mb_32
@docs neg_mb_36
@docs neg_mb_3_dot_5
@docs neg_mb_4
@docs neg_mb_40
@docs neg_mb_44
@docs neg_mb_48
@docs neg_mb_5
@docs neg_mb_52
@docs neg_mb_56
@docs neg_mb_6
@docs neg_mb_60
@docs neg_mb_64
@docs neg_mb_7
@docs neg_mb_72
@docs neg_mb_8
@docs neg_mb_80
@docs neg_mb_9
@docs neg_mb_96
@docs neg_mb_px
@docs neg_ml_0
@docs neg_ml_0_dot_5
@docs neg_ml_1
@docs neg_ml_10
@docs neg_ml_11
@docs neg_ml_12
@docs neg_ml_14
@docs neg_ml_16
@docs neg_ml_1_dot_5
@docs neg_ml_2
@docs neg_ml_20
@docs neg_ml_24
@docs neg_ml_28
@docs neg_ml_2_dot_5
@docs neg_ml_3
@docs neg_ml_32
@docs neg_ml_36
@docs neg_ml_3_dot_5
@docs neg_ml_4
@docs neg_ml_40
@docs neg_ml_44
@docs neg_ml_48
@docs neg_ml_5
@docs neg_ml_52
@docs neg_ml_56
@docs neg_ml_6
@docs neg_ml_60
@docs neg_ml_64
@docs neg_ml_7
@docs neg_ml_72
@docs neg_ml_8
@docs neg_ml_80
@docs neg_ml_9
@docs neg_ml_96
@docs neg_ml_px
@docs neg_mr_0
@docs neg_mr_0_dot_5
@docs neg_mr_1
@docs neg_mr_10
@docs neg_mr_11
@docs neg_mr_12
@docs neg_mr_14
@docs neg_mr_16
@docs neg_mr_1_dot_5
@docs neg_mr_2
@docs neg_mr_20
@docs neg_mr_24
@docs neg_mr_28
@docs neg_mr_2_dot_5
@docs neg_mr_3
@docs neg_mr_32
@docs neg_mr_36
@docs neg_mr_3_dot_5
@docs neg_mr_4
@docs neg_mr_40
@docs neg_mr_44
@docs neg_mr_48
@docs neg_mr_5
@docs neg_mr_52
@docs neg_mr_56
@docs neg_mr_6
@docs neg_mr_60
@docs neg_mr_64
@docs neg_mr_7
@docs neg_mr_72
@docs neg_mr_8
@docs neg_mr_80
@docs neg_mr_9
@docs neg_mr_96
@docs neg_mr_px
@docs neg_mt_0
@docs neg_mt_0_dot_5
@docs neg_mt_1
@docs neg_mt_10
@docs neg_mt_11
@docs neg_mt_12
@docs neg_mt_14
@docs neg_mt_16
@docs neg_mt_1_dot_5
@docs neg_mt_2
@docs neg_mt_20
@docs neg_mt_24
@docs neg_mt_28
@docs neg_mt_2_dot_5
@docs neg_mt_3
@docs neg_mt_32
@docs neg_mt_36
@docs neg_mt_3_dot_5
@docs neg_mt_4
@docs neg_mt_40
@docs neg_mt_44
@docs neg_mt_48
@docs neg_mt_5
@docs neg_mt_52
@docs neg_mt_56
@docs neg_mt_6
@docs neg_mt_60
@docs neg_mt_64
@docs neg_mt_7
@docs neg_mt_72
@docs neg_mt_8
@docs neg_mt_80
@docs neg_mt_9
@docs neg_mt_96
@docs neg_mt_px
@docs neg_mx_0
@docs neg_mx_0_dot_5
@docs neg_mx_1
@docs neg_mx_10
@docs neg_mx_11
@docs neg_mx_12
@docs neg_mx_14
@docs neg_mx_16
@docs neg_mx_1_dot_5
@docs neg_mx_2
@docs neg_mx_20
@docs neg_mx_24
@docs neg_mx_28
@docs neg_mx_2_dot_5
@docs neg_mx_3
@docs neg_mx_32
@docs neg_mx_36
@docs neg_mx_3_dot_5
@docs neg_mx_4
@docs neg_mx_40
@docs neg_mx_44
@docs neg_mx_48
@docs neg_mx_5
@docs neg_mx_52
@docs neg_mx_56
@docs neg_mx_6
@docs neg_mx_60
@docs neg_mx_64
@docs neg_mx_7
@docs neg_mx_72
@docs neg_mx_8
@docs neg_mx_80
@docs neg_mx_9
@docs neg_mx_96
@docs neg_mx_px
@docs neg_my_0
@docs neg_my_0_dot_5
@docs neg_my_1
@docs neg_my_10
@docs neg_my_11
@docs neg_my_12
@docs neg_my_14
@docs neg_my_16
@docs neg_my_1_dot_5
@docs neg_my_2
@docs neg_my_20
@docs neg_my_24
@docs neg_my_28
@docs neg_my_2_dot_5
@docs neg_my_3
@docs neg_my_32
@docs neg_my_36
@docs neg_my_3_dot_5
@docs neg_my_4
@docs neg_my_40
@docs neg_my_44
@docs neg_my_48
@docs neg_my_5
@docs neg_my_52
@docs neg_my_56
@docs neg_my_6
@docs neg_my_60
@docs neg_my_64
@docs neg_my_7
@docs neg_my_72
@docs neg_my_8
@docs neg_my_80
@docs neg_my_9
@docs neg_my_96
@docs neg_my_px
@docs neg_order_1
@docs neg_order_10
@docs neg_order_11
@docs neg_order_12
@docs neg_order_2
@docs neg_order_3
@docs neg_order_4
@docs neg_order_5
@docs neg_order_6
@docs neg_order_7
@docs neg_order_8
@docs neg_order_9
@docs neg_order_first
@docs neg_order_last
@docs neg_order_none
@docs neg_right_0
@docs neg_right_0_dot_5
@docs neg_right_1
@docs neg_right_10
@docs neg_right_11
@docs neg_right_12
@docs neg_right_14
@docs neg_right_16
@docs neg_right_1_dot_5
@docs neg_right_1over2
@docs neg_right_1over3
@docs neg_right_1over4
@docs neg_right_2
@docs neg_right_20
@docs neg_right_24
@docs neg_right_28
@docs neg_right_2_dot_5
@docs neg_right_2over3
@docs neg_right_2over4
@docs neg_right_3
@docs neg_right_32
@docs neg_right_36
@docs neg_right_3_dot_5
@docs neg_right_3over4
@docs neg_right_4
@docs neg_right_40
@docs neg_right_44
@docs neg_right_48
@docs neg_right_5
@docs neg_right_52
@docs neg_right_56
@docs neg_right_6
@docs neg_right_60
@docs neg_right_64
@docs neg_right_7
@docs neg_right_72
@docs neg_right_8
@docs neg_right_80
@docs neg_right_9
@docs neg_right_96
@docs neg_right_full
@docs neg_right_px
@docs neg_rotate_0
@docs neg_rotate_1
@docs neg_rotate_12
@docs neg_rotate_180
@docs neg_rotate_2
@docs neg_rotate_3
@docs neg_rotate_45
@docs neg_rotate_6
@docs neg_rotate_90
@docs neg_scale_0
@docs neg_scale_100
@docs neg_scale_105
@docs neg_scale_110
@docs neg_scale_125
@docs neg_scale_150
@docs neg_scale_50
@docs neg_scale_75
@docs neg_scale_90
@docs neg_scale_95
@docs neg_scale_x_0
@docs neg_scale_x_100
@docs neg_scale_x_105
@docs neg_scale_x_110
@docs neg_scale_x_125
@docs neg_scale_x_150
@docs neg_scale_x_50
@docs neg_scale_x_75
@docs neg_scale_x_90
@docs neg_scale_x_95
@docs neg_scale_y_0
@docs neg_scale_y_100
@docs neg_scale_y_105
@docs neg_scale_y_110
@docs neg_scale_y_125
@docs neg_scale_y_150
@docs neg_scale_y_50
@docs neg_scale_y_75
@docs neg_scale_y_90
@docs neg_scale_y_95
@docs neg_scroll_m_0
@docs neg_scroll_m_0_dot_5
@docs neg_scroll_m_1
@docs neg_scroll_m_10
@docs neg_scroll_m_11
@docs neg_scroll_m_12
@docs neg_scroll_m_14
@docs neg_scroll_m_16
@docs neg_scroll_m_1_dot_5
@docs neg_scroll_m_2
@docs neg_scroll_m_20
@docs neg_scroll_m_24
@docs neg_scroll_m_28
@docs neg_scroll_m_2_dot_5
@docs neg_scroll_m_3
@docs neg_scroll_m_32
@docs neg_scroll_m_36
@docs neg_scroll_m_3_dot_5
@docs neg_scroll_m_4
@docs neg_scroll_m_40
@docs neg_scroll_m_44
@docs neg_scroll_m_48
@docs neg_scroll_m_5
@docs neg_scroll_m_52
@docs neg_scroll_m_56
@docs neg_scroll_m_6
@docs neg_scroll_m_60
@docs neg_scroll_m_64
@docs neg_scroll_m_7
@docs neg_scroll_m_72
@docs neg_scroll_m_8
@docs neg_scroll_m_80
@docs neg_scroll_m_9
@docs neg_scroll_m_96
@docs neg_scroll_m_px
@docs neg_scroll_mb_0
@docs neg_scroll_mb_0_dot_5
@docs neg_scroll_mb_1
@docs neg_scroll_mb_10
@docs neg_scroll_mb_11
@docs neg_scroll_mb_12
@docs neg_scroll_mb_14
@docs neg_scroll_mb_16
@docs neg_scroll_mb_1_dot_5
@docs neg_scroll_mb_2
@docs neg_scroll_mb_20
@docs neg_scroll_mb_24
@docs neg_scroll_mb_28
@docs neg_scroll_mb_2_dot_5
@docs neg_scroll_mb_3
@docs neg_scroll_mb_32
@docs neg_scroll_mb_36
@docs neg_scroll_mb_3_dot_5
@docs neg_scroll_mb_4
@docs neg_scroll_mb_40
@docs neg_scroll_mb_44
@docs neg_scroll_mb_48
@docs neg_scroll_mb_5
@docs neg_scroll_mb_52
@docs neg_scroll_mb_56
@docs neg_scroll_mb_6
@docs neg_scroll_mb_60
@docs neg_scroll_mb_64
@docs neg_scroll_mb_7
@docs neg_scroll_mb_72
@docs neg_scroll_mb_8
@docs neg_scroll_mb_80
@docs neg_scroll_mb_9
@docs neg_scroll_mb_96
@docs neg_scroll_mb_px
@docs neg_scroll_ml_0
@docs neg_scroll_ml_0_dot_5
@docs neg_scroll_ml_1
@docs neg_scroll_ml_10
@docs neg_scroll_ml_11
@docs neg_scroll_ml_12
@docs neg_scroll_ml_14
@docs neg_scroll_ml_16
@docs neg_scroll_ml_1_dot_5
@docs neg_scroll_ml_2
@docs neg_scroll_ml_20
@docs neg_scroll_ml_24
@docs neg_scroll_ml_28
@docs neg_scroll_ml_2_dot_5
@docs neg_scroll_ml_3
@docs neg_scroll_ml_32
@docs neg_scroll_ml_36
@docs neg_scroll_ml_3_dot_5
@docs neg_scroll_ml_4
@docs neg_scroll_ml_40
@docs neg_scroll_ml_44
@docs neg_scroll_ml_48
@docs neg_scroll_ml_5
@docs neg_scroll_ml_52
@docs neg_scroll_ml_56
@docs neg_scroll_ml_6
@docs neg_scroll_ml_60
@docs neg_scroll_ml_64
@docs neg_scroll_ml_7
@docs neg_scroll_ml_72
@docs neg_scroll_ml_8
@docs neg_scroll_ml_80
@docs neg_scroll_ml_9
@docs neg_scroll_ml_96
@docs neg_scroll_ml_px
@docs neg_scroll_mr_0
@docs neg_scroll_mr_0_dot_5
@docs neg_scroll_mr_1
@docs neg_scroll_mr_10
@docs neg_scroll_mr_11
@docs neg_scroll_mr_12
@docs neg_scroll_mr_14
@docs neg_scroll_mr_16
@docs neg_scroll_mr_1_dot_5
@docs neg_scroll_mr_2
@docs neg_scroll_mr_20
@docs neg_scroll_mr_24
@docs neg_scroll_mr_28
@docs neg_scroll_mr_2_dot_5
@docs neg_scroll_mr_3
@docs neg_scroll_mr_32
@docs neg_scroll_mr_36
@docs neg_scroll_mr_3_dot_5
@docs neg_scroll_mr_4
@docs neg_scroll_mr_40
@docs neg_scroll_mr_44
@docs neg_scroll_mr_48
@docs neg_scroll_mr_5
@docs neg_scroll_mr_52
@docs neg_scroll_mr_56
@docs neg_scroll_mr_6
@docs neg_scroll_mr_60
@docs neg_scroll_mr_64
@docs neg_scroll_mr_7
@docs neg_scroll_mr_72
@docs neg_scroll_mr_8
@docs neg_scroll_mr_80
@docs neg_scroll_mr_9
@docs neg_scroll_mr_96
@docs neg_scroll_mr_px
@docs neg_scroll_mt_0
@docs neg_scroll_mt_0_dot_5
@docs neg_scroll_mt_1
@docs neg_scroll_mt_10
@docs neg_scroll_mt_11
@docs neg_scroll_mt_12
@docs neg_scroll_mt_14
@docs neg_scroll_mt_16
@docs neg_scroll_mt_1_dot_5
@docs neg_scroll_mt_2
@docs neg_scroll_mt_20
@docs neg_scroll_mt_24
@docs neg_scroll_mt_28
@docs neg_scroll_mt_2_dot_5
@docs neg_scroll_mt_3
@docs neg_scroll_mt_32
@docs neg_scroll_mt_36
@docs neg_scroll_mt_3_dot_5
@docs neg_scroll_mt_4
@docs neg_scroll_mt_40
@docs neg_scroll_mt_44
@docs neg_scroll_mt_48
@docs neg_scroll_mt_5
@docs neg_scroll_mt_52
@docs neg_scroll_mt_56
@docs neg_scroll_mt_6
@docs neg_scroll_mt_60
@docs neg_scroll_mt_64
@docs neg_scroll_mt_7
@docs neg_scroll_mt_72
@docs neg_scroll_mt_8
@docs neg_scroll_mt_80
@docs neg_scroll_mt_9
@docs neg_scroll_mt_96
@docs neg_scroll_mt_px
@docs neg_scroll_mx_0
@docs neg_scroll_mx_0_dot_5
@docs neg_scroll_mx_1
@docs neg_scroll_mx_10
@docs neg_scroll_mx_11
@docs neg_scroll_mx_12
@docs neg_scroll_mx_14
@docs neg_scroll_mx_16
@docs neg_scroll_mx_1_dot_5
@docs neg_scroll_mx_2
@docs neg_scroll_mx_20
@docs neg_scroll_mx_24
@docs neg_scroll_mx_28
@docs neg_scroll_mx_2_dot_5
@docs neg_scroll_mx_3
@docs neg_scroll_mx_32
@docs neg_scroll_mx_36
@docs neg_scroll_mx_3_dot_5
@docs neg_scroll_mx_4
@docs neg_scroll_mx_40
@docs neg_scroll_mx_44
@docs neg_scroll_mx_48
@docs neg_scroll_mx_5
@docs neg_scroll_mx_52
@docs neg_scroll_mx_56
@docs neg_scroll_mx_6
@docs neg_scroll_mx_60
@docs neg_scroll_mx_64
@docs neg_scroll_mx_7
@docs neg_scroll_mx_72
@docs neg_scroll_mx_8
@docs neg_scroll_mx_80
@docs neg_scroll_mx_9
@docs neg_scroll_mx_96
@docs neg_scroll_mx_px
@docs neg_scroll_my_0
@docs neg_scroll_my_0_dot_5
@docs neg_scroll_my_1
@docs neg_scroll_my_10
@docs neg_scroll_my_11
@docs neg_scroll_my_12
@docs neg_scroll_my_14
@docs neg_scroll_my_16
@docs neg_scroll_my_1_dot_5
@docs neg_scroll_my_2
@docs neg_scroll_my_20
@docs neg_scroll_my_24
@docs neg_scroll_my_28
@docs neg_scroll_my_2_dot_5
@docs neg_scroll_my_3
@docs neg_scroll_my_32
@docs neg_scroll_my_36
@docs neg_scroll_my_3_dot_5
@docs neg_scroll_my_4
@docs neg_scroll_my_40
@docs neg_scroll_my_44
@docs neg_scroll_my_48
@docs neg_scroll_my_5
@docs neg_scroll_my_52
@docs neg_scroll_my_56
@docs neg_scroll_my_6
@docs neg_scroll_my_60
@docs neg_scroll_my_64
@docs neg_scroll_my_7
@docs neg_scroll_my_72
@docs neg_scroll_my_8
@docs neg_scroll_my_80
@docs neg_scroll_my_9
@docs neg_scroll_my_96
@docs neg_scroll_my_px
@docs neg_skew_x_0
@docs neg_skew_x_1
@docs neg_skew_x_12
@docs neg_skew_x_2
@docs neg_skew_x_3
@docs neg_skew_x_6
@docs neg_skew_y_0
@docs neg_skew_y_1
@docs neg_skew_y_12
@docs neg_skew_y_2
@docs neg_skew_y_3
@docs neg_skew_y_6
@docs neg_space_x_0
@docs neg_space_x_0_dot_5
@docs neg_space_x_1
@docs neg_space_x_10
@docs neg_space_x_11
@docs neg_space_x_12
@docs neg_space_x_14
@docs neg_space_x_16
@docs neg_space_x_1_dot_5
@docs neg_space_x_2
@docs neg_space_x_20
@docs neg_space_x_24
@docs neg_space_x_28
@docs neg_space_x_2_dot_5
@docs neg_space_x_3
@docs neg_space_x_32
@docs neg_space_x_36
@docs neg_space_x_3_dot_5
@docs neg_space_x_4
@docs neg_space_x_40
@docs neg_space_x_44
@docs neg_space_x_48
@docs neg_space_x_5
@docs neg_space_x_52
@docs neg_space_x_56
@docs neg_space_x_6
@docs neg_space_x_60
@docs neg_space_x_64
@docs neg_space_x_7
@docs neg_space_x_72
@docs neg_space_x_8
@docs neg_space_x_80
@docs neg_space_x_9
@docs neg_space_x_96
@docs neg_space_x_px
@docs neg_space_y_0
@docs neg_space_y_0_dot_5
@docs neg_space_y_1
@docs neg_space_y_10
@docs neg_space_y_11
@docs neg_space_y_12
@docs neg_space_y_14
@docs neg_space_y_16
@docs neg_space_y_1_dot_5
@docs neg_space_y_2
@docs neg_space_y_20
@docs neg_space_y_24
@docs neg_space_y_28
@docs neg_space_y_2_dot_5
@docs neg_space_y_3
@docs neg_space_y_32
@docs neg_space_y_36
@docs neg_space_y_3_dot_5
@docs neg_space_y_4
@docs neg_space_y_40
@docs neg_space_y_44
@docs neg_space_y_48
@docs neg_space_y_5
@docs neg_space_y_52
@docs neg_space_y_56
@docs neg_space_y_6
@docs neg_space_y_60
@docs neg_space_y_64
@docs neg_space_y_7
@docs neg_space_y_72
@docs neg_space_y_8
@docs neg_space_y_80
@docs neg_space_y_9
@docs neg_space_y_96
@docs neg_space_y_px
@docs neg_top_0
@docs neg_top_0_dot_5
@docs neg_top_1
@docs neg_top_10
@docs neg_top_11
@docs neg_top_12
@docs neg_top_14
@docs neg_top_16
@docs neg_top_1_dot_5
@docs neg_top_1over2
@docs neg_top_1over3
@docs neg_top_1over4
@docs neg_top_2
@docs neg_top_20
@docs neg_top_24
@docs neg_top_28
@docs neg_top_2_dot_5
@docs neg_top_2over3
@docs neg_top_2over4
@docs neg_top_3
@docs neg_top_32
@docs neg_top_36
@docs neg_top_3_dot_5
@docs neg_top_3over4
@docs neg_top_4
@docs neg_top_40
@docs neg_top_44
@docs neg_top_48
@docs neg_top_5
@docs neg_top_52
@docs neg_top_56
@docs neg_top_6
@docs neg_top_60
@docs neg_top_64
@docs neg_top_7
@docs neg_top_72
@docs neg_top_8
@docs neg_top_80
@docs neg_top_9
@docs neg_top_96
@docs neg_top_full
@docs neg_top_px
@docs neg_tracking_normal
@docs neg_tracking_tight
@docs neg_tracking_tighter
@docs neg_tracking_wide
@docs neg_tracking_wider
@docs neg_tracking_widest
@docs neg_translate_x_0
@docs neg_translate_x_0_dot_5
@docs neg_translate_x_1
@docs neg_translate_x_10
@docs neg_translate_x_11
@docs neg_translate_x_12
@docs neg_translate_x_14
@docs neg_translate_x_16
@docs neg_translate_x_1_dot_5
@docs neg_translate_x_1over2
@docs neg_translate_x_1over3
@docs neg_translate_x_1over4
@docs neg_translate_x_2
@docs neg_translate_x_20
@docs neg_translate_x_24
@docs neg_translate_x_28
@docs neg_translate_x_2_dot_5
@docs neg_translate_x_2over3
@docs neg_translate_x_2over4
@docs neg_translate_x_3
@docs neg_translate_x_32
@docs neg_translate_x_36
@docs neg_translate_x_3_dot_5
@docs neg_translate_x_3over4
@docs neg_translate_x_4
@docs neg_translate_x_40
@docs neg_translate_x_44
@docs neg_translate_x_48
@docs neg_translate_x_5
@docs neg_translate_x_52
@docs neg_translate_x_56
@docs neg_translate_x_6
@docs neg_translate_x_60
@docs neg_translate_x_64
@docs neg_translate_x_7
@docs neg_translate_x_72
@docs neg_translate_x_8
@docs neg_translate_x_80
@docs neg_translate_x_9
@docs neg_translate_x_96
@docs neg_translate_x_full
@docs neg_translate_x_px
@docs neg_translate_y_0
@docs neg_translate_y_0_dot_5
@docs neg_translate_y_1
@docs neg_translate_y_10
@docs neg_translate_y_11
@docs neg_translate_y_12
@docs neg_translate_y_14
@docs neg_translate_y_16
@docs neg_translate_y_1_dot_5
@docs neg_translate_y_1over2
@docs neg_translate_y_1over3
@docs neg_translate_y_1over4
@docs neg_translate_y_2
@docs neg_translate_y_20
@docs neg_translate_y_24
@docs neg_translate_y_28
@docs neg_translate_y_2_dot_5
@docs neg_translate_y_2over3
@docs neg_translate_y_2over4
@docs neg_translate_y_3
@docs neg_translate_y_32
@docs neg_translate_y_36
@docs neg_translate_y_3_dot_5
@docs neg_translate_y_3over4
@docs neg_translate_y_4
@docs neg_translate_y_40
@docs neg_translate_y_44
@docs neg_translate_y_48
@docs neg_translate_y_5
@docs neg_translate_y_52
@docs neg_translate_y_56
@docs neg_translate_y_6
@docs neg_translate_y_60
@docs neg_translate_y_64
@docs neg_translate_y_7
@docs neg_translate_y_72
@docs neg_translate_y_8
@docs neg_translate_y_80
@docs neg_translate_y_9
@docs neg_translate_y_96
@docs neg_translate_y_full
@docs neg_translate_y_px
@docs neg_z_0
@docs neg_z_10
@docs neg_z_20
@docs neg_z_30
@docs neg_z_40
@docs neg_z_50
@docs no_underline
@docs normal_case
@docs normal_nums
@docs not_italic
@docs not_sr_only
@docs object_bottom
@docs object_center
@docs object_contain
@docs object_cover
@docs object_fill
@docs object_left
@docs object_left_bottom
@docs object_left_top
@docs object_none
@docs object_right
@docs object_right_bottom
@docs object_right_top
@docs object_scale_down
@docs object_top
@docs oldstyle_nums
@docs opacity_0
@docs opacity_10
@docs opacity_100
@docs opacity_20
@docs opacity_25
@docs opacity_30
@docs opacity_40
@docs opacity_5
@docs opacity_50
@docs opacity_60
@docs opacity_70
@docs opacity_75
@docs opacity_80
@docs opacity_90
@docs opacity_95
@docs order_1
@docs order_10
@docs order_11
@docs order_12
@docs order_2
@docs order_3
@docs order_4
@docs order_5
@docs order_6
@docs order_7
@docs order_8
@docs order_9
@docs order_first
@docs order_last
@docs order_none
@docs ordinal
@docs origin_bottom
@docs origin_bottom_left
@docs origin_bottom_right
@docs origin_center
@docs origin_left
@docs origin_right
@docs origin_top
@docs origin_top_left
@docs origin_top_right
@docs outline
@docs outlineWithColor
@docs outline_0
@docs outline_1
@docs outline_2
@docs outline_4
@docs outline_8
@docs outline_dashed
@docs outline_dotted
@docs outline_double
@docs outline_hidden
@docs outline_none
@docs outline_offset_0
@docs outline_offset_1
@docs outline_offset_2
@docs outline_offset_4
@docs outline_offset_8
@docs overflow_auto
@docs overflow_clip
@docs overflow_ellipsis
@docs overflow_hidden
@docs overflow_scroll
@docs overflow_visible
@docs overflow_x_auto
@docs overflow_x_clip
@docs overflow_x_hidden
@docs overflow_x_scroll
@docs overflow_x_visible
@docs overflow_y_auto
@docs overflow_y_clip
@docs overflow_y_hidden
@docs overflow_y_scroll
@docs overflow_y_visible
@docs overline
@docs overscroll_auto
@docs overscroll_contain
@docs overscroll_none
@docs overscroll_x_auto
@docs overscroll_x_contain
@docs overscroll_x_none
@docs overscroll_y_auto
@docs overscroll_y_contain
@docs overscroll_y_none
@docs p_0
@docs p_0_dot_5
@docs p_1
@docs p_10
@docs p_11
@docs p_12
@docs p_14
@docs p_16
@docs p_1_dot_5
@docs p_2
@docs p_20
@docs p_24
@docs p_28
@docs p_2_dot_5
@docs p_3
@docs p_32
@docs p_36
@docs p_3_dot_5
@docs p_4
@docs p_40
@docs p_44
@docs p_48
@docs p_5
@docs p_52
@docs p_56
@docs p_6
@docs p_60
@docs p_64
@docs p_7
@docs p_72
@docs p_8
@docs p_80
@docs p_9
@docs p_96
@docs p_px
@docs pb_0
@docs pb_0_dot_5
@docs pb_1
@docs pb_10
@docs pb_11
@docs pb_12
@docs pb_14
@docs pb_16
@docs pb_1_dot_5
@docs pb_2
@docs pb_20
@docs pb_24
@docs pb_28
@docs pb_2_dot_5
@docs pb_3
@docs pb_32
@docs pb_36
@docs pb_3_dot_5
@docs pb_4
@docs pb_40
@docs pb_44
@docs pb_48
@docs pb_5
@docs pb_52
@docs pb_56
@docs pb_6
@docs pb_60
@docs pb_64
@docs pb_7
@docs pb_72
@docs pb_8
@docs pb_80
@docs pb_9
@docs pb_96
@docs pb_px
@docs pl_0
@docs pl_0_dot_5
@docs pl_1
@docs pl_10
@docs pl_11
@docs pl_12
@docs pl_14
@docs pl_16
@docs pl_1_dot_5
@docs pl_2
@docs pl_20
@docs pl_24
@docs pl_28
@docs pl_2_dot_5
@docs pl_3
@docs pl_32
@docs pl_36
@docs pl_3_dot_5
@docs pl_4
@docs pl_40
@docs pl_44
@docs pl_48
@docs pl_5
@docs pl_52
@docs pl_56
@docs pl_6
@docs pl_60
@docs pl_64
@docs pl_7
@docs pl_72
@docs pl_8
@docs pl_80
@docs pl_9
@docs pl_96
@docs pl_px
@docs place_content_around
@docs place_content_between
@docs place_content_center
@docs place_content_end
@docs place_content_evenly
@docs place_content_start
@docs place_content_stretch
@docs place_items_center
@docs place_items_end
@docs place_items_start
@docs place_items_stretch
@docs place_self_auto
@docs place_self_center
@docs place_self_end
@docs place_self_start
@docs place_self_stretch
@docs placeholderWithColor
@docs placeholder_opacity_0
@docs placeholder_opacity_10
@docs placeholder_opacity_100
@docs placeholder_opacity_20
@docs placeholder_opacity_25
@docs placeholder_opacity_30
@docs placeholder_opacity_40
@docs placeholder_opacity_5
@docs placeholder_opacity_50
@docs placeholder_opacity_60
@docs placeholder_opacity_70
@docs placeholder_opacity_75
@docs placeholder_opacity_80
@docs placeholder_opacity_90
@docs placeholder_opacity_95
@docs pointer_events_auto
@docs pointer_events_none
@docs pr_0
@docs pr_0_dot_5
@docs pr_1
@docs pr_10
@docs pr_11
@docs pr_12
@docs pr_14
@docs pr_16
@docs pr_1_dot_5
@docs pr_2
@docs pr_20
@docs pr_24
@docs pr_28
@docs pr_2_dot_5
@docs pr_3
@docs pr_32
@docs pr_36
@docs pr_3_dot_5
@docs pr_4
@docs pr_40
@docs pr_44
@docs pr_48
@docs pr_5
@docs pr_52
@docs pr_56
@docs pr_6
@docs pr_60
@docs pr_64
@docs pr_7
@docs pr_72
@docs pr_8
@docs pr_80
@docs pr_9
@docs pr_96
@docs pr_px
@docs proportional_nums
@docs prose
@docs prose_2xl
@docs prose_amber
@docs prose_base
@docs prose_blue
@docs prose_cyan
@docs prose_emerald
@docs prose_fuchsia
@docs prose_gray
@docs prose_green
@docs prose_indigo
@docs prose_invert
@docs prose_lg
@docs prose_lime
@docs prose_neutral
@docs prose_orange
@docs prose_pink
@docs prose_purple
@docs prose_red
@docs prose_rose
@docs prose_sky
@docs prose_slate
@docs prose_sm
@docs prose_stone
@docs prose_teal
@docs prose_violet
@docs prose_xl
@docs prose_yellow
@docs prose_zinc
@docs pt_0
@docs pt_0_dot_5
@docs pt_1
@docs pt_10
@docs pt_11
@docs pt_12
@docs pt_14
@docs pt_16
@docs pt_1_dot_5
@docs pt_2
@docs pt_20
@docs pt_24
@docs pt_28
@docs pt_2_dot_5
@docs pt_3
@docs pt_32
@docs pt_36
@docs pt_3_dot_5
@docs pt_4
@docs pt_40
@docs pt_44
@docs pt_48
@docs pt_5
@docs pt_52
@docs pt_56
@docs pt_6
@docs pt_60
@docs pt_64
@docs pt_7
@docs pt_72
@docs pt_8
@docs pt_80
@docs pt_9
@docs pt_96
@docs pt_px
@docs px_0
@docs px_0_dot_5
@docs px_1
@docs px_10
@docs px_11
@docs px_12
@docs px_14
@docs px_16
@docs px_1_dot_5
@docs px_2
@docs px_20
@docs px_24
@docs px_28
@docs px_2_dot_5
@docs px_3
@docs px_32
@docs px_36
@docs px_3_dot_5
@docs px_4
@docs px_40
@docs px_44
@docs px_48
@docs px_5
@docs px_52
@docs px_56
@docs px_6
@docs px_60
@docs px_64
@docs px_7
@docs px_72
@docs px_8
@docs px_80
@docs px_9
@docs px_96
@docs px_px
@docs py_0
@docs py_0_dot_5
@docs py_1
@docs py_10
@docs py_11
@docs py_12
@docs py_14
@docs py_16
@docs py_1_dot_5
@docs py_2
@docs py_20
@docs py_24
@docs py_28
@docs py_2_dot_5
@docs py_3
@docs py_32
@docs py_36
@docs py_3_dot_5
@docs py_4
@docs py_40
@docs py_44
@docs py_48
@docs py_5
@docs py_52
@docs py_56
@docs py_6
@docs py_60
@docs py_64
@docs py_7
@docs py_72
@docs py_8
@docs py_80
@docs py_9
@docs py_96
@docs py_px
@docs relative
@docs resize
@docs resize_none
@docs resize_x
@docs resize_y
@docs right_0
@docs right_0_dot_5
@docs right_1
@docs right_10
@docs right_11
@docs right_12
@docs right_14
@docs right_16
@docs right_1_dot_5
@docs right_1over2
@docs right_1over3
@docs right_1over4
@docs right_2
@docs right_20
@docs right_24
@docs right_28
@docs right_2_dot_5
@docs right_2over3
@docs right_2over4
@docs right_3
@docs right_32
@docs right_36
@docs right_3_dot_5
@docs right_3over4
@docs right_4
@docs right_40
@docs right_44
@docs right_48
@docs right_5
@docs right_52
@docs right_56
@docs right_6
@docs right_60
@docs right_64
@docs right_7
@docs right_72
@docs right_8
@docs right_80
@docs right_9
@docs right_96
@docs right_auto
@docs right_full
@docs right_px
@docs ring
@docs ringWithColor
@docs ring_0
@docs ring_1
@docs ring_2
@docs ring_4
@docs ring_8
@docs ring_inset
@docs ring_offsetWithColor
@docs ring_offset_0
@docs ring_offset_1
@docs ring_offset_2
@docs ring_offset_4
@docs ring_offset_8
@docs ring_opacity_0
@docs ring_opacity_10
@docs ring_opacity_100
@docs ring_opacity_20
@docs ring_opacity_25
@docs ring_opacity_30
@docs ring_opacity_40
@docs ring_opacity_5
@docs ring_opacity_50
@docs ring_opacity_60
@docs ring_opacity_70
@docs ring_opacity_75
@docs ring_opacity_80
@docs ring_opacity_90
@docs ring_opacity_95
@docs rotate_0
@docs rotate_1
@docs rotate_12
@docs rotate_180
@docs rotate_2
@docs rotate_3
@docs rotate_45
@docs rotate_6
@docs rotate_90
@docs rounded
@docs rounded_2xl
@docs rounded_3xl
@docs rounded_b
@docs rounded_b_2xl
@docs rounded_b_3xl
@docs rounded_b_full
@docs rounded_b_lg
@docs rounded_b_md
@docs rounded_b_none
@docs rounded_b_sm
@docs rounded_b_xl
@docs rounded_bl
@docs rounded_bl_2xl
@docs rounded_bl_3xl
@docs rounded_bl_full
@docs rounded_bl_lg
@docs rounded_bl_md
@docs rounded_bl_none
@docs rounded_bl_sm
@docs rounded_bl_xl
@docs rounded_br
@docs rounded_br_2xl
@docs rounded_br_3xl
@docs rounded_br_full
@docs rounded_br_lg
@docs rounded_br_md
@docs rounded_br_none
@docs rounded_br_sm
@docs rounded_br_xl
@docs rounded_full
@docs rounded_l
@docs rounded_l_2xl
@docs rounded_l_3xl
@docs rounded_l_full
@docs rounded_l_lg
@docs rounded_l_md
@docs rounded_l_none
@docs rounded_l_sm
@docs rounded_l_xl
@docs rounded_lg
@docs rounded_md
@docs rounded_none
@docs rounded_r
@docs rounded_r_2xl
@docs rounded_r_3xl
@docs rounded_r_full
@docs rounded_r_lg
@docs rounded_r_md
@docs rounded_r_none
@docs rounded_r_sm
@docs rounded_r_xl
@docs rounded_sm
@docs rounded_t
@docs rounded_t_2xl
@docs rounded_t_3xl
@docs rounded_t_full
@docs rounded_t_lg
@docs rounded_t_md
@docs rounded_t_none
@docs rounded_t_sm
@docs rounded_t_xl
@docs rounded_tl
@docs rounded_tl_2xl
@docs rounded_tl_3xl
@docs rounded_tl_full
@docs rounded_tl_lg
@docs rounded_tl_md
@docs rounded_tl_none
@docs rounded_tl_sm
@docs rounded_tl_xl
@docs rounded_tr
@docs rounded_tr_2xl
@docs rounded_tr_3xl
@docs rounded_tr_full
@docs rounded_tr_lg
@docs rounded_tr_md
@docs rounded_tr_none
@docs rounded_tr_sm
@docs rounded_tr_xl
@docs rounded_xl
@docs row_auto
@docs row_end_1
@docs row_end_2
@docs row_end_3
@docs row_end_4
@docs row_end_5
@docs row_end_6
@docs row_end_7
@docs row_end_auto
@docs row_span_1
@docs row_span_2
@docs row_span_3
@docs row_span_4
@docs row_span_5
@docs row_span_6
@docs row_span_full
@docs row_start_1
@docs row_start_2
@docs row_start_3
@docs row_start_4
@docs row_start_5
@docs row_start_6
@docs row_start_7
@docs row_start_auto
@docs saturate_0
@docs saturate_100
@docs saturate_150
@docs saturate_200
@docs saturate_50
@docs scale_0
@docs scale_100
@docs scale_105
@docs scale_110
@docs scale_125
@docs scale_150
@docs scale_50
@docs scale_75
@docs scale_90
@docs scale_95
@docs scale_x_0
@docs scale_x_100
@docs scale_x_105
@docs scale_x_110
@docs scale_x_125
@docs scale_x_150
@docs scale_x_50
@docs scale_x_75
@docs scale_x_90
@docs scale_x_95
@docs scale_y_0
@docs scale_y_100
@docs scale_y_105
@docs scale_y_110
@docs scale_y_125
@docs scale_y_150
@docs scale_y_50
@docs scale_y_75
@docs scale_y_90
@docs scale_y_95
@docs scroll_auto
@docs scroll_m_0
@docs scroll_m_0_dot_5
@docs scroll_m_1
@docs scroll_m_10
@docs scroll_m_11
@docs scroll_m_12
@docs scroll_m_14
@docs scroll_m_16
@docs scroll_m_1_dot_5
@docs scroll_m_2
@docs scroll_m_20
@docs scroll_m_24
@docs scroll_m_28
@docs scroll_m_2_dot_5
@docs scroll_m_3
@docs scroll_m_32
@docs scroll_m_36
@docs scroll_m_3_dot_5
@docs scroll_m_4
@docs scroll_m_40
@docs scroll_m_44
@docs scroll_m_48
@docs scroll_m_5
@docs scroll_m_52
@docs scroll_m_56
@docs scroll_m_6
@docs scroll_m_60
@docs scroll_m_64
@docs scroll_m_7
@docs scroll_m_72
@docs scroll_m_8
@docs scroll_m_80
@docs scroll_m_9
@docs scroll_m_96
@docs scroll_m_px
@docs scroll_mb_0
@docs scroll_mb_0_dot_5
@docs scroll_mb_1
@docs scroll_mb_10
@docs scroll_mb_11
@docs scroll_mb_12
@docs scroll_mb_14
@docs scroll_mb_16
@docs scroll_mb_1_dot_5
@docs scroll_mb_2
@docs scroll_mb_20
@docs scroll_mb_24
@docs scroll_mb_28
@docs scroll_mb_2_dot_5
@docs scroll_mb_3
@docs scroll_mb_32
@docs scroll_mb_36
@docs scroll_mb_3_dot_5
@docs scroll_mb_4
@docs scroll_mb_40
@docs scroll_mb_44
@docs scroll_mb_48
@docs scroll_mb_5
@docs scroll_mb_52
@docs scroll_mb_56
@docs scroll_mb_6
@docs scroll_mb_60
@docs scroll_mb_64
@docs scroll_mb_7
@docs scroll_mb_72
@docs scroll_mb_8
@docs scroll_mb_80
@docs scroll_mb_9
@docs scroll_mb_96
@docs scroll_mb_px
@docs scroll_ml_0
@docs scroll_ml_0_dot_5
@docs scroll_ml_1
@docs scroll_ml_10
@docs scroll_ml_11
@docs scroll_ml_12
@docs scroll_ml_14
@docs scroll_ml_16
@docs scroll_ml_1_dot_5
@docs scroll_ml_2
@docs scroll_ml_20
@docs scroll_ml_24
@docs scroll_ml_28
@docs scroll_ml_2_dot_5
@docs scroll_ml_3
@docs scroll_ml_32
@docs scroll_ml_36
@docs scroll_ml_3_dot_5
@docs scroll_ml_4
@docs scroll_ml_40
@docs scroll_ml_44
@docs scroll_ml_48
@docs scroll_ml_5
@docs scroll_ml_52
@docs scroll_ml_56
@docs scroll_ml_6
@docs scroll_ml_60
@docs scroll_ml_64
@docs scroll_ml_7
@docs scroll_ml_72
@docs scroll_ml_8
@docs scroll_ml_80
@docs scroll_ml_9
@docs scroll_ml_96
@docs scroll_ml_px
@docs scroll_mr_0
@docs scroll_mr_0_dot_5
@docs scroll_mr_1
@docs scroll_mr_10
@docs scroll_mr_11
@docs scroll_mr_12
@docs scroll_mr_14
@docs scroll_mr_16
@docs scroll_mr_1_dot_5
@docs scroll_mr_2
@docs scroll_mr_20
@docs scroll_mr_24
@docs scroll_mr_28
@docs scroll_mr_2_dot_5
@docs scroll_mr_3
@docs scroll_mr_32
@docs scroll_mr_36
@docs scroll_mr_3_dot_5
@docs scroll_mr_4
@docs scroll_mr_40
@docs scroll_mr_44
@docs scroll_mr_48
@docs scroll_mr_5
@docs scroll_mr_52
@docs scroll_mr_56
@docs scroll_mr_6
@docs scroll_mr_60
@docs scroll_mr_64
@docs scroll_mr_7
@docs scroll_mr_72
@docs scroll_mr_8
@docs scroll_mr_80
@docs scroll_mr_9
@docs scroll_mr_96
@docs scroll_mr_px
@docs scroll_mt_0
@docs scroll_mt_0_dot_5
@docs scroll_mt_1
@docs scroll_mt_10
@docs scroll_mt_11
@docs scroll_mt_12
@docs scroll_mt_14
@docs scroll_mt_16
@docs scroll_mt_1_dot_5
@docs scroll_mt_2
@docs scroll_mt_20
@docs scroll_mt_24
@docs scroll_mt_28
@docs scroll_mt_2_dot_5
@docs scroll_mt_3
@docs scroll_mt_32
@docs scroll_mt_36
@docs scroll_mt_3_dot_5
@docs scroll_mt_4
@docs scroll_mt_40
@docs scroll_mt_44
@docs scroll_mt_48
@docs scroll_mt_5
@docs scroll_mt_52
@docs scroll_mt_56
@docs scroll_mt_6
@docs scroll_mt_60
@docs scroll_mt_64
@docs scroll_mt_7
@docs scroll_mt_72
@docs scroll_mt_8
@docs scroll_mt_80
@docs scroll_mt_9
@docs scroll_mt_96
@docs scroll_mt_px
@docs scroll_mx_0
@docs scroll_mx_0_dot_5
@docs scroll_mx_1
@docs scroll_mx_10
@docs scroll_mx_11
@docs scroll_mx_12
@docs scroll_mx_14
@docs scroll_mx_16
@docs scroll_mx_1_dot_5
@docs scroll_mx_2
@docs scroll_mx_20
@docs scroll_mx_24
@docs scroll_mx_28
@docs scroll_mx_2_dot_5
@docs scroll_mx_3
@docs scroll_mx_32
@docs scroll_mx_36
@docs scroll_mx_3_dot_5
@docs scroll_mx_4
@docs scroll_mx_40
@docs scroll_mx_44
@docs scroll_mx_48
@docs scroll_mx_5
@docs scroll_mx_52
@docs scroll_mx_56
@docs scroll_mx_6
@docs scroll_mx_60
@docs scroll_mx_64
@docs scroll_mx_7
@docs scroll_mx_72
@docs scroll_mx_8
@docs scroll_mx_80
@docs scroll_mx_9
@docs scroll_mx_96
@docs scroll_mx_px
@docs scroll_my_0
@docs scroll_my_0_dot_5
@docs scroll_my_1
@docs scroll_my_10
@docs scroll_my_11
@docs scroll_my_12
@docs scroll_my_14
@docs scroll_my_16
@docs scroll_my_1_dot_5
@docs scroll_my_2
@docs scroll_my_20
@docs scroll_my_24
@docs scroll_my_28
@docs scroll_my_2_dot_5
@docs scroll_my_3
@docs scroll_my_32
@docs scroll_my_36
@docs scroll_my_3_dot_5
@docs scroll_my_4
@docs scroll_my_40
@docs scroll_my_44
@docs scroll_my_48
@docs scroll_my_5
@docs scroll_my_52
@docs scroll_my_56
@docs scroll_my_6
@docs scroll_my_60
@docs scroll_my_64
@docs scroll_my_7
@docs scroll_my_72
@docs scroll_my_8
@docs scroll_my_80
@docs scroll_my_9
@docs scroll_my_96
@docs scroll_my_px
@docs scroll_p_0
@docs scroll_p_0_dot_5
@docs scroll_p_1
@docs scroll_p_10
@docs scroll_p_11
@docs scroll_p_12
@docs scroll_p_14
@docs scroll_p_16
@docs scroll_p_1_dot_5
@docs scroll_p_2
@docs scroll_p_20
@docs scroll_p_24
@docs scroll_p_28
@docs scroll_p_2_dot_5
@docs scroll_p_3
@docs scroll_p_32
@docs scroll_p_36
@docs scroll_p_3_dot_5
@docs scroll_p_4
@docs scroll_p_40
@docs scroll_p_44
@docs scroll_p_48
@docs scroll_p_5
@docs scroll_p_52
@docs scroll_p_56
@docs scroll_p_6
@docs scroll_p_60
@docs scroll_p_64
@docs scroll_p_7
@docs scroll_p_72
@docs scroll_p_8
@docs scroll_p_80
@docs scroll_p_9
@docs scroll_p_96
@docs scroll_p_px
@docs scroll_pb_0
@docs scroll_pb_0_dot_5
@docs scroll_pb_1
@docs scroll_pb_10
@docs scroll_pb_11
@docs scroll_pb_12
@docs scroll_pb_14
@docs scroll_pb_16
@docs scroll_pb_1_dot_5
@docs scroll_pb_2
@docs scroll_pb_20
@docs scroll_pb_24
@docs scroll_pb_28
@docs scroll_pb_2_dot_5
@docs scroll_pb_3
@docs scroll_pb_32
@docs scroll_pb_36
@docs scroll_pb_3_dot_5
@docs scroll_pb_4
@docs scroll_pb_40
@docs scroll_pb_44
@docs scroll_pb_48
@docs scroll_pb_5
@docs scroll_pb_52
@docs scroll_pb_56
@docs scroll_pb_6
@docs scroll_pb_60
@docs scroll_pb_64
@docs scroll_pb_7
@docs scroll_pb_72
@docs scroll_pb_8
@docs scroll_pb_80
@docs scroll_pb_9
@docs scroll_pb_96
@docs scroll_pb_px
@docs scroll_pl_0
@docs scroll_pl_0_dot_5
@docs scroll_pl_1
@docs scroll_pl_10
@docs scroll_pl_11
@docs scroll_pl_12
@docs scroll_pl_14
@docs scroll_pl_16
@docs scroll_pl_1_dot_5
@docs scroll_pl_2
@docs scroll_pl_20
@docs scroll_pl_24
@docs scroll_pl_28
@docs scroll_pl_2_dot_5
@docs scroll_pl_3
@docs scroll_pl_32
@docs scroll_pl_36
@docs scroll_pl_3_dot_5
@docs scroll_pl_4
@docs scroll_pl_40
@docs scroll_pl_44
@docs scroll_pl_48
@docs scroll_pl_5
@docs scroll_pl_52
@docs scroll_pl_56
@docs scroll_pl_6
@docs scroll_pl_60
@docs scroll_pl_64
@docs scroll_pl_7
@docs scroll_pl_72
@docs scroll_pl_8
@docs scroll_pl_80
@docs scroll_pl_9
@docs scroll_pl_96
@docs scroll_pl_px
@docs scroll_pr_0
@docs scroll_pr_0_dot_5
@docs scroll_pr_1
@docs scroll_pr_10
@docs scroll_pr_11
@docs scroll_pr_12
@docs scroll_pr_14
@docs scroll_pr_16
@docs scroll_pr_1_dot_5
@docs scroll_pr_2
@docs scroll_pr_20
@docs scroll_pr_24
@docs scroll_pr_28
@docs scroll_pr_2_dot_5
@docs scroll_pr_3
@docs scroll_pr_32
@docs scroll_pr_36
@docs scroll_pr_3_dot_5
@docs scroll_pr_4
@docs scroll_pr_40
@docs scroll_pr_44
@docs scroll_pr_48
@docs scroll_pr_5
@docs scroll_pr_52
@docs scroll_pr_56
@docs scroll_pr_6
@docs scroll_pr_60
@docs scroll_pr_64
@docs scroll_pr_7
@docs scroll_pr_72
@docs scroll_pr_8
@docs scroll_pr_80
@docs scroll_pr_9
@docs scroll_pr_96
@docs scroll_pr_px
@docs scroll_pt_0
@docs scroll_pt_0_dot_5
@docs scroll_pt_1
@docs scroll_pt_10
@docs scroll_pt_11
@docs scroll_pt_12
@docs scroll_pt_14
@docs scroll_pt_16
@docs scroll_pt_1_dot_5
@docs scroll_pt_2
@docs scroll_pt_20
@docs scroll_pt_24
@docs scroll_pt_28
@docs scroll_pt_2_dot_5
@docs scroll_pt_3
@docs scroll_pt_32
@docs scroll_pt_36
@docs scroll_pt_3_dot_5
@docs scroll_pt_4
@docs scroll_pt_40
@docs scroll_pt_44
@docs scroll_pt_48
@docs scroll_pt_5
@docs scroll_pt_52
@docs scroll_pt_56
@docs scroll_pt_6
@docs scroll_pt_60
@docs scroll_pt_64
@docs scroll_pt_7
@docs scroll_pt_72
@docs scroll_pt_8
@docs scroll_pt_80
@docs scroll_pt_9
@docs scroll_pt_96
@docs scroll_pt_px
@docs scroll_px_0
@docs scroll_px_0_dot_5
@docs scroll_px_1
@docs scroll_px_10
@docs scroll_px_11
@docs scroll_px_12
@docs scroll_px_14
@docs scroll_px_16
@docs scroll_px_1_dot_5
@docs scroll_px_2
@docs scroll_px_20
@docs scroll_px_24
@docs scroll_px_28
@docs scroll_px_2_dot_5
@docs scroll_px_3
@docs scroll_px_32
@docs scroll_px_36
@docs scroll_px_3_dot_5
@docs scroll_px_4
@docs scroll_px_40
@docs scroll_px_44
@docs scroll_px_48
@docs scroll_px_5
@docs scroll_px_52
@docs scroll_px_56
@docs scroll_px_6
@docs scroll_px_60
@docs scroll_px_64
@docs scroll_px_7
@docs scroll_px_72
@docs scroll_px_8
@docs scroll_px_80
@docs scroll_px_9
@docs scroll_px_96
@docs scroll_px_px
@docs scroll_py_0
@docs scroll_py_0_dot_5
@docs scroll_py_1
@docs scroll_py_10
@docs scroll_py_11
@docs scroll_py_12
@docs scroll_py_14
@docs scroll_py_16
@docs scroll_py_1_dot_5
@docs scroll_py_2
@docs scroll_py_20
@docs scroll_py_24
@docs scroll_py_28
@docs scroll_py_2_dot_5
@docs scroll_py_3
@docs scroll_py_32
@docs scroll_py_36
@docs scroll_py_3_dot_5
@docs scroll_py_4
@docs scroll_py_40
@docs scroll_py_44
@docs scroll_py_48
@docs scroll_py_5
@docs scroll_py_52
@docs scroll_py_56
@docs scroll_py_6
@docs scroll_py_60
@docs scroll_py_64
@docs scroll_py_7
@docs scroll_py_72
@docs scroll_py_8
@docs scroll_py_80
@docs scroll_py_9
@docs scroll_py_96
@docs scroll_py_px
@docs scroll_smooth
@docs select_all
@docs select_auto
@docs select_none
@docs select_text
@docs self_auto
@docs self_baseline
@docs self_center
@docs self_end
@docs self_start
@docs self_stretch
@docs sepia
@docs sepia_0
@docs shadow
@docs shadowWithColor
@docs shadow_2xl
@docs shadow_inner
@docs shadow_lg
@docs shadow_md
@docs shadow_none
@docs shadow_sm
@docs shadow_xl
@docs shrink
@docs shrink_0
@docs skew_x_0
@docs skew_x_1
@docs skew_x_12
@docs skew_x_2
@docs skew_x_3
@docs skew_x_6
@docs skew_y_0
@docs skew_y_1
@docs skew_y_12
@docs skew_y_2
@docs skew_y_3
@docs skew_y_6
@docs slashed_zero
@docs snap_align_none
@docs snap_always
@docs snap_both
@docs snap_center
@docs snap_end
@docs snap_mandatory
@docs snap_none
@docs snap_normal
@docs snap_proximity
@docs snap_start
@docs snap_x
@docs snap_y
@docs space_x_0
@docs space_x_0_dot_5
@docs space_x_1
@docs space_x_10
@docs space_x_11
@docs space_x_12
@docs space_x_14
@docs space_x_16
@docs space_x_1_dot_5
@docs space_x_2
@docs space_x_20
@docs space_x_24
@docs space_x_28
@docs space_x_2_dot_5
@docs space_x_3
@docs space_x_32
@docs space_x_36
@docs space_x_3_dot_5
@docs space_x_4
@docs space_x_40
@docs space_x_44
@docs space_x_48
@docs space_x_5
@docs space_x_52
@docs space_x_56
@docs space_x_6
@docs space_x_60
@docs space_x_64
@docs space_x_7
@docs space_x_72
@docs space_x_8
@docs space_x_80
@docs space_x_9
@docs space_x_96
@docs space_x_px
@docs space_x_reverse
@docs space_y_0
@docs space_y_0_dot_5
@docs space_y_1
@docs space_y_10
@docs space_y_11
@docs space_y_12
@docs space_y_14
@docs space_y_16
@docs space_y_1_dot_5
@docs space_y_2
@docs space_y_20
@docs space_y_24
@docs space_y_28
@docs space_y_2_dot_5
@docs space_y_3
@docs space_y_32
@docs space_y_36
@docs space_y_3_dot_5
@docs space_y_4
@docs space_y_40
@docs space_y_44
@docs space_y_48
@docs space_y_5
@docs space_y_52
@docs space_y_56
@docs space_y_6
@docs space_y_60
@docs space_y_64
@docs space_y_7
@docs space_y_72
@docs space_y_8
@docs space_y_80
@docs space_y_9
@docs space_y_96
@docs space_y_px
@docs space_y_reverse
@docs sr_only
@docs stacked_fractions
@docs static
@docs sticky
@docs strokeWithColor
@docs stroke_0
@docs stroke_1
@docs stroke_2
@docs subpixel_antialiased
@docs table
@docs table_auto
@docs table_caption
@docs table_cell
@docs table_column
@docs table_column_group
@docs table_fixed
@docs table_footer_group
@docs table_header_group
@docs table_row
@docs table_row_group
@docs tabular_nums
@docs textWithColor
@docs text_2xl
@docs text_3xl
@docs text_4xl
@docs text_5xl
@docs text_6xl
@docs text_7xl
@docs text_8xl
@docs text_9xl
@docs text_base
@docs text_center
@docs text_clip
@docs text_ellipsis
@docs text_end
@docs text_justify
@docs text_left
@docs text_lg
@docs text_opacity_0
@docs text_opacity_10
@docs text_opacity_100
@docs text_opacity_20
@docs text_opacity_25
@docs text_opacity_30
@docs text_opacity_40
@docs text_opacity_5
@docs text_opacity_50
@docs text_opacity_60
@docs text_opacity_70
@docs text_opacity_75
@docs text_opacity_80
@docs text_opacity_90
@docs text_opacity_95
@docs text_right
@docs text_sm
@docs text_start
@docs text_xl
@docs text_xs
@docs toWithColor
@docs top_0
@docs top_0_dot_5
@docs top_1
@docs top_10
@docs top_11
@docs top_12
@docs top_14
@docs top_16
@docs top_1_dot_5
@docs top_1over2
@docs top_1over3
@docs top_1over4
@docs top_2
@docs top_20
@docs top_24
@docs top_28
@docs top_2_dot_5
@docs top_2over3
@docs top_2over4
@docs top_3
@docs top_32
@docs top_36
@docs top_3_dot_5
@docs top_3over4
@docs top_4
@docs top_40
@docs top_44
@docs top_48
@docs top_5
@docs top_52
@docs top_56
@docs top_6
@docs top_60
@docs top_64
@docs top_7
@docs top_72
@docs top_8
@docs top_80
@docs top_9
@docs top_96
@docs top_auto
@docs top_full
@docs top_px
@docs touch_auto
@docs touch_manipulation
@docs touch_none
@docs touch_pan_down
@docs touch_pan_left
@docs touch_pan_right
@docs touch_pan_up
@docs touch_pan_x
@docs touch_pan_y
@docs touch_pinch_zoom
@docs tracking_normal
@docs tracking_tight
@docs tracking_tighter
@docs tracking_wide
@docs tracking_wider
@docs tracking_widest
@docs transform
@docs transform_cpu
@docs transform_gpu
@docs transform_none
@docs transition
@docs transition_all
@docs transition_colors
@docs transition_none
@docs transition_opacity
@docs transition_shadow
@docs transition_transform
@docs translate_x_0
@docs translate_x_0_dot_5
@docs translate_x_1
@docs translate_x_10
@docs translate_x_11
@docs translate_x_12
@docs translate_x_14
@docs translate_x_16
@docs translate_x_1_dot_5
@docs translate_x_1over2
@docs translate_x_1over3
@docs translate_x_1over4
@docs translate_x_2
@docs translate_x_20
@docs translate_x_24
@docs translate_x_28
@docs translate_x_2_dot_5
@docs translate_x_2over3
@docs translate_x_2over4
@docs translate_x_3
@docs translate_x_32
@docs translate_x_36
@docs translate_x_3_dot_5
@docs translate_x_3over4
@docs translate_x_4
@docs translate_x_40
@docs translate_x_44
@docs translate_x_48
@docs translate_x_5
@docs translate_x_52
@docs translate_x_56
@docs translate_x_6
@docs translate_x_60
@docs translate_x_64
@docs translate_x_7
@docs translate_x_72
@docs translate_x_8
@docs translate_x_80
@docs translate_x_9
@docs translate_x_96
@docs translate_x_full
@docs translate_x_px
@docs translate_y_0
@docs translate_y_0_dot_5
@docs translate_y_1
@docs translate_y_10
@docs translate_y_11
@docs translate_y_12
@docs translate_y_14
@docs translate_y_16
@docs translate_y_1_dot_5
@docs translate_y_1over2
@docs translate_y_1over3
@docs translate_y_1over4
@docs translate_y_2
@docs translate_y_20
@docs translate_y_24
@docs translate_y_28
@docs translate_y_2_dot_5
@docs translate_y_2over3
@docs translate_y_2over4
@docs translate_y_3
@docs translate_y_32
@docs translate_y_36
@docs translate_y_3_dot_5
@docs translate_y_3over4
@docs translate_y_4
@docs translate_y_40
@docs translate_y_44
@docs translate_y_48
@docs translate_y_5
@docs translate_y_52
@docs translate_y_56
@docs translate_y_6
@docs translate_y_60
@docs translate_y_64
@docs translate_y_7
@docs translate_y_72
@docs translate_y_8
@docs translate_y_80
@docs translate_y_9
@docs translate_y_96
@docs translate_y_full
@docs translate_y_px
@docs truncate
@docs underline
@docs underline_offset_0
@docs underline_offset_1
@docs underline_offset_2
@docs underline_offset_4
@docs underline_offset_8
@docs underline_offset_auto
@docs uppercase
@docs viaWithColor
@docs visible
@docs w_0
@docs w_0_dot_5
@docs w_1
@docs w_10
@docs w_10over12
@docs w_11
@docs w_11over12
@docs w_12
@docs w_14
@docs w_16
@docs w_1_dot_5
@docs w_1over12
@docs w_1over2
@docs w_1over3
@docs w_1over4
@docs w_1over5
@docs w_1over6
@docs w_2
@docs w_20
@docs w_24
@docs w_28
@docs w_2_dot_5
@docs w_2over12
@docs w_2over3
@docs w_2over4
@docs w_2over5
@docs w_2over6
@docs w_3
@docs w_32
@docs w_36
@docs w_3_dot_5
@docs w_3over12
@docs w_3over4
@docs w_3over5
@docs w_3over6
@docs w_4
@docs w_40
@docs w_44
@docs w_48
@docs w_4over12
@docs w_4over5
@docs w_4over6
@docs w_5
@docs w_52
@docs w_56
@docs w_5over12
@docs w_5over6
@docs w_6
@docs w_60
@docs w_64
@docs w_6over12
@docs w_7
@docs w_72
@docs w_7over12
@docs w_8
@docs w_80
@docs w_8over12
@docs w_9
@docs w_96
@docs w_9over12
@docs w_auto
@docs w_fit
@docs w_full
@docs w_max
@docs w_min
@docs w_px
@docs w_screen
@docs whitespace_normal
@docs whitespace_nowrap
@docs whitespace_pre
@docs whitespace_pre_line
@docs whitespace_pre_wrap
@docs will_change_auto
@docs will_change_contents
@docs will_change_scroll
@docs will_change_transform
@docs z_0
@docs z_10
@docs z_20
@docs z_30
@docs z_40
@docs z_50
@docs z_auto

-}

import Tailwind.Theme exposing (Color)
import Css
import Css.Animations
import Css.Global
import Css.Media


{-| This contains tailwind's style reset.

This is something similar to normalize.css, if you're familiar with it.

You **need to include this in your html** at any time you use this module,
as some of the classes in here depend on css variables defined in the global styles.

You include it like so:

    import Css.Global
    import Html.Styled as Html exposing (Html)
    import Tailwind.Utilities exposing (globalStyles)

    view : Html msg
    view =
        div []
            [ -- Like this:
              Css.Global.global globalStyles

            -- Continue with any other Html
            ]

It only needs to be included once.

-}
globalStyles : List Css.Global.Snippet
globalStyles =
    [ Css.Global.selector "*,\n::before,\n::after"
        [ Css.property "box-sizing" "border-box"
        , Css.property "border-width" "0"
        , Css.property "border-style" "solid"
        , Css.property "border-color" "#e5e7eb"
        ]
    , Css.Global.selector "::before,\n::after"
        [ Css.property "--tw-content" "''"
        ]
    , Css.Global.selector "html"
        [ Css.property "line-height" "1.5"
        , Css.property "-webkit-text-size-adjust" "100%"
        , Css.property "-moz-tab-size" "4"
        , Css.property "tab-size" "4"
        , Css.property "font-family" "ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""
        ]
    , Css.Global.selector "body"
        [ Css.property "margin" "0"
        , Css.property "line-height" "inherit"
        ]
    , Css.Global.selector "hr"
        [ Css.property "height" "0"
        , Css.property "color" "inherit"
        , Css.property "border-top-width" "1px"
        ]
    , Css.Global.selector "abbr:where([title])"
        [ Css.property "text-decoration" "underline dotted"
        ]
    , Css.Global.selector "h1,\nh2,\nh3,\nh4,\nh5,\nh6"
        [ Css.property "font-size" "inherit"
        , Css.property "font-weight" "inherit"
        ]
    , Css.Global.selector "a"
        [ Css.property "color" "inherit"
        , Css.property "text-decoration" "inherit"
        ]
    , Css.Global.selector "b,\nstrong"
        [ Css.property "font-weight" "bolder"
        ]
    , Css.Global.selector "code,\nkbd,\nsamp,\npre"
        [ Css.property "font-family" "ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"
        , Css.property "font-size" "1em"
        ]
    , Css.Global.selector "small"
        [ Css.property "font-size" "80%"
        ]
    , Css.Global.selector "sub,\nsup"
        [ Css.property "font-size" "75%"
        , Css.property "line-height" "0"
        , Css.property "position" "relative"
        , Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "sub"
        [ Css.property "bottom" "-0.25em"
        ]
    , Css.Global.selector "sup"
        [ Css.property "top" "-0.5em"
        ]
    , Css.Global.selector "table"
        [ Css.property "text-indent" "0"
        , Css.property "border-color" "inherit"
        , Css.property "border-collapse" "collapse"
        ]
    , Css.Global.selector "button,\ninput,\noptgroup,\nselect,\ntextarea"
        [ Css.property "font-family" "inherit"
        , Css.property "font-size" "100%"
        , Css.property "font-weight" "inherit"
        , Css.property "line-height" "inherit"
        , Css.property "color" "inherit"
        , Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "button,\nselect"
        [ Css.property "text-transform" "none"
        ]
    , Css.Global.selector "button,\n[type='button'],\n[type='reset'],\n[type='submit']"
        [ Css.property "-webkit-appearance" "button"
        , Css.property "background-color" "transparent"
        , Css.property "background-image" "none"
        ]
    , Css.Global.selector ":-moz-focusring"
        [ Css.property "outline" "auto"
        ]
    , Css.Global.selector ":-moz-ui-invalid"
        [ Css.property "box-shadow" "none"
        ]
    , Css.Global.selector "progress"
        [ Css.property "vertical-align" "baseline"
        ]
    , Css.Global.selector "::-webkit-inner-spin-button,\n::-webkit-outer-spin-button"
        [ Css.property "height" "auto"
        ]
    , Css.Global.selector "[type='search']"
        [ Css.property "-webkit-appearance" "textfield"
        , Css.property "outline-offset" "-2px"
        ]
    , Css.Global.selector "::-webkit-search-decoration"
        [ Css.property "-webkit-appearance" "none"
        ]
    , Css.Global.selector "::-webkit-file-upload-button"
        [ Css.property "-webkit-appearance" "button"
        , Css.property "font" "inherit"
        ]
    , Css.Global.selector "summary"
        [ Css.property "display" "list-item"
        ]
    , Css.Global.selector "blockquote,\ndl,\ndd,\nh1,\nh2,\nh3,\nh4,\nh5,\nh6,\nhr,\nfigure,\np,\npre"
        [ Css.property "margin" "0"
        ]
    , Css.Global.selector "fieldset"
        [ Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "legend"
        [ Css.property "padding" "0"
        ]
    , Css.Global.selector "ol,\nul,\nmenu"
        [ Css.property "list-style" "none"
        , Css.property "margin" "0"
        , Css.property "padding" "0"
        ]
    , Css.Global.selector "textarea"
        [ Css.property "resize" "vertical"
        ]
    , Css.Global.selector "input::placeholder,\ntextarea::placeholder"
        [ Css.property "opacity" "1"
        , Css.property "color" "#9ca3af"
        ]
    , Css.Global.selector "button,\n[role=\"button\"]"
        [ Css.property "cursor" "pointer"
        ]
    , Css.Global.selector ":disabled"
        [ Css.property "cursor" "default"
        ]
    , Css.Global.selector "img,\nsvg,\nvideo,\ncanvas,\naudio,\niframe,\nembed,\nobject"
        [ Css.property "display" "block"
        , Css.property "vertical-align" "middle"
        ]
    , Css.Global.selector "img,\nvideo"
        [ Css.property "max-width" "100%"
        , Css.property "height" "auto"
        ]
    , Css.Global.selector "[type='text'],[type='email'],[type='url'],[type='password'],[type='number'],[type='date'],[type='datetime-local'],[type='month'],[type='search'],[type='tel'],[type='time'],[type='week'],[multiple],textarea,select"
        [ Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        ]
    , Css.Global.selector "[type='text']:focus, [type='email']:focus, [type='url']:focus, [type='password']:focus, [type='number']:focus, [type='date']:focus, [type='datetime-local']:focus, [type='month']:focus, [type='search']:focus, [type='tel']:focus, [type='time']:focus, [type='week']:focus, [multiple]:focus, textarea:focus, select:focus"
        [ Css.property "outline" "2px solid transparent"
        , Css.property "outline-offset" "2px"
        , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "#2563eb"
        , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
        , Css.property "border-color" "#2563eb"
        ]
    , Css.Global.selector "input::placeholder,textarea::placeholder"
        [ Css.property "color" "#6b7280"
        , Css.property "opacity" "1"
        ]
    , Css.Global.selector "::-webkit-datetime-edit-fields-wrapper"
        [ Css.property "padding" "0"
        ]
    , Css.Global.selector "::-webkit-date-and-time-value"
        [ Css.property "min-height" "1.5em"
        ]
    , Css.Global.selector "::-webkit-datetime-edit,::-webkit-datetime-edit-year-field,::-webkit-datetime-edit-month-field,::-webkit-datetime-edit-day-field,::-webkit-datetime-edit-hour-field,::-webkit-datetime-edit-minute-field,::-webkit-datetime-edit-second-field,::-webkit-datetime-edit-millisecond-field,::-webkit-datetime-edit-meridiem-field"
        [ Css.property "padding-top" "0"
        , Css.property "padding-bottom" "0"
        ]
    , Css.Global.selector "select"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e\")"
        , Css.property "background-position" "right 0.5rem center"
        , Css.property "background-repeat" "no-repeat"
        , Css.property "background-size" "1.5em 1.5em"
        , Css.property "padding-right" "2.5rem"
        , Css.property "print-color-adjust" "exact"
        ]
    , Css.Global.selector "[multiple]"
        [ Css.property "background-image" "initial"
        , Css.property "background-position" "initial"
        , Css.property "background-repeat" "unset"
        , Css.property "background-size" "initial"
        , Css.property "padding-right" "0.75rem"
        , Css.property "print-color-adjust" "unset"
        ]
    , Css.Global.selector "[type='checkbox'],[type='radio']"
        [ Css.property "appearance" "none"
        , Css.property "padding" "0"
        , Css.property "print-color-adjust" "exact"
        , Css.property "display" "inline-block"
        , Css.property "vertical-align" "middle"
        , Css.property "background-origin" "border-box"
        , Css.property "user-select" "none"
        , Css.property "flex-shrink" "0"
        , Css.property "height" "1rem"
        , Css.property "width" "1rem"
        , Css.property "color" "#2563eb"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "--tw-shadow" "0 0 #0000"
        ]
    , Css.Global.selector "[type='checkbox']"
        [ Css.property "border-radius" "0px"
        ]
    , Css.Global.selector "[type='radio']"
        [ Css.property "border-radius" "100%"
        ]
    , Css.Global.selector "[type='checkbox']:focus,[type='radio']:focus"
        [ Css.property "outline" "2px solid transparent"
        , Css.property "outline-offset" "2px"
        , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
        , Css.property "--tw-ring-offset-width" "2px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "#2563eb"
        , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
        , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
        , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
        ]
    , Css.Global.selector "[type='checkbox']:checked,[type='radio']:checked"
        [ Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        , Css.property "background-size" "100% 100%"
        , Css.property "background-position" "center"
        , Css.property "background-repeat" "no-repeat"
        ]
    , Css.Global.selector "[type='checkbox']:checked"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e\")"
        ]
    , Css.Global.selector "[type='radio']:checked"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e\")"
        ]
    , Css.Global.selector "[type='checkbox']:checked:hover,[type='checkbox']:checked:focus,[type='radio']:checked:hover,[type='radio']:checked:focus"
        [ Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        ]
    , Css.Global.selector "[type='checkbox']:indeterminate"
        [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e\")"
        , Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        , Css.property "background-size" "100% 100%"
        , Css.property "background-position" "center"
        , Css.property "background-repeat" "no-repeat"
        ]
    , Css.Global.selector "[type='checkbox']:indeterminate:hover,[type='checkbox']:indeterminate:focus"
        [ Css.property "border-color" "transparent"
        , Css.property "background-color" "currentColor"
        ]
    , Css.Global.selector "[type='file']"
        [ Css.property "background" "unset"
        , Css.property "border-color" "inherit"
        , Css.property "border-width" "0"
        , Css.property "border-radius" "0"
        , Css.property "padding" "0"
        , Css.property "font-size" "unset"
        , Css.property "line-height" "inherit"
        ]
    , Css.Global.selector "[type='file']:focus"
        [ Css.property "outline" "1px solid ButtonText"
        , Css.property "outline" "1px auto -webkit-focus-ring-color"
        ]
    , Css.Global.selector "*, ::before, ::after"
        [ Css.property "--tw-border-spacing-x" "0"
        , Css.property "--tw-border-spacing-y" "0"
        , Css.property "--tw-translate-x" "0"
        , Css.property "--tw-translate-y" "0"
        , Css.property "--tw-rotate" "0"
        , Css.property "--tw-skew-x" "0"
        , Css.property "--tw-skew-y" "0"
        , Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        , Css.property "--tw-pan-x" " "
        , Css.property "--tw-pan-y" " "
        , Css.property "--tw-pinch-zoom" " "
        , Css.property "--tw-scroll-snap-strictness" "proximity"
        , Css.property "--tw-ordinal" " "
        , Css.property "--tw-slashed-zero" " "
        , Css.property "--tw-numeric-figure" " "
        , Css.property "--tw-numeric-spacing" " "
        , Css.property "--tw-numeric-fraction" " "
        , Css.property "--tw-ring-inset" " "
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "rgb(59 130 246 / 0.5)"
        , Css.property "--tw-ring-offset-shadow" "0 0 #0000"
        , Css.property "--tw-ring-shadow" "0 0 #0000"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "--tw-shadow-colored" "0 0 #0000"
        , Css.property "--tw-blur" " "
        , Css.property "--tw-brightness" " "
        , Css.property "--tw-contrast" " "
        , Css.property "--tw-grayscale" " "
        , Css.property "--tw-hue-rotate" " "
        , Css.property "--tw-invert" " "
        , Css.property "--tw-saturate" " "
        , Css.property "--tw-sepia" " "
        , Css.property "--tw-drop-shadow" " "
        , Css.property "--tw-backdrop-blur" " "
        , Css.property "--tw-backdrop-brightness" " "
        , Css.property "--tw-backdrop-contrast" " "
        , Css.property "--tw-backdrop-grayscale" " "
        , Css.property "--tw-backdrop-hue-rotate" " "
        , Css.property "--tw-backdrop-invert" " "
        , Css.property "--tw-backdrop-opacity" " "
        , Css.property "--tw-backdrop-saturate" " "
        , Css.property "--tw-backdrop-sepia" " "
        ]
    , Css.Global.selector "::backdrop"
        [ Css.property "--tw-border-spacing-x" "0"
        , Css.property "--tw-border-spacing-y" "0"
        , Css.property "--tw-translate-x" "0"
        , Css.property "--tw-translate-y" "0"
        , Css.property "--tw-rotate" "0"
        , Css.property "--tw-skew-x" "0"
        , Css.property "--tw-skew-y" "0"
        , Css.property "--tw-scale-x" "1"
        , Css.property "--tw-scale-y" "1"
        , Css.property "--tw-pan-x" " "
        , Css.property "--tw-pan-y" " "
        , Css.property "--tw-pinch-zoom" " "
        , Css.property "--tw-scroll-snap-strictness" "proximity"
        , Css.property "--tw-ordinal" " "
        , Css.property "--tw-slashed-zero" " "
        , Css.property "--tw-numeric-figure" " "
        , Css.property "--tw-numeric-spacing" " "
        , Css.property "--tw-numeric-fraction" " "
        , Css.property "--tw-ring-inset" " "
        , Css.property "--tw-ring-offset-width" "0px"
        , Css.property "--tw-ring-offset-color" "#fff"
        , Css.property "--tw-ring-color" "rgb(59 130 246 / 0.5)"
        , Css.property "--tw-ring-offset-shadow" "0 0 #0000"
        , Css.property "--tw-ring-shadow" "0 0 #0000"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "--tw-shadow-colored" "0 0 #0000"
        , Css.property "--tw-blur" " "
        , Css.property "--tw-brightness" " "
        , Css.property "--tw-contrast" " "
        , Css.property "--tw-grayscale" " "
        , Css.property "--tw-hue-rotate" " "
        , Css.property "--tw-invert" " "
        , Css.property "--tw-saturate" " "
        , Css.property "--tw-sepia" " "
        , Css.property "--tw-drop-shadow" " "
        , Css.property "--tw-backdrop-blur" " "
        , Css.property "--tw-backdrop-brightness" " "
        , Css.property "--tw-backdrop-contrast" " "
        , Css.property "--tw-backdrop-grayscale" " "
        , Css.property "--tw-backdrop-hue-rotate" " "
        , Css.property "--tw-backdrop-invert" " "
        , Css.property "--tw-backdrop-opacity" " "
        , Css.property "--tw-backdrop-saturate" " "
        , Css.property "--tw-backdrop-sepia" " "
        ]
    ]


{-| This class has the effect of following css declaration:

```css
.absolute {
    position: absolute
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
absolute : Css.Style
absolute =
    Css.property "position" "absolute"


{-| This class has the effect of following css declaration:

```css
.accent-auto {
    accent-color: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
accent_auto : Css.Style
accent_auto =
    Css.property "accent-color" "auto"


{-| This class has the effect of following css declaration:

```css
.align-baseline {
    vertical-align: baseline
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_baseline : Css.Style
align_baseline =
    Css.property "vertical-align" "baseline"


{-| This class has the effect of following css declaration:

```css
.align-bottom {
    vertical-align: bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_bottom : Css.Style
align_bottom =
    Css.property "vertical-align" "bottom"


{-| This class has the effect of following css declaration:

```css
.align-middle {
    vertical-align: middle
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_middle : Css.Style
align_middle =
    Css.property "vertical-align" "middle"


{-| This class has the effect of following css declaration:

```css
.align-sub {
    vertical-align: sub
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_sub : Css.Style
align_sub =
    Css.property "vertical-align" "sub"


{-| This class has the effect of following css declaration:

```css
.align-super {
    vertical-align: super
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_super : Css.Style
align_super =
    Css.property "vertical-align" "super"


{-| This class has the effect of following css declaration:

```css
.align-text-bottom {
    vertical-align: text-bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_text_bottom : Css.Style
align_text_bottom =
    Css.property "vertical-align" "text-bottom"


{-| This class has the effect of following css declaration:

```css
.align-text-top {
    vertical-align: text-top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_text_top : Css.Style
align_text_top =
    Css.property "vertical-align" "text-top"


{-| This class has the effect of following css declaration:

```css
.align-top {
    vertical-align: top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
align_top : Css.Style
align_top =
    Css.property "vertical-align" "top"


{-| This class has the effect of following css declaration:

```css
.animate-bounce {
    animation: bounce 1s infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_bounce : Css.Style
animate_bounce =
    Css.batch
        [ Css.property "animation" "1s infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 0
                  , [ Css.Animations.property "transform" "translateY(-25%)"
                    , Css.Animations.property "animation-timing-function" "cubic-bezier(0.8,0,1,1)"
                    ]
                  )
                , ( 50
                  , [ Css.Animations.property "transform" "none"
                    , Css.Animations.property "animation-timing-function" "cubic-bezier(0,0,0.2,1)"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.animate-none {
    animation: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_none : Css.Style
animate_none =
    Css.property "animation" "none"


{-| This class has the effect of following css declaration:

```css
.animate-ping {
    animation: ping 1s cubic-bezier(0, 0, 0.2, 1) infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_ping : Css.Style
animate_ping =
    Css.batch
        [ Css.property "animation" "1s cubic-bezier(0, 0, 0.2, 1) infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 75
                  , [ Css.Animations.property "transform" "scale(2)"
                    , Css.Animations.property "opacity" "0"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.animate-pulse {
    animation: pulse 2s cubic-bezier(0.4, 0, 0.6, 1) infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_pulse : Css.Style
animate_pulse =
    Css.batch
        [ Css.property "animation" "2s cubic-bezier(0.4, 0, 0.6, 1) infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 50
                  , [ Css.Animations.property "opacity" ".5"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.animate-spin {
    animation: spin 1s linear infinite
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
animate_spin : Css.Style
animate_spin =
    Css.batch
        [ Css.property "animation" "1s linear infinite"
        , Css.animationName
            (Css.Animations.keyframes
                [ ( 100
                  , [ Css.Animations.property "transform" "rotate(360deg)"
                    ]
                  )
                ]
            )
        ]


{-| This class has the effect of following css declaration:

```css
.antialiased {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
antialiased : Css.Style
antialiased =
    Css.batch
        [ Css.property "-webkit-font-smoothing" "antialiased"
        , Css.property "-moz-osx-font-smoothing" "grayscale"
        ]


{-| This class has the effect of following css declaration:

```css
.appearance-none {
    appearance: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
appearance_none : Css.Style
appearance_none =
    Css.property "appearance" "none"


{-| This class has the effect of following css declaration:

```css
.aspect-1 {
    aspect-ratio: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_1 : Css.Style
aspect_1 =
    Css.property "aspect-ratio" "1"


{-| This class has the effect of following css declaration:

```css
.aspect-10 {
    aspect-ratio: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_10 : Css.Style
aspect_10 =
    Css.property "aspect-ratio" "10"


{-| This class has the effect of following css declaration:

```css
.aspect-11 {
    aspect-ratio: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_11 : Css.Style
aspect_11 =
    Css.property "aspect-ratio" "11"


{-| This class has the effect of following css declaration:

```css
.aspect-12 {
    aspect-ratio: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_12 : Css.Style
aspect_12 =
    Css.property "aspect-ratio" "12"


{-| This class has the effect of following css declaration:

```css
.aspect-13 {
    aspect-ratio: 13
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_13 : Css.Style
aspect_13 =
    Css.property "aspect-ratio" "13"


{-| This class has the effect of following css declaration:

```css
.aspect-14 {
    aspect-ratio: 14
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_14 : Css.Style
aspect_14 =
    Css.property "aspect-ratio" "14"


{-| This class has the effect of following css declaration:

```css
.aspect-15 {
    aspect-ratio: 15
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_15 : Css.Style
aspect_15 =
    Css.property "aspect-ratio" "15"


{-| This class has the effect of following css declaration:

```css
.aspect-16 {
    aspect-ratio: 16
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_16 : Css.Style
aspect_16 =
    Css.property "aspect-ratio" "16"


{-| This class has the effect of following css declaration:

```css
.aspect-2 {
    aspect-ratio: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_2 : Css.Style
aspect_2 =
    Css.property "aspect-ratio" "2"


{-| This class has the effect of following css declaration:

```css
.aspect-3 {
    aspect-ratio: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_3 : Css.Style
aspect_3 =
    Css.property "aspect-ratio" "3"


{-| This class has the effect of following css declaration:

```css
.aspect-4 {
    aspect-ratio: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_4 : Css.Style
aspect_4 =
    Css.property "aspect-ratio" "4"


{-| This class has the effect of following css declaration:

```css
.aspect-5 {
    aspect-ratio: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_5 : Css.Style
aspect_5 =
    Css.property "aspect-ratio" "5"


{-| This class has the effect of following css declaration:

```css
.aspect-6 {
    aspect-ratio: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_6 : Css.Style
aspect_6 =
    Css.property "aspect-ratio" "6"


{-| This class has the effect of following css declaration:

```css
.aspect-7 {
    aspect-ratio: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_7 : Css.Style
aspect_7 =
    Css.property "aspect-ratio" "7"


{-| This class has the effect of following css declaration:

```css
.aspect-8 {
    aspect-ratio: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_8 : Css.Style
aspect_8 =
    Css.property "aspect-ratio" "8"


{-| This class has the effect of following css declaration:

```css
.aspect-9 {
    aspect-ratio: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_9 : Css.Style
aspect_9 =
    Css.property "aspect-ratio" "9"


{-| This class has the effect of following css declaration:

```css
.aspect-h-1 {
    --tw-aspect-h: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_1 : Css.Style
aspect_h_1 =
    Css.property "--tw-aspect-h" "1"


{-| This class has the effect of following css declaration:

```css
.aspect-h-10 {
    --tw-aspect-h: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_10 : Css.Style
aspect_h_10 =
    Css.property "--tw-aspect-h" "10"


{-| This class has the effect of following css declaration:

```css
.aspect-h-11 {
    --tw-aspect-h: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_11 : Css.Style
aspect_h_11 =
    Css.property "--tw-aspect-h" "11"


{-| This class has the effect of following css declaration:

```css
.aspect-h-12 {
    --tw-aspect-h: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_12 : Css.Style
aspect_h_12 =
    Css.property "--tw-aspect-h" "12"


{-| This class has the effect of following css declaration:

```css
.aspect-h-13 {
    --tw-aspect-h: 13
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_13 : Css.Style
aspect_h_13 =
    Css.property "--tw-aspect-h" "13"


{-| This class has the effect of following css declaration:

```css
.aspect-h-14 {
    --tw-aspect-h: 14
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_14 : Css.Style
aspect_h_14 =
    Css.property "--tw-aspect-h" "14"


{-| This class has the effect of following css declaration:

```css
.aspect-h-15 {
    --tw-aspect-h: 15
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_15 : Css.Style
aspect_h_15 =
    Css.property "--tw-aspect-h" "15"


{-| This class has the effect of following css declaration:

```css
.aspect-h-16 {
    --tw-aspect-h: 16
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_16 : Css.Style
aspect_h_16 =
    Css.property "--tw-aspect-h" "16"


{-| This class has the effect of following css declaration:

```css
.aspect-h-2 {
    --tw-aspect-h: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_2 : Css.Style
aspect_h_2 =
    Css.property "--tw-aspect-h" "2"


{-| This class has the effect of following css declaration:

```css
.aspect-h-3 {
    --tw-aspect-h: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_3 : Css.Style
aspect_h_3 =
    Css.property "--tw-aspect-h" "3"


{-| This class has the effect of following css declaration:

```css
.aspect-h-4 {
    --tw-aspect-h: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_4 : Css.Style
aspect_h_4 =
    Css.property "--tw-aspect-h" "4"


{-| This class has the effect of following css declaration:

```css
.aspect-h-5 {
    --tw-aspect-h: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_5 : Css.Style
aspect_h_5 =
    Css.property "--tw-aspect-h" "5"


{-| This class has the effect of following css declaration:

```css
.aspect-h-6 {
    --tw-aspect-h: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_6 : Css.Style
aspect_h_6 =
    Css.property "--tw-aspect-h" "6"


{-| This class has the effect of following css declaration:

```css
.aspect-h-7 {
    --tw-aspect-h: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_7 : Css.Style
aspect_h_7 =
    Css.property "--tw-aspect-h" "7"


{-| This class has the effect of following css declaration:

```css
.aspect-h-8 {
    --tw-aspect-h: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_8 : Css.Style
aspect_h_8 =
    Css.property "--tw-aspect-h" "8"


{-| This class has the effect of following css declaration:

```css
.aspect-h-9 {
    --tw-aspect-h: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_h_9 : Css.Style
aspect_h_9 =
    Css.property "--tw-aspect-h" "9"


{-| This class combines the effects of following css declarations:

```css
.aspect-none {
    position: static;
    padding-bottom: 0
}

.aspect-none > * {
    position: static;
    height: auto;
    width: auto;
    top: auto;
    right: auto;
    bottom: auto;
    left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_none : Css.Style
aspect_none =
    Css.batch
        [ Css.property "position" "static"
        , Css.property "padding-bottom" "0"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "static"
                , Css.property "height" "auto"
                , Css.property "width" "auto"
                , Css.property "top" "auto"
                , Css.property "right" "auto"
                , Css.property "bottom" "auto"
                , Css.property "left" "auto"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-1 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 1
}

.aspect-w-1 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_1 : Css.Style
aspect_w_1 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "1"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-10 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 10
}

.aspect-w-10 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_10 : Css.Style
aspect_w_10 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "10"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-11 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 11
}

.aspect-w-11 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_11 : Css.Style
aspect_w_11 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "11"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-12 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 12
}

.aspect-w-12 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_12 : Css.Style
aspect_w_12 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "12"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-13 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 13
}

.aspect-w-13 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_13 : Css.Style
aspect_w_13 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "13"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-14 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 14
}

.aspect-w-14 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_14 : Css.Style
aspect_w_14 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "14"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-15 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 15
}

.aspect-w-15 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_15 : Css.Style
aspect_w_15 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "15"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-16 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 16
}

.aspect-w-16 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_16 : Css.Style
aspect_w_16 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "16"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-2 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 2
}

.aspect-w-2 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_2 : Css.Style
aspect_w_2 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "2"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-3 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 3
}

.aspect-w-3 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_3 : Css.Style
aspect_w_3 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "3"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-4 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 4
}

.aspect-w-4 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_4 : Css.Style
aspect_w_4 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "4"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-5 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 5
}

.aspect-w-5 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_5 : Css.Style
aspect_w_5 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "5"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-6 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 6
}

.aspect-w-6 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_6 : Css.Style
aspect_w_6 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "6"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-7 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 7
}

.aspect-w-7 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_7 : Css.Style
aspect_w_7 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "7"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-8 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 8
}

.aspect-w-8 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_8 : Css.Style
aspect_w_8 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "8"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.aspect-w-9 {
    position: relative;
    padding-bottom: calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%);
    --tw-aspect-w: 9
}

.aspect-w-9 > * {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
aspect_w_9 : Css.Style
aspect_w_9 =
    Css.batch
        [ Css.property "position" "relative"
        , Css.property "padding-bottom" "calc(var(--tw-aspect-h) / var(--tw-aspect-w) * 100%)"
        , Css.property "--tw-aspect-w" "9"
        , Css.Global.children
            [ Css.Global.selector "*"
                [ Css.property "position" "absolute"
                , Css.property "height" "100%"
                , Css.property "width" "100%"
                , Css.property "top" "0"
                , Css.property "right" "0"
                , Css.property "bottom" "0"
                , Css.property "left" "0"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.auto-cols-auto {
    grid-auto-columns: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_auto : Css.Style
auto_cols_auto =
    Css.property "grid-auto-columns" "auto"


{-| This class has the effect of following css declaration:

```css
.auto-cols-fr {
    grid-auto-columns: minmax(0, 1fr)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_fr : Css.Style
auto_cols_fr =
    Css.property "grid-auto-columns" "minmax(0, 1fr)"


{-| This class has the effect of following css declaration:

```css
.auto-cols-max {
    grid-auto-columns: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_max : Css.Style
auto_cols_max =
    Css.property "grid-auto-columns" "max-content"


{-| This class has the effect of following css declaration:

```css
.auto-cols-min {
    grid-auto-columns: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_cols_min : Css.Style
auto_cols_min =
    Css.property "grid-auto-columns" "min-content"


{-| This class has the effect of following css declaration:

```css
.auto-rows-auto {
    grid-auto-rows: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_auto : Css.Style
auto_rows_auto =
    Css.property "grid-auto-rows" "auto"


{-| This class has the effect of following css declaration:

```css
.auto-rows-fr {
    grid-auto-rows: minmax(0, 1fr)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_fr : Css.Style
auto_rows_fr =
    Css.property "grid-auto-rows" "minmax(0, 1fr)"


{-| This class has the effect of following css declaration:

```css
.auto-rows-max {
    grid-auto-rows: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_max : Css.Style
auto_rows_max =
    Css.property "grid-auto-rows" "max-content"


{-| This class has the effect of following css declaration:

```css
.auto-rows-min {
    grid-auto-rows: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
auto_rows_min : Css.Style
auto_rows_min =
    Css.property "grid-auto-rows" "min-content"


{-| This class has the effect of following css declaration:

```css
.backdrop-blur {
    --tw-backdrop-blur: blur(8px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur : Css.Style
backdrop_blur =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(8px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-0 {
    --tw-backdrop-blur: blur(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_0 : Css.Style
backdrop_blur_0 =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-2xl {
    --tw-backdrop-blur: blur(40px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_2xl : Css.Style
backdrop_blur_2xl =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(40px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-3xl {
    --tw-backdrop-blur: blur(64px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_3xl : Css.Style
backdrop_blur_3xl =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(64px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-lg {
    --tw-backdrop-blur: blur(16px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_lg : Css.Style
backdrop_blur_lg =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(16px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-md {
    --tw-backdrop-blur: blur(12px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_md : Css.Style
backdrop_blur_md =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(12px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-none {
    --tw-backdrop-blur: blur(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_none : Css.Style
backdrop_blur_none =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-sm {
    --tw-backdrop-blur: blur(4px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_sm : Css.Style
backdrop_blur_sm =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(4px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-blur-xl {
    --tw-backdrop-blur: blur(24px);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_blur_xl : Css.Style
backdrop_blur_xl =
    Css.batch
        [ Css.property "--tw-backdrop-blur" "blur(24px)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-0 {
    --tw-backdrop-brightness: brightness(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_0 : Css.Style
backdrop_brightness_0 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-100 {
    --tw-backdrop-brightness: brightness(1);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_100 : Css.Style
backdrop_brightness_100 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(1)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-105 {
    --tw-backdrop-brightness: brightness(1.05);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_105 : Css.Style
backdrop_brightness_105 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(1.05)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-110 {
    --tw-backdrop-brightness: brightness(1.1);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_110 : Css.Style
backdrop_brightness_110 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(1.1)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-125 {
    --tw-backdrop-brightness: brightness(1.25);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_125 : Css.Style
backdrop_brightness_125 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(1.25)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-150 {
    --tw-backdrop-brightness: brightness(1.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_150 : Css.Style
backdrop_brightness_150 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(1.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-200 {
    --tw-backdrop-brightness: brightness(2);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_200 : Css.Style
backdrop_brightness_200 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(2)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-50 {
    --tw-backdrop-brightness: brightness(.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_50 : Css.Style
backdrop_brightness_50 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-75 {
    --tw-backdrop-brightness: brightness(.75);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_75 : Css.Style
backdrop_brightness_75 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(.75)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-90 {
    --tw-backdrop-brightness: brightness(.9);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_90 : Css.Style
backdrop_brightness_90 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(.9)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-brightness-95 {
    --tw-backdrop-brightness: brightness(.95);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_brightness_95 : Css.Style
backdrop_brightness_95 =
    Css.batch
        [ Css.property "--tw-backdrop-brightness" "brightness(.95)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-0 {
    --tw-backdrop-contrast: contrast(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_0 : Css.Style
backdrop_contrast_0 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-100 {
    --tw-backdrop-contrast: contrast(1);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_100 : Css.Style
backdrop_contrast_100 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(1)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-125 {
    --tw-backdrop-contrast: contrast(1.25);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_125 : Css.Style
backdrop_contrast_125 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(1.25)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-150 {
    --tw-backdrop-contrast: contrast(1.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_150 : Css.Style
backdrop_contrast_150 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(1.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-200 {
    --tw-backdrop-contrast: contrast(2);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_200 : Css.Style
backdrop_contrast_200 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(2)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-50 {
    --tw-backdrop-contrast: contrast(.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_50 : Css.Style
backdrop_contrast_50 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-contrast-75 {
    --tw-backdrop-contrast: contrast(.75);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_contrast_75 : Css.Style
backdrop_contrast_75 =
    Css.batch
        [ Css.property "--tw-backdrop-contrast" "contrast(.75)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-filter {
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_filter : Css.Style
backdrop_filter =
    Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"


{-| This class has the effect of following css declaration:

```css
.backdrop-filter-none {
    backdrop-filter: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_filter_none : Css.Style
backdrop_filter_none =
    Css.property "backdrop-filter" "none"


{-| This class has the effect of following css declaration:

```css
.backdrop-grayscale {
    --tw-backdrop-grayscale: grayscale(100%);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_grayscale : Css.Style
backdrop_grayscale =
    Css.batch
        [ Css.property "--tw-backdrop-grayscale" "grayscale(100%)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-grayscale-0 {
    --tw-backdrop-grayscale: grayscale(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_grayscale_0 : Css.Style
backdrop_grayscale_0 =
    Css.batch
        [ Css.property "--tw-backdrop-grayscale" "grayscale(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-0 {
    --tw-backdrop-hue-rotate: hue-rotate(0deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_0 : Css.Style
backdrop_hue_rotate_0 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(0deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-15 {
    --tw-backdrop-hue-rotate: hue-rotate(15deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_15 : Css.Style
backdrop_hue_rotate_15 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(15deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-180 {
    --tw-backdrop-hue-rotate: hue-rotate(180deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_180 : Css.Style
backdrop_hue_rotate_180 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(180deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-30 {
    --tw-backdrop-hue-rotate: hue-rotate(30deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_30 : Css.Style
backdrop_hue_rotate_30 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(30deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-60 {
    --tw-backdrop-hue-rotate: hue-rotate(60deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_60 : Css.Style
backdrop_hue_rotate_60 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(60deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-hue-rotate-90 {
    --tw-backdrop-hue-rotate: hue-rotate(90deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_hue_rotate_90 : Css.Style
backdrop_hue_rotate_90 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(90deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-invert {
    --tw-backdrop-invert: invert(100%);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_invert : Css.Style
backdrop_invert =
    Css.batch
        [ Css.property "--tw-backdrop-invert" "invert(100%)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-invert-0 {
    --tw-backdrop-invert: invert(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_invert_0 : Css.Style
backdrop_invert_0 =
    Css.batch
        [ Css.property "--tw-backdrop-invert" "invert(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-0 {
    --tw-backdrop-opacity: opacity(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_0 : Css.Style
backdrop_opacity_0 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-10 {
    --tw-backdrop-opacity: opacity(0.1);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_10 : Css.Style
backdrop_opacity_10 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.1)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-100 {
    --tw-backdrop-opacity: opacity(1);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_100 : Css.Style
backdrop_opacity_100 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(1)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-20 {
    --tw-backdrop-opacity: opacity(0.2);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_20 : Css.Style
backdrop_opacity_20 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.2)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-25 {
    --tw-backdrop-opacity: opacity(0.25);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_25 : Css.Style
backdrop_opacity_25 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.25)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-30 {
    --tw-backdrop-opacity: opacity(0.3);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_30 : Css.Style
backdrop_opacity_30 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.3)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-40 {
    --tw-backdrop-opacity: opacity(0.4);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_40 : Css.Style
backdrop_opacity_40 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.4)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-5 {
    --tw-backdrop-opacity: opacity(0.05);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_5 : Css.Style
backdrop_opacity_5 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.05)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-50 {
    --tw-backdrop-opacity: opacity(0.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_50 : Css.Style
backdrop_opacity_50 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-60 {
    --tw-backdrop-opacity: opacity(0.6);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_60 : Css.Style
backdrop_opacity_60 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.6)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-70 {
    --tw-backdrop-opacity: opacity(0.7);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_70 : Css.Style
backdrop_opacity_70 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.7)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-75 {
    --tw-backdrop-opacity: opacity(0.75);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_75 : Css.Style
backdrop_opacity_75 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.75)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-80 {
    --tw-backdrop-opacity: opacity(0.8);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_80 : Css.Style
backdrop_opacity_80 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.8)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-90 {
    --tw-backdrop-opacity: opacity(0.9);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_90 : Css.Style
backdrop_opacity_90 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.9)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-opacity-95 {
    --tw-backdrop-opacity: opacity(0.95);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_opacity_95 : Css.Style
backdrop_opacity_95 =
    Css.batch
        [ Css.property "--tw-backdrop-opacity" "opacity(0.95)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-0 {
    --tw-backdrop-saturate: saturate(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_0 : Css.Style
backdrop_saturate_0 =
    Css.batch
        [ Css.property "--tw-backdrop-saturate" "saturate(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-100 {
    --tw-backdrop-saturate: saturate(1);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_100 : Css.Style
backdrop_saturate_100 =
    Css.batch
        [ Css.property "--tw-backdrop-saturate" "saturate(1)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-150 {
    --tw-backdrop-saturate: saturate(1.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_150 : Css.Style
backdrop_saturate_150 =
    Css.batch
        [ Css.property "--tw-backdrop-saturate" "saturate(1.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-200 {
    --tw-backdrop-saturate: saturate(2);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_200 : Css.Style
backdrop_saturate_200 =
    Css.batch
        [ Css.property "--tw-backdrop-saturate" "saturate(2)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-saturate-50 {
    --tw-backdrop-saturate: saturate(.5);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_saturate_50 : Css.Style
backdrop_saturate_50 =
    Css.batch
        [ Css.property "--tw-backdrop-saturate" "saturate(.5)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-sepia {
    --tw-backdrop-sepia: sepia(100%);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_sepia : Css.Style
backdrop_sepia =
    Css.batch
        [ Css.property "--tw-backdrop-sepia" "sepia(100%)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.backdrop-sepia-0 {
    --tw-backdrop-sepia: sepia(0);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
backdrop_sepia_0 : Css.Style
backdrop_sepia_0 =
    Css.batch
        [ Css.property "--tw-backdrop-sepia" "sepia(0)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.basis-0 {
    flex-basis: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_0 : Css.Style
basis_0 =
    Css.property "flex-basis" "0px"


{-| This class has the effect of following css declaration:

```css
.basis-0\.5 {
    flex-basis: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_0_dot_5 : Css.Style
basis_0_dot_5 =
    Css.property "flex-basis" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.basis-1 {
    flex-basis: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1 : Css.Style
basis_1 =
    Css.property "flex-basis" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.basis-10 {
    flex-basis: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_10 : Css.Style
basis_10 =
    Css.property "flex-basis" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.basis-10\/12 {
    flex-basis: 83.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_10over12 : Css.Style
basis_10over12 =
    Css.property "flex-basis" "83.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-11 {
    flex-basis: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_11 : Css.Style
basis_11 =
    Css.property "flex-basis" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.basis-11\/12 {
    flex-basis: 91.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_11over12 : Css.Style
basis_11over12 =
    Css.property "flex-basis" "91.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-12 {
    flex-basis: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_12 : Css.Style
basis_12 =
    Css.property "flex-basis" "3rem"


{-| This class has the effect of following css declaration:

```css
.basis-14 {
    flex-basis: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_14 : Css.Style
basis_14 =
    Css.property "flex-basis" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.basis-16 {
    flex-basis: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_16 : Css.Style
basis_16 =
    Css.property "flex-basis" "4rem"


{-| This class has the effect of following css declaration:

```css
.basis-1\.5 {
    flex-basis: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1_dot_5 : Css.Style
basis_1_dot_5 =
    Css.property "flex-basis" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.basis-1\/12 {
    flex-basis: 8.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1over12 : Css.Style
basis_1over12 =
    Css.property "flex-basis" "8.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-1\/2 {
    flex-basis: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1over2 : Css.Style
basis_1over2 =
    Css.property "flex-basis" "50%"


{-| This class has the effect of following css declaration:

```css
.basis-1\/3 {
    flex-basis: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1over3 : Css.Style
basis_1over3 =
    Css.property "flex-basis" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-1\/4 {
    flex-basis: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1over4 : Css.Style
basis_1over4 =
    Css.property "flex-basis" "25%"


{-| This class has the effect of following css declaration:

```css
.basis-1\/5 {
    flex-basis: 20%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1over5 : Css.Style
basis_1over5 =
    Css.property "flex-basis" "20%"


{-| This class has the effect of following css declaration:

```css
.basis-1\/6 {
    flex-basis: 16.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_1over6 : Css.Style
basis_1over6 =
    Css.property "flex-basis" "16.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-2 {
    flex-basis: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2 : Css.Style
basis_2 =
    Css.property "flex-basis" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.basis-20 {
    flex-basis: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_20 : Css.Style
basis_20 =
    Css.property "flex-basis" "5rem"


{-| This class has the effect of following css declaration:

```css
.basis-24 {
    flex-basis: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_24 : Css.Style
basis_24 =
    Css.property "flex-basis" "6rem"


{-| This class has the effect of following css declaration:

```css
.basis-28 {
    flex-basis: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_28 : Css.Style
basis_28 =
    Css.property "flex-basis" "7rem"


{-| This class has the effect of following css declaration:

```css
.basis-2\.5 {
    flex-basis: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2_dot_5 : Css.Style
basis_2_dot_5 =
    Css.property "flex-basis" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.basis-2\/12 {
    flex-basis: 16.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2over12 : Css.Style
basis_2over12 =
    Css.property "flex-basis" "16.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-2\/3 {
    flex-basis: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2over3 : Css.Style
basis_2over3 =
    Css.property "flex-basis" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-2\/4 {
    flex-basis: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2over4 : Css.Style
basis_2over4 =
    Css.property "flex-basis" "50%"


{-| This class has the effect of following css declaration:

```css
.basis-2\/5 {
    flex-basis: 40%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2over5 : Css.Style
basis_2over5 =
    Css.property "flex-basis" "40%"


{-| This class has the effect of following css declaration:

```css
.basis-2\/6 {
    flex-basis: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_2over6 : Css.Style
basis_2over6 =
    Css.property "flex-basis" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-3 {
    flex-basis: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_3 : Css.Style
basis_3 =
    Css.property "flex-basis" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.basis-32 {
    flex-basis: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_32 : Css.Style
basis_32 =
    Css.property "flex-basis" "8rem"


{-| This class has the effect of following css declaration:

```css
.basis-36 {
    flex-basis: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_36 : Css.Style
basis_36 =
    Css.property "flex-basis" "9rem"


{-| This class has the effect of following css declaration:

```css
.basis-3\.5 {
    flex-basis: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_3_dot_5 : Css.Style
basis_3_dot_5 =
    Css.property "flex-basis" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.basis-3\/12 {
    flex-basis: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_3over12 : Css.Style
basis_3over12 =
    Css.property "flex-basis" "25%"


{-| This class has the effect of following css declaration:

```css
.basis-3\/4 {
    flex-basis: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_3over4 : Css.Style
basis_3over4 =
    Css.property "flex-basis" "75%"


{-| This class has the effect of following css declaration:

```css
.basis-3\/5 {
    flex-basis: 60%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_3over5 : Css.Style
basis_3over5 =
    Css.property "flex-basis" "60%"


{-| This class has the effect of following css declaration:

```css
.basis-3\/6 {
    flex-basis: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_3over6 : Css.Style
basis_3over6 =
    Css.property "flex-basis" "50%"


{-| This class has the effect of following css declaration:

```css
.basis-4 {
    flex-basis: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_4 : Css.Style
basis_4 =
    Css.property "flex-basis" "1rem"


{-| This class has the effect of following css declaration:

```css
.basis-40 {
    flex-basis: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_40 : Css.Style
basis_40 =
    Css.property "flex-basis" "10rem"


{-| This class has the effect of following css declaration:

```css
.basis-44 {
    flex-basis: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_44 : Css.Style
basis_44 =
    Css.property "flex-basis" "11rem"


{-| This class has the effect of following css declaration:

```css
.basis-48 {
    flex-basis: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_48 : Css.Style
basis_48 =
    Css.property "flex-basis" "12rem"


{-| This class has the effect of following css declaration:

```css
.basis-4\/12 {
    flex-basis: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_4over12 : Css.Style
basis_4over12 =
    Css.property "flex-basis" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-4\/5 {
    flex-basis: 80%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_4over5 : Css.Style
basis_4over5 =
    Css.property "flex-basis" "80%"


{-| This class has the effect of following css declaration:

```css
.basis-4\/6 {
    flex-basis: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_4over6 : Css.Style
basis_4over6 =
    Css.property "flex-basis" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-5 {
    flex-basis: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_5 : Css.Style
basis_5 =
    Css.property "flex-basis" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.basis-52 {
    flex-basis: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_52 : Css.Style
basis_52 =
    Css.property "flex-basis" "13rem"


{-| This class has the effect of following css declaration:

```css
.basis-56 {
    flex-basis: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_56 : Css.Style
basis_56 =
    Css.property "flex-basis" "14rem"


{-| This class has the effect of following css declaration:

```css
.basis-5\/12 {
    flex-basis: 41.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_5over12 : Css.Style
basis_5over12 =
    Css.property "flex-basis" "41.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-5\/6 {
    flex-basis: 83.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_5over6 : Css.Style
basis_5over6 =
    Css.property "flex-basis" "83.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-6 {
    flex-basis: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_6 : Css.Style
basis_6 =
    Css.property "flex-basis" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.basis-60 {
    flex-basis: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_60 : Css.Style
basis_60 =
    Css.property "flex-basis" "15rem"


{-| This class has the effect of following css declaration:

```css
.basis-64 {
    flex-basis: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_64 : Css.Style
basis_64 =
    Css.property "flex-basis" "16rem"


{-| This class has the effect of following css declaration:

```css
.basis-6\/12 {
    flex-basis: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_6over12 : Css.Style
basis_6over12 =
    Css.property "flex-basis" "50%"


{-| This class has the effect of following css declaration:

```css
.basis-7 {
    flex-basis: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_7 : Css.Style
basis_7 =
    Css.property "flex-basis" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.basis-72 {
    flex-basis: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_72 : Css.Style
basis_72 =
    Css.property "flex-basis" "18rem"


{-| This class has the effect of following css declaration:

```css
.basis-7\/12 {
    flex-basis: 58.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_7over12 : Css.Style
basis_7over12 =
    Css.property "flex-basis" "58.333333%"


{-| This class has the effect of following css declaration:

```css
.basis-8 {
    flex-basis: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_8 : Css.Style
basis_8 =
    Css.property "flex-basis" "2rem"


{-| This class has the effect of following css declaration:

```css
.basis-80 {
    flex-basis: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_80 : Css.Style
basis_80 =
    Css.property "flex-basis" "20rem"


{-| This class has the effect of following css declaration:

```css
.basis-8\/12 {
    flex-basis: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_8over12 : Css.Style
basis_8over12 =
    Css.property "flex-basis" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.basis-9 {
    flex-basis: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_9 : Css.Style
basis_9 =
    Css.property "flex-basis" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.basis-96 {
    flex-basis: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_96 : Css.Style
basis_96 =
    Css.property "flex-basis" "24rem"


{-| This class has the effect of following css declaration:

```css
.basis-9\/12 {
    flex-basis: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_9over12 : Css.Style
basis_9over12 =
    Css.property "flex-basis" "75%"


{-| This class has the effect of following css declaration:

```css
.basis-auto {
    flex-basis: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_auto : Css.Style
basis_auto =
    Css.property "flex-basis" "auto"


{-| This class has the effect of following css declaration:

```css
.basis-full {
    flex-basis: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_full : Css.Style
basis_full =
    Css.property "flex-basis" "100%"


{-| This class has the effect of following css declaration:

```css
.basis-px {
    flex-basis: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
basis_px : Css.Style
basis_px =
    Css.property "flex-basis" "1px"


{-| This class has the effect of following css declaration:

```css
.bg-auto {
    background-size: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_auto : Css.Style
bg_auto =
    Css.property "background-size" "auto"


{-| This class has the effect of following css declaration:

```css
.bg-blend-color {
    background-blend-mode: color
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_color : Css.Style
bg_blend_color =
    Css.property "background-blend-mode" "color"


{-| This class has the effect of following css declaration:

```css
.bg-blend-color-burn {
    background-blend-mode: color-burn
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_color_burn : Css.Style
bg_blend_color_burn =
    Css.property "background-blend-mode" "color-burn"


{-| This class has the effect of following css declaration:

```css
.bg-blend-color-dodge {
    background-blend-mode: color-dodge
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_color_dodge : Css.Style
bg_blend_color_dodge =
    Css.property "background-blend-mode" "color-dodge"


{-| This class has the effect of following css declaration:

```css
.bg-blend-darken {
    background-blend-mode: darken
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_darken : Css.Style
bg_blend_darken =
    Css.property "background-blend-mode" "darken"


{-| This class has the effect of following css declaration:

```css
.bg-blend-difference {
    background-blend-mode: difference
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_difference : Css.Style
bg_blend_difference =
    Css.property "background-blend-mode" "difference"


{-| This class has the effect of following css declaration:

```css
.bg-blend-exclusion {
    background-blend-mode: exclusion
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_exclusion : Css.Style
bg_blend_exclusion =
    Css.property "background-blend-mode" "exclusion"


{-| This class has the effect of following css declaration:

```css
.bg-blend-hard-light {
    background-blend-mode: hard-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_hard_light : Css.Style
bg_blend_hard_light =
    Css.property "background-blend-mode" "hard-light"


{-| This class has the effect of following css declaration:

```css
.bg-blend-hue {
    background-blend-mode: hue
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_hue : Css.Style
bg_blend_hue =
    Css.property "background-blend-mode" "hue"


{-| This class has the effect of following css declaration:

```css
.bg-blend-lighten {
    background-blend-mode: lighten
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_lighten : Css.Style
bg_blend_lighten =
    Css.property "background-blend-mode" "lighten"


{-| This class has the effect of following css declaration:

```css
.bg-blend-luminosity {
    background-blend-mode: luminosity
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_luminosity : Css.Style
bg_blend_luminosity =
    Css.property "background-blend-mode" "luminosity"


{-| This class has the effect of following css declaration:

```css
.bg-blend-multiply {
    background-blend-mode: multiply
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_multiply : Css.Style
bg_blend_multiply =
    Css.property "background-blend-mode" "multiply"


{-| This class has the effect of following css declaration:

```css
.bg-blend-normal {
    background-blend-mode: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_normal : Css.Style
bg_blend_normal =
    Css.property "background-blend-mode" "normal"


{-| This class has the effect of following css declaration:

```css
.bg-blend-overlay {
    background-blend-mode: overlay
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_overlay : Css.Style
bg_blend_overlay =
    Css.property "background-blend-mode" "overlay"


{-| This class has the effect of following css declaration:

```css
.bg-blend-saturation {
    background-blend-mode: saturation
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_saturation : Css.Style
bg_blend_saturation =
    Css.property "background-blend-mode" "saturation"


{-| This class has the effect of following css declaration:

```css
.bg-blend-screen {
    background-blend-mode: screen
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_screen : Css.Style
bg_blend_screen =
    Css.property "background-blend-mode" "screen"


{-| This class has the effect of following css declaration:

```css
.bg-blend-soft-light {
    background-blend-mode: soft-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_blend_soft_light : Css.Style
bg_blend_soft_light =
    Css.property "background-blend-mode" "soft-light"


{-| This class has the effect of following css declaration:

```css
.bg-bottom {
    background-position: bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_bottom : Css.Style
bg_bottom =
    Css.property "background-position" "bottom"


{-| This class has the effect of following css declaration:

```css
.bg-center {
    background-position: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_center : Css.Style
bg_center =
    Css.property "background-position" "center"


{-| This class has the effect of following css declaration:

```css
.bg-clip-border {
    background-clip: border-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_border : Css.Style
bg_clip_border =
    Css.property "background-clip" "border-box"


{-| This class has the effect of following css declaration:

```css
.bg-clip-content {
    background-clip: content-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_content : Css.Style
bg_clip_content =
    Css.property "background-clip" "content-box"


{-| This class has the effect of following css declaration:

```css
.bg-clip-padding {
    background-clip: padding-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_padding : Css.Style
bg_clip_padding =
    Css.property "background-clip" "padding-box"


{-| This class has the effect of following css declaration:

```css
.bg-clip-text {
    background-clip: text
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_clip_text : Css.Style
bg_clip_text =
    Css.property "background-clip" "text"


{-| This class has the effect of following css declaration:

```css
.bg-contain {
    background-size: contain
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_contain : Css.Style
bg_contain =
    Css.property "background-size" "contain"


{-| This class has the effect of following css declaration:

```css
.bg-cover {
    background-size: cover
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_cover : Css.Style
bg_cover =
    Css.property "background-size" "cover"


{-| This class has the effect of following css declaration:

```css
.bg-fixed {
    background-attachment: fixed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_fixed : Css.Style
bg_fixed =
    Css.property "background-attachment" "fixed"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-b {
    background-image: linear-gradient(to bottom, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_b : Css.Style
bg_gradient_to_b =
    Css.property "background-image" "linear-gradient(to bottom, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-bl {
    background-image: linear-gradient(to bottom left, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_bl : Css.Style
bg_gradient_to_bl =
    Css.property "background-image" "linear-gradient(to bottom left, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-br {
    background-image: linear-gradient(to bottom right, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_br : Css.Style
bg_gradient_to_br =
    Css.property "background-image" "linear-gradient(to bottom right, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-l {
    background-image: linear-gradient(to left, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_l : Css.Style
bg_gradient_to_l =
    Css.property "background-image" "linear-gradient(to left, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-r {
    background-image: linear-gradient(to right, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_r : Css.Style
bg_gradient_to_r =
    Css.property "background-image" "linear-gradient(to right, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-t {
    background-image: linear-gradient(to top, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_t : Css.Style
bg_gradient_to_t =
    Css.property "background-image" "linear-gradient(to top, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-tl {
    background-image: linear-gradient(to top left, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_tl : Css.Style
bg_gradient_to_tl =
    Css.property "background-image" "linear-gradient(to top left, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-gradient-to-tr {
    background-image: linear-gradient(to top right, var(--tw-gradient-stops))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_gradient_to_tr : Css.Style
bg_gradient_to_tr =
    Css.property "background-image" "linear-gradient(to top right, var(--tw-gradient-stops))"


{-| This class has the effect of following css declaration:

```css
.bg-left {
    background-position: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_left : Css.Style
bg_left =
    Css.property "background-position" "left"


{-| This class has the effect of following css declaration:

```css
.bg-left-bottom {
    background-position: left bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_left_bottom : Css.Style
bg_left_bottom =
    Css.property "background-position" "left bottom"


{-| This class has the effect of following css declaration:

```css
.bg-left-top {
    background-position: left top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_left_top : Css.Style
bg_left_top =
    Css.property "background-position" "left top"


{-| This class has the effect of following css declaration:

```css
.bg-local {
    background-attachment: local
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_local : Css.Style
bg_local =
    Css.property "background-attachment" "local"


{-| This class has the effect of following css declaration:

```css
.bg-no-repeat {
    background-repeat: no-repeat
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_no_repeat : Css.Style
bg_no_repeat =
    Css.property "background-repeat" "no-repeat"


{-| This class has the effect of following css declaration:

```css
.bg-none {
    background-image: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_none : Css.Style
bg_none =
    Css.property "background-image" "none"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-0 {
    --tw-bg-opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_0 : Css.Style
bg_opacity_0 =
    Css.property "--tw-bg-opacity" "0"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-10 {
    --tw-bg-opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_10 : Css.Style
bg_opacity_10 =
    Css.property "--tw-bg-opacity" "0.1"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-100 {
    --tw-bg-opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_100 : Css.Style
bg_opacity_100 =
    Css.property "--tw-bg-opacity" "1"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-20 {
    --tw-bg-opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_20 : Css.Style
bg_opacity_20 =
    Css.property "--tw-bg-opacity" "0.2"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-25 {
    --tw-bg-opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_25 : Css.Style
bg_opacity_25 =
    Css.property "--tw-bg-opacity" "0.25"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-30 {
    --tw-bg-opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_30 : Css.Style
bg_opacity_30 =
    Css.property "--tw-bg-opacity" "0.3"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-40 {
    --tw-bg-opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_40 : Css.Style
bg_opacity_40 =
    Css.property "--tw-bg-opacity" "0.4"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-5 {
    --tw-bg-opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_5 : Css.Style
bg_opacity_5 =
    Css.property "--tw-bg-opacity" "0.05"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-50 {
    --tw-bg-opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_50 : Css.Style
bg_opacity_50 =
    Css.property "--tw-bg-opacity" "0.5"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-60 {
    --tw-bg-opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_60 : Css.Style
bg_opacity_60 =
    Css.property "--tw-bg-opacity" "0.6"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-70 {
    --tw-bg-opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_70 : Css.Style
bg_opacity_70 =
    Css.property "--tw-bg-opacity" "0.7"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-75 {
    --tw-bg-opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_75 : Css.Style
bg_opacity_75 =
    Css.property "--tw-bg-opacity" "0.75"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-80 {
    --tw-bg-opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_80 : Css.Style
bg_opacity_80 =
    Css.property "--tw-bg-opacity" "0.8"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-90 {
    --tw-bg-opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_90 : Css.Style
bg_opacity_90 =
    Css.property "--tw-bg-opacity" "0.9"


{-| This class has the effect of following css declaration:

```css
.bg-opacity-95 {
    --tw-bg-opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_opacity_95 : Css.Style
bg_opacity_95 =
    Css.property "--tw-bg-opacity" "0.95"


{-| This class has the effect of following css declaration:

```css
.bg-origin-border {
    background-origin: border-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_origin_border : Css.Style
bg_origin_border =
    Css.property "background-origin" "border-box"


{-| This class has the effect of following css declaration:

```css
.bg-origin-content {
    background-origin: content-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_origin_content : Css.Style
bg_origin_content =
    Css.property "background-origin" "content-box"


{-| This class has the effect of following css declaration:

```css
.bg-origin-padding {
    background-origin: padding-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_origin_padding : Css.Style
bg_origin_padding =
    Css.property "background-origin" "padding-box"


{-| This class has the effect of following css declaration:

```css
.bg-repeat {
    background-repeat: repeat
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat : Css.Style
bg_repeat =
    Css.property "background-repeat" "repeat"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-round {
    background-repeat: round
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_round : Css.Style
bg_repeat_round =
    Css.property "background-repeat" "round"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-space {
    background-repeat: space
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_space : Css.Style
bg_repeat_space =
    Css.property "background-repeat" "space"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-x {
    background-repeat: repeat-x
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_x : Css.Style
bg_repeat_x =
    Css.property "background-repeat" "repeat-x"


{-| This class has the effect of following css declaration:

```css
.bg-repeat-y {
    background-repeat: repeat-y
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_repeat_y : Css.Style
bg_repeat_y =
    Css.property "background-repeat" "repeat-y"


{-| This class has the effect of following css declaration:

```css
.bg-right {
    background-position: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_right : Css.Style
bg_right =
    Css.property "background-position" "right"


{-| This class has the effect of following css declaration:

```css
.bg-right-bottom {
    background-position: right bottom
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_right_bottom : Css.Style
bg_right_bottom =
    Css.property "background-position" "right bottom"


{-| This class has the effect of following css declaration:

```css
.bg-right-top {
    background-position: right top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_right_top : Css.Style
bg_right_top =
    Css.property "background-position" "right top"


{-| This class has the effect of following css declaration:

```css
.bg-scroll {
    background-attachment: scroll
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_scroll : Css.Style
bg_scroll =
    Css.property "background-attachment" "scroll"


{-| This class has the effect of following css declaration:

```css
.bg-top {
    background-position: top
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bg_top : Css.Style
bg_top =
    Css.property "background-position" "top"


{-| This class has the effect of following css declaration:

```css
.block {
    display: block
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
block : Css.Style
block =
    Css.property "display" "block"


{-| This class has the effect of following css declaration:

```css
.blur {
    --tw-blur: blur(8px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur : Css.Style
blur =
    Css.batch
        [ Css.property "--tw-blur" "blur(8px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-0 {
    --tw-blur: blur(0);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_0 : Css.Style
blur_0 =
    Css.batch
        [ Css.property "--tw-blur" "blur(0)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-2xl {
    --tw-blur: blur(40px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_2xl : Css.Style
blur_2xl =
    Css.batch
        [ Css.property "--tw-blur" "blur(40px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-3xl {
    --tw-blur: blur(64px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_3xl : Css.Style
blur_3xl =
    Css.batch
        [ Css.property "--tw-blur" "blur(64px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-lg {
    --tw-blur: blur(16px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_lg : Css.Style
blur_lg =
    Css.batch
        [ Css.property "--tw-blur" "blur(16px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-md {
    --tw-blur: blur(12px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_md : Css.Style
blur_md =
    Css.batch
        [ Css.property "--tw-blur" "blur(12px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-none {
    --tw-blur: blur(0);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_none : Css.Style
blur_none =
    Css.batch
        [ Css.property "--tw-blur" "blur(0)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-sm {
    --tw-blur: blur(4px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_sm : Css.Style
blur_sm =
    Css.batch
        [ Css.property "--tw-blur" "blur(4px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.blur-xl {
    --tw-blur: blur(24px);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
blur_xl : Css.Style
blur_xl =
    Css.batch
        [ Css.property "--tw-blur" "blur(24px)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.border {
    border-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border : Css.Style
border =
    Css.property "border-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-0 {
    border-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_0 : Css.Style
border_0 =
    Css.property "border-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-2 {
    border-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_2 : Css.Style
border_2 =
    Css.property "border-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-4 {
    border-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_4 : Css.Style
border_4 =
    Css.property "border-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-8 {
    border-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_8 : Css.Style
border_8 =
    Css.property "border-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-b {
    border-bottom-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b : Css.Style
border_b =
    Css.property "border-bottom-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-b-0 {
    border-bottom-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_0 : Css.Style
border_b_0 =
    Css.property "border-bottom-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-b-2 {
    border-bottom-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_2 : Css.Style
border_b_2 =
    Css.property "border-bottom-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-b-4 {
    border-bottom-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_4 : Css.Style
border_b_4 =
    Css.property "border-bottom-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-b-8 {
    border-bottom-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_b_8 : Css.Style
border_b_8 =
    Css.property "border-bottom-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-collapse {
    border-collapse: collapse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_collapse : Css.Style
border_collapse =
    Css.property "border-collapse" "collapse"


{-| This class has the effect of following css declaration:

```css
.border-dashed {
    border-style: dashed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_dashed : Css.Style
border_dashed =
    Css.property "border-style" "dashed"


{-| This class has the effect of following css declaration:

```css
.border-dotted {
    border-style: dotted
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_dotted : Css.Style
border_dotted =
    Css.property "border-style" "dotted"


{-| This class has the effect of following css declaration:

```css
.border-double {
    border-style: double
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_double : Css.Style
border_double =
    Css.property "border-style" "double"


{-| This class has the effect of following css declaration:

```css
.border-hidden {
    border-style: hidden
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_hidden : Css.Style
border_hidden =
    Css.property "border-style" "hidden"


{-| This class has the effect of following css declaration:

```css
.border-l {
    border-left-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l : Css.Style
border_l =
    Css.property "border-left-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-l-0 {
    border-left-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_0 : Css.Style
border_l_0 =
    Css.property "border-left-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-l-2 {
    border-left-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_2 : Css.Style
border_l_2 =
    Css.property "border-left-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-l-4 {
    border-left-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_4 : Css.Style
border_l_4 =
    Css.property "border-left-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-l-8 {
    border-left-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_l_8 : Css.Style
border_l_8 =
    Css.property "border-left-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-none {
    border-style: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_none : Css.Style
border_none =
    Css.property "border-style" "none"


{-| This class has the effect of following css declaration:

```css
.border-opacity-0 {
    --tw-border-opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_0 : Css.Style
border_opacity_0 =
    Css.property "--tw-border-opacity" "0"


{-| This class has the effect of following css declaration:

```css
.border-opacity-10 {
    --tw-border-opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_10 : Css.Style
border_opacity_10 =
    Css.property "--tw-border-opacity" "0.1"


{-| This class has the effect of following css declaration:

```css
.border-opacity-100 {
    --tw-border-opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_100 : Css.Style
border_opacity_100 =
    Css.property "--tw-border-opacity" "1"


{-| This class has the effect of following css declaration:

```css
.border-opacity-20 {
    --tw-border-opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_20 : Css.Style
border_opacity_20 =
    Css.property "--tw-border-opacity" "0.2"


{-| This class has the effect of following css declaration:

```css
.border-opacity-25 {
    --tw-border-opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_25 : Css.Style
border_opacity_25 =
    Css.property "--tw-border-opacity" "0.25"


{-| This class has the effect of following css declaration:

```css
.border-opacity-30 {
    --tw-border-opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_30 : Css.Style
border_opacity_30 =
    Css.property "--tw-border-opacity" "0.3"


{-| This class has the effect of following css declaration:

```css
.border-opacity-40 {
    --tw-border-opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_40 : Css.Style
border_opacity_40 =
    Css.property "--tw-border-opacity" "0.4"


{-| This class has the effect of following css declaration:

```css
.border-opacity-5 {
    --tw-border-opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_5 : Css.Style
border_opacity_5 =
    Css.property "--tw-border-opacity" "0.05"


{-| This class has the effect of following css declaration:

```css
.border-opacity-50 {
    --tw-border-opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_50 : Css.Style
border_opacity_50 =
    Css.property "--tw-border-opacity" "0.5"


{-| This class has the effect of following css declaration:

```css
.border-opacity-60 {
    --tw-border-opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_60 : Css.Style
border_opacity_60 =
    Css.property "--tw-border-opacity" "0.6"


{-| This class has the effect of following css declaration:

```css
.border-opacity-70 {
    --tw-border-opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_70 : Css.Style
border_opacity_70 =
    Css.property "--tw-border-opacity" "0.7"


{-| This class has the effect of following css declaration:

```css
.border-opacity-75 {
    --tw-border-opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_75 : Css.Style
border_opacity_75 =
    Css.property "--tw-border-opacity" "0.75"


{-| This class has the effect of following css declaration:

```css
.border-opacity-80 {
    --tw-border-opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_80 : Css.Style
border_opacity_80 =
    Css.property "--tw-border-opacity" "0.8"


{-| This class has the effect of following css declaration:

```css
.border-opacity-90 {
    --tw-border-opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_90 : Css.Style
border_opacity_90 =
    Css.property "--tw-border-opacity" "0.9"


{-| This class has the effect of following css declaration:

```css
.border-opacity-95 {
    --tw-border-opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_opacity_95 : Css.Style
border_opacity_95 =
    Css.property "--tw-border-opacity" "0.95"


{-| This class has the effect of following css declaration:

```css
.border-r {
    border-right-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r : Css.Style
border_r =
    Css.property "border-right-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-r-0 {
    border-right-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_0 : Css.Style
border_r_0 =
    Css.property "border-right-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-r-2 {
    border-right-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_2 : Css.Style
border_r_2 =
    Css.property "border-right-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-r-4 {
    border-right-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_4 : Css.Style
border_r_4 =
    Css.property "border-right-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-r-8 {
    border-right-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_r_8 : Css.Style
border_r_8 =
    Css.property "border-right-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-separate {
    border-collapse: separate
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_separate : Css.Style
border_separate =
    Css.property "border-collapse" "separate"


{-| This class has the effect of following css declaration:

```css
.border-solid {
    border-style: solid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_solid : Css.Style
border_solid =
    Css.property "border-style" "solid"


{-| This class has the effect of following css declaration:

```css
.border-spacing-0 {
    --tw-border-spacing-x: 0px;
    --tw-border-spacing-y: 0px;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_0 : Css.Style
border_spacing_0 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0px"
        , Css.property "--tw-border-spacing-y" "0px"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-0\.5 {
    --tw-border-spacing-x: 0.125rem;
    --tw-border-spacing-y: 0.125rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_0_dot_5 : Css.Style
border_spacing_0_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.125rem"
        , Css.property "--tw-border-spacing-y" "0.125rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-1 {
    --tw-border-spacing-x: 0.25rem;
    --tw-border-spacing-y: 0.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_1 : Css.Style
border_spacing_1 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.25rem"
        , Css.property "--tw-border-spacing-y" "0.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-10 {
    --tw-border-spacing-x: 2.5rem;
    --tw-border-spacing-y: 2.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_10 : Css.Style
border_spacing_10 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2.5rem"
        , Css.property "--tw-border-spacing-y" "2.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-11 {
    --tw-border-spacing-x: 2.75rem;
    --tw-border-spacing-y: 2.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_11 : Css.Style
border_spacing_11 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2.75rem"
        , Css.property "--tw-border-spacing-y" "2.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-12 {
    --tw-border-spacing-x: 3rem;
    --tw-border-spacing-y: 3rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_12 : Css.Style
border_spacing_12 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "3rem"
        , Css.property "--tw-border-spacing-y" "3rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-14 {
    --tw-border-spacing-x: 3.5rem;
    --tw-border-spacing-y: 3.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_14 : Css.Style
border_spacing_14 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "3.5rem"
        , Css.property "--tw-border-spacing-y" "3.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-16 {
    --tw-border-spacing-x: 4rem;
    --tw-border-spacing-y: 4rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_16 : Css.Style
border_spacing_16 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "4rem"
        , Css.property "--tw-border-spacing-y" "4rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-1\.5 {
    --tw-border-spacing-x: 0.375rem;
    --tw-border-spacing-y: 0.375rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_1_dot_5 : Css.Style
border_spacing_1_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.375rem"
        , Css.property "--tw-border-spacing-y" "0.375rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-2 {
    --tw-border-spacing-x: 0.5rem;
    --tw-border-spacing-y: 0.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_2 : Css.Style
border_spacing_2 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.5rem"
        , Css.property "--tw-border-spacing-y" "0.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-20 {
    --tw-border-spacing-x: 5rem;
    --tw-border-spacing-y: 5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_20 : Css.Style
border_spacing_20 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "5rem"
        , Css.property "--tw-border-spacing-y" "5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-24 {
    --tw-border-spacing-x: 6rem;
    --tw-border-spacing-y: 6rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_24 : Css.Style
border_spacing_24 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "6rem"
        , Css.property "--tw-border-spacing-y" "6rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-28 {
    --tw-border-spacing-x: 7rem;
    --tw-border-spacing-y: 7rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_28 : Css.Style
border_spacing_28 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "7rem"
        , Css.property "--tw-border-spacing-y" "7rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-2\.5 {
    --tw-border-spacing-x: 0.625rem;
    --tw-border-spacing-y: 0.625rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_2_dot_5 : Css.Style
border_spacing_2_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.625rem"
        , Css.property "--tw-border-spacing-y" "0.625rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-3 {
    --tw-border-spacing-x: 0.75rem;
    --tw-border-spacing-y: 0.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_3 : Css.Style
border_spacing_3 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.75rem"
        , Css.property "--tw-border-spacing-y" "0.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-32 {
    --tw-border-spacing-x: 8rem;
    --tw-border-spacing-y: 8rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_32 : Css.Style
border_spacing_32 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "8rem"
        , Css.property "--tw-border-spacing-y" "8rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-36 {
    --tw-border-spacing-x: 9rem;
    --tw-border-spacing-y: 9rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_36 : Css.Style
border_spacing_36 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "9rem"
        , Css.property "--tw-border-spacing-y" "9rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-3\.5 {
    --tw-border-spacing-x: 0.875rem;
    --tw-border-spacing-y: 0.875rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_3_dot_5 : Css.Style
border_spacing_3_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.875rem"
        , Css.property "--tw-border-spacing-y" "0.875rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-4 {
    --tw-border-spacing-x: 1rem;
    --tw-border-spacing-y: 1rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_4 : Css.Style
border_spacing_4 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1rem"
        , Css.property "--tw-border-spacing-y" "1rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-40 {
    --tw-border-spacing-x: 10rem;
    --tw-border-spacing-y: 10rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_40 : Css.Style
border_spacing_40 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "10rem"
        , Css.property "--tw-border-spacing-y" "10rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-44 {
    --tw-border-spacing-x: 11rem;
    --tw-border-spacing-y: 11rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_44 : Css.Style
border_spacing_44 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "11rem"
        , Css.property "--tw-border-spacing-y" "11rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-48 {
    --tw-border-spacing-x: 12rem;
    --tw-border-spacing-y: 12rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_48 : Css.Style
border_spacing_48 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "12rem"
        , Css.property "--tw-border-spacing-y" "12rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-5 {
    --tw-border-spacing-x: 1.25rem;
    --tw-border-spacing-y: 1.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_5 : Css.Style
border_spacing_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1.25rem"
        , Css.property "--tw-border-spacing-y" "1.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-52 {
    --tw-border-spacing-x: 13rem;
    --tw-border-spacing-y: 13rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_52 : Css.Style
border_spacing_52 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "13rem"
        , Css.property "--tw-border-spacing-y" "13rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-56 {
    --tw-border-spacing-x: 14rem;
    --tw-border-spacing-y: 14rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_56 : Css.Style
border_spacing_56 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "14rem"
        , Css.property "--tw-border-spacing-y" "14rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-6 {
    --tw-border-spacing-x: 1.5rem;
    --tw-border-spacing-y: 1.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_6 : Css.Style
border_spacing_6 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1.5rem"
        , Css.property "--tw-border-spacing-y" "1.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-60 {
    --tw-border-spacing-x: 15rem;
    --tw-border-spacing-y: 15rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_60 : Css.Style
border_spacing_60 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "15rem"
        , Css.property "--tw-border-spacing-y" "15rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-64 {
    --tw-border-spacing-x: 16rem;
    --tw-border-spacing-y: 16rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_64 : Css.Style
border_spacing_64 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "16rem"
        , Css.property "--tw-border-spacing-y" "16rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-7 {
    --tw-border-spacing-x: 1.75rem;
    --tw-border-spacing-y: 1.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_7 : Css.Style
border_spacing_7 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1.75rem"
        , Css.property "--tw-border-spacing-y" "1.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-72 {
    --tw-border-spacing-x: 18rem;
    --tw-border-spacing-y: 18rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_72 : Css.Style
border_spacing_72 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "18rem"
        , Css.property "--tw-border-spacing-y" "18rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-8 {
    --tw-border-spacing-x: 2rem;
    --tw-border-spacing-y: 2rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_8 : Css.Style
border_spacing_8 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2rem"
        , Css.property "--tw-border-spacing-y" "2rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-80 {
    --tw-border-spacing-x: 20rem;
    --tw-border-spacing-y: 20rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_80 : Css.Style
border_spacing_80 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "20rem"
        , Css.property "--tw-border-spacing-y" "20rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-9 {
    --tw-border-spacing-x: 2.25rem;
    --tw-border-spacing-y: 2.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_9 : Css.Style
border_spacing_9 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2.25rem"
        , Css.property "--tw-border-spacing-y" "2.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-96 {
    --tw-border-spacing-x: 24rem;
    --tw-border-spacing-y: 24rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_96 : Css.Style
border_spacing_96 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "24rem"
        , Css.property "--tw-border-spacing-y" "24rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-px {
    --tw-border-spacing-x: 1px;
    --tw-border-spacing-y: 1px;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_px : Css.Style
border_spacing_px =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1px"
        , Css.property "--tw-border-spacing-y" "1px"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-0 {
    --tw-border-spacing-x: 0px;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_0 : Css.Style
border_spacing_x_0 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0px"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-0\.5 {
    --tw-border-spacing-x: 0.125rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_0_dot_5 : Css.Style
border_spacing_x_0_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.125rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-1 {
    --tw-border-spacing-x: 0.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_1 : Css.Style
border_spacing_x_1 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-10 {
    --tw-border-spacing-x: 2.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_10 : Css.Style
border_spacing_x_10 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-11 {
    --tw-border-spacing-x: 2.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_11 : Css.Style
border_spacing_x_11 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-12 {
    --tw-border-spacing-x: 3rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_12 : Css.Style
border_spacing_x_12 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "3rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-14 {
    --tw-border-spacing-x: 3.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_14 : Css.Style
border_spacing_x_14 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "3.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-16 {
    --tw-border-spacing-x: 4rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_16 : Css.Style
border_spacing_x_16 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "4rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-1\.5 {
    --tw-border-spacing-x: 0.375rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_1_dot_5 : Css.Style
border_spacing_x_1_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.375rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-2 {
    --tw-border-spacing-x: 0.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_2 : Css.Style
border_spacing_x_2 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-20 {
    --tw-border-spacing-x: 5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_20 : Css.Style
border_spacing_x_20 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-24 {
    --tw-border-spacing-x: 6rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_24 : Css.Style
border_spacing_x_24 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "6rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-28 {
    --tw-border-spacing-x: 7rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_28 : Css.Style
border_spacing_x_28 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "7rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-2\.5 {
    --tw-border-spacing-x: 0.625rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_2_dot_5 : Css.Style
border_spacing_x_2_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.625rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-3 {
    --tw-border-spacing-x: 0.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_3 : Css.Style
border_spacing_x_3 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-32 {
    --tw-border-spacing-x: 8rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_32 : Css.Style
border_spacing_x_32 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "8rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-36 {
    --tw-border-spacing-x: 9rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_36 : Css.Style
border_spacing_x_36 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "9rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-3\.5 {
    --tw-border-spacing-x: 0.875rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_3_dot_5 : Css.Style
border_spacing_x_3_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "0.875rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-4 {
    --tw-border-spacing-x: 1rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_4 : Css.Style
border_spacing_x_4 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-40 {
    --tw-border-spacing-x: 10rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_40 : Css.Style
border_spacing_x_40 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "10rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-44 {
    --tw-border-spacing-x: 11rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_44 : Css.Style
border_spacing_x_44 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "11rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-48 {
    --tw-border-spacing-x: 12rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_48 : Css.Style
border_spacing_x_48 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "12rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-5 {
    --tw-border-spacing-x: 1.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_5 : Css.Style
border_spacing_x_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-52 {
    --tw-border-spacing-x: 13rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_52 : Css.Style
border_spacing_x_52 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "13rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-56 {
    --tw-border-spacing-x: 14rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_56 : Css.Style
border_spacing_x_56 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "14rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-6 {
    --tw-border-spacing-x: 1.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_6 : Css.Style
border_spacing_x_6 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-60 {
    --tw-border-spacing-x: 15rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_60 : Css.Style
border_spacing_x_60 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "15rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-64 {
    --tw-border-spacing-x: 16rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_64 : Css.Style
border_spacing_x_64 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "16rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-7 {
    --tw-border-spacing-x: 1.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_7 : Css.Style
border_spacing_x_7 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-72 {
    --tw-border-spacing-x: 18rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_72 : Css.Style
border_spacing_x_72 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "18rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-8 {
    --tw-border-spacing-x: 2rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_8 : Css.Style
border_spacing_x_8 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-80 {
    --tw-border-spacing-x: 20rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_80 : Css.Style
border_spacing_x_80 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "20rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-9 {
    --tw-border-spacing-x: 2.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_9 : Css.Style
border_spacing_x_9 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "2.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-96 {
    --tw-border-spacing-x: 24rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_96 : Css.Style
border_spacing_x_96 =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "24rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-x-px {
    --tw-border-spacing-x: 1px;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_x_px : Css.Style
border_spacing_x_px =
    Css.batch
        [ Css.property "--tw-border-spacing-x" "1px"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-0 {
    --tw-border-spacing-y: 0px;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_0 : Css.Style
border_spacing_y_0 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0px"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-0\.5 {
    --tw-border-spacing-y: 0.125rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_0_dot_5 : Css.Style
border_spacing_y_0_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.125rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-1 {
    --tw-border-spacing-y: 0.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_1 : Css.Style
border_spacing_y_1 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-10 {
    --tw-border-spacing-y: 2.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_10 : Css.Style
border_spacing_y_10 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "2.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-11 {
    --tw-border-spacing-y: 2.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_11 : Css.Style
border_spacing_y_11 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "2.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-12 {
    --tw-border-spacing-y: 3rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_12 : Css.Style
border_spacing_y_12 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "3rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-14 {
    --tw-border-spacing-y: 3.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_14 : Css.Style
border_spacing_y_14 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "3.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-16 {
    --tw-border-spacing-y: 4rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_16 : Css.Style
border_spacing_y_16 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "4rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-1\.5 {
    --tw-border-spacing-y: 0.375rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_1_dot_5 : Css.Style
border_spacing_y_1_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.375rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-2 {
    --tw-border-spacing-y: 0.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_2 : Css.Style
border_spacing_y_2 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-20 {
    --tw-border-spacing-y: 5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_20 : Css.Style
border_spacing_y_20 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-24 {
    --tw-border-spacing-y: 6rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_24 : Css.Style
border_spacing_y_24 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "6rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-28 {
    --tw-border-spacing-y: 7rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_28 : Css.Style
border_spacing_y_28 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "7rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-2\.5 {
    --tw-border-spacing-y: 0.625rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_2_dot_5 : Css.Style
border_spacing_y_2_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.625rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-3 {
    --tw-border-spacing-y: 0.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_3 : Css.Style
border_spacing_y_3 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-32 {
    --tw-border-spacing-y: 8rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_32 : Css.Style
border_spacing_y_32 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "8rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-36 {
    --tw-border-spacing-y: 9rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_36 : Css.Style
border_spacing_y_36 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "9rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-3\.5 {
    --tw-border-spacing-y: 0.875rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_3_dot_5 : Css.Style
border_spacing_y_3_dot_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "0.875rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-4 {
    --tw-border-spacing-y: 1rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_4 : Css.Style
border_spacing_y_4 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "1rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-40 {
    --tw-border-spacing-y: 10rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_40 : Css.Style
border_spacing_y_40 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "10rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-44 {
    --tw-border-spacing-y: 11rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_44 : Css.Style
border_spacing_y_44 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "11rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-48 {
    --tw-border-spacing-y: 12rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_48 : Css.Style
border_spacing_y_48 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "12rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-5 {
    --tw-border-spacing-y: 1.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_5 : Css.Style
border_spacing_y_5 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "1.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-52 {
    --tw-border-spacing-y: 13rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_52 : Css.Style
border_spacing_y_52 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "13rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-56 {
    --tw-border-spacing-y: 14rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_56 : Css.Style
border_spacing_y_56 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "14rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-6 {
    --tw-border-spacing-y: 1.5rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_6 : Css.Style
border_spacing_y_6 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "1.5rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-60 {
    --tw-border-spacing-y: 15rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_60 : Css.Style
border_spacing_y_60 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "15rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-64 {
    --tw-border-spacing-y: 16rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_64 : Css.Style
border_spacing_y_64 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "16rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-7 {
    --tw-border-spacing-y: 1.75rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_7 : Css.Style
border_spacing_y_7 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "1.75rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-72 {
    --tw-border-spacing-y: 18rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_72 : Css.Style
border_spacing_y_72 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "18rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-8 {
    --tw-border-spacing-y: 2rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_8 : Css.Style
border_spacing_y_8 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "2rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-80 {
    --tw-border-spacing-y: 20rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_80 : Css.Style
border_spacing_y_80 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "20rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-9 {
    --tw-border-spacing-y: 2.25rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_9 : Css.Style
border_spacing_y_9 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "2.25rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-96 {
    --tw-border-spacing-y: 24rem;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_96 : Css.Style
border_spacing_y_96 =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "24rem"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-spacing-y-px {
    --tw-border-spacing-y: 1px;
    border-spacing: var(--tw-border-spacing-x) var(--tw-border-spacing-y)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_spacing_y_px : Css.Style
border_spacing_y_px =
    Css.batch
        [ Css.property "--tw-border-spacing-y" "1px"
        , Css.property "border-spacing" "var(--tw-border-spacing-x) var(--tw-border-spacing-y)"
        ]


{-| This class has the effect of following css declaration:

```css
.border-t {
    border-top-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t : Css.Style
border_t =
    Css.property "border-top-width" "1px"


{-| This class has the effect of following css declaration:

```css
.border-t-0 {
    border-top-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_0 : Css.Style
border_t_0 =
    Css.property "border-top-width" "0px"


{-| This class has the effect of following css declaration:

```css
.border-t-2 {
    border-top-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_2 : Css.Style
border_t_2 =
    Css.property "border-top-width" "2px"


{-| This class has the effect of following css declaration:

```css
.border-t-4 {
    border-top-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_4 : Css.Style
border_t_4 =
    Css.property "border-top-width" "4px"


{-| This class has the effect of following css declaration:

```css
.border-t-8 {
    border-top-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_t_8 : Css.Style
border_t_8 =
    Css.property "border-top-width" "8px"


{-| This class has the effect of following css declaration:

```css
.border-x {
    border-left-width: 1px;
    border-right-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_x : Css.Style
border_x =
    Css.batch
        [ Css.property "border-left-width" "1px"
        , Css.property "border-right-width" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-x-0 {
    border-left-width: 0px;
    border-right-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_x_0 : Css.Style
border_x_0 =
    Css.batch
        [ Css.property "border-left-width" "0px"
        , Css.property "border-right-width" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-x-2 {
    border-left-width: 2px;
    border-right-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_x_2 : Css.Style
border_x_2 =
    Css.batch
        [ Css.property "border-left-width" "2px"
        , Css.property "border-right-width" "2px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-x-4 {
    border-left-width: 4px;
    border-right-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_x_4 : Css.Style
border_x_4 =
    Css.batch
        [ Css.property "border-left-width" "4px"
        , Css.property "border-right-width" "4px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-x-8 {
    border-left-width: 8px;
    border-right-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_x_8 : Css.Style
border_x_8 =
    Css.batch
        [ Css.property "border-left-width" "8px"
        , Css.property "border-right-width" "8px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-y {
    border-top-width: 1px;
    border-bottom-width: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_y : Css.Style
border_y =
    Css.batch
        [ Css.property "border-top-width" "1px"
        , Css.property "border-bottom-width" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-y-0 {
    border-top-width: 0px;
    border-bottom-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_y_0 : Css.Style
border_y_0 =
    Css.batch
        [ Css.property "border-top-width" "0px"
        , Css.property "border-bottom-width" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-y-2 {
    border-top-width: 2px;
    border-bottom-width: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_y_2 : Css.Style
border_y_2 =
    Css.batch
        [ Css.property "border-top-width" "2px"
        , Css.property "border-bottom-width" "2px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-y-4 {
    border-top-width: 4px;
    border-bottom-width: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_y_4 : Css.Style
border_y_4 =
    Css.batch
        [ Css.property "border-top-width" "4px"
        , Css.property "border-bottom-width" "4px"
        ]


{-| This class has the effect of following css declaration:

```css
.border-y-8 {
    border-top-width: 8px;
    border-bottom-width: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
border_y_8 : Css.Style
border_y_8 =
    Css.batch
        [ Css.property "border-top-width" "8px"
        , Css.property "border-bottom-width" "8px"
        ]


{-| This class has the effect of following css declaration:

```css
.bottom-0 {
    bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_0 : Css.Style
bottom_0 =
    Css.property "bottom" "0px"


{-| This class has the effect of following css declaration:

```css
.bottom-0\.5 {
    bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_0_dot_5 : Css.Style
bottom_0_dot_5 =
    Css.property "bottom" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.bottom-1 {
    bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1 : Css.Style
bottom_1 =
    Css.property "bottom" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.bottom-10 {
    bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_10 : Css.Style
bottom_10 =
    Css.property "bottom" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-11 {
    bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_11 : Css.Style
bottom_11 =
    Css.property "bottom" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.bottom-12 {
    bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_12 : Css.Style
bottom_12 =
    Css.property "bottom" "3rem"


{-| This class has the effect of following css declaration:

```css
.bottom-14 {
    bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_14 : Css.Style
bottom_14 =
    Css.property "bottom" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-16 {
    bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_16 : Css.Style
bottom_16 =
    Css.property "bottom" "4rem"


{-| This class has the effect of following css declaration:

```css
.bottom-1\.5 {
    bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1_dot_5 : Css.Style
bottom_1_dot_5 =
    Css.property "bottom" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.bottom-1\/2 {
    bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1over2 : Css.Style
bottom_1over2 =
    Css.property "bottom" "50%"


{-| This class has the effect of following css declaration:

```css
.bottom-1\/3 {
    bottom: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1over3 : Css.Style
bottom_1over3 =
    Css.property "bottom" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.bottom-1\/4 {
    bottom: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_1over4 : Css.Style
bottom_1over4 =
    Css.property "bottom" "25%"


{-| This class has the effect of following css declaration:

```css
.bottom-2 {
    bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2 : Css.Style
bottom_2 =
    Css.property "bottom" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-20 {
    bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_20 : Css.Style
bottom_20 =
    Css.property "bottom" "5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-24 {
    bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_24 : Css.Style
bottom_24 =
    Css.property "bottom" "6rem"


{-| This class has the effect of following css declaration:

```css
.bottom-28 {
    bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_28 : Css.Style
bottom_28 =
    Css.property "bottom" "7rem"


{-| This class has the effect of following css declaration:

```css
.bottom-2\.5 {
    bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2_dot_5 : Css.Style
bottom_2_dot_5 =
    Css.property "bottom" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.bottom-2\/3 {
    bottom: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2over3 : Css.Style
bottom_2over3 =
    Css.property "bottom" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.bottom-2\/4 {
    bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_2over4 : Css.Style
bottom_2over4 =
    Css.property "bottom" "50%"


{-| This class has the effect of following css declaration:

```css
.bottom-3 {
    bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_3 : Css.Style
bottom_3 =
    Css.property "bottom" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.bottom-32 {
    bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_32 : Css.Style
bottom_32 =
    Css.property "bottom" "8rem"


{-| This class has the effect of following css declaration:

```css
.bottom-36 {
    bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_36 : Css.Style
bottom_36 =
    Css.property "bottom" "9rem"


{-| This class has the effect of following css declaration:

```css
.bottom-3\.5 {
    bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_3_dot_5 : Css.Style
bottom_3_dot_5 =
    Css.property "bottom" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.bottom-3\/4 {
    bottom: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_3over4 : Css.Style
bottom_3over4 =
    Css.property "bottom" "75%"


{-| This class has the effect of following css declaration:

```css
.bottom-4 {
    bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_4 : Css.Style
bottom_4 =
    Css.property "bottom" "1rem"


{-| This class has the effect of following css declaration:

```css
.bottom-40 {
    bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_40 : Css.Style
bottom_40 =
    Css.property "bottom" "10rem"


{-| This class has the effect of following css declaration:

```css
.bottom-44 {
    bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_44 : Css.Style
bottom_44 =
    Css.property "bottom" "11rem"


{-| This class has the effect of following css declaration:

```css
.bottom-48 {
    bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_48 : Css.Style
bottom_48 =
    Css.property "bottom" "12rem"


{-| This class has the effect of following css declaration:

```css
.bottom-5 {
    bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_5 : Css.Style
bottom_5 =
    Css.property "bottom" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.bottom-52 {
    bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_52 : Css.Style
bottom_52 =
    Css.property "bottom" "13rem"


{-| This class has the effect of following css declaration:

```css
.bottom-56 {
    bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_56 : Css.Style
bottom_56 =
    Css.property "bottom" "14rem"


{-| This class has the effect of following css declaration:

```css
.bottom-6 {
    bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_6 : Css.Style
bottom_6 =
    Css.property "bottom" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.bottom-60 {
    bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_60 : Css.Style
bottom_60 =
    Css.property "bottom" "15rem"


{-| This class has the effect of following css declaration:

```css
.bottom-64 {
    bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_64 : Css.Style
bottom_64 =
    Css.property "bottom" "16rem"


{-| This class has the effect of following css declaration:

```css
.bottom-7 {
    bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_7 : Css.Style
bottom_7 =
    Css.property "bottom" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.bottom-72 {
    bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_72 : Css.Style
bottom_72 =
    Css.property "bottom" "18rem"


{-| This class has the effect of following css declaration:

```css
.bottom-8 {
    bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_8 : Css.Style
bottom_8 =
    Css.property "bottom" "2rem"


{-| This class has the effect of following css declaration:

```css
.bottom-80 {
    bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_80 : Css.Style
bottom_80 =
    Css.property "bottom" "20rem"


{-| This class has the effect of following css declaration:

```css
.bottom-9 {
    bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_9 : Css.Style
bottom_9 =
    Css.property "bottom" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.bottom-96 {
    bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_96 : Css.Style
bottom_96 =
    Css.property "bottom" "24rem"


{-| This class has the effect of following css declaration:

```css
.bottom-auto {
    bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_auto : Css.Style
bottom_auto =
    Css.property "bottom" "auto"


{-| This class has the effect of following css declaration:

```css
.bottom-full {
    bottom: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_full : Css.Style
bottom_full =
    Css.property "bottom" "100%"


{-| This class has the effect of following css declaration:

```css
.bottom-px {
    bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
bottom_px : Css.Style
bottom_px =
    Css.property "bottom" "1px"


{-| This class has the effect of following css declaration:

```css
.box-border {
    box-sizing: border-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
box_border : Css.Style
box_border =
    Css.property "box-sizing" "border-box"


{-| This class has the effect of following css declaration:

```css
.box-content {
    box-sizing: content-box
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
box_content : Css.Style
box_content =
    Css.property "box-sizing" "content-box"


{-| This class has the effect of following css declaration:

```css
.box-decoration-clone {
    box-decoration-break: clone
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
box_decoration_clone : Css.Style
box_decoration_clone =
    Css.property "box-decoration-break" "clone"


{-| This class has the effect of following css declaration:

```css
.box-decoration-slice {
    box-decoration-break: slice
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
box_decoration_slice : Css.Style
box_decoration_slice =
    Css.property "box-decoration-break" "slice"


{-| This class has the effect of following css declaration:

```css
.break-after-all {
    break-after: all
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_all : Css.Style
break_after_all =
    Css.property "break-after" "all"


{-| This class has the effect of following css declaration:

```css
.break-after-auto {
    break-after: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_auto : Css.Style
break_after_auto =
    Css.property "break-after" "auto"


{-| This class has the effect of following css declaration:

```css
.break-after-avoid {
    break-after: avoid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_avoid : Css.Style
break_after_avoid =
    Css.property "break-after" "avoid"


{-| This class has the effect of following css declaration:

```css
.break-after-avoid-page {
    break-after: avoid-page
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_avoid_page : Css.Style
break_after_avoid_page =
    Css.property "break-after" "avoid-page"


{-| This class has the effect of following css declaration:

```css
.break-after-column {
    break-after: column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_column : Css.Style
break_after_column =
    Css.property "break-after" "column"


{-| This class has the effect of following css declaration:

```css
.break-after-left {
    break-after: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_left : Css.Style
break_after_left =
    Css.property "break-after" "left"


{-| This class has the effect of following css declaration:

```css
.break-after-page {
    break-after: page
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_page : Css.Style
break_after_page =
    Css.property "break-after" "page"


{-| This class has the effect of following css declaration:

```css
.break-after-right {
    break-after: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_after_right : Css.Style
break_after_right =
    Css.property "break-after" "right"


{-| This class has the effect of following css declaration:

```css
.break-all {
    word-break: break-all
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_all : Css.Style
break_all =
    Css.property "word-break" "break-all"


{-| This class has the effect of following css declaration:

```css
.break-before-all {
    break-before: all
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_all : Css.Style
break_before_all =
    Css.property "break-before" "all"


{-| This class has the effect of following css declaration:

```css
.break-before-auto {
    break-before: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_auto : Css.Style
break_before_auto =
    Css.property "break-before" "auto"


{-| This class has the effect of following css declaration:

```css
.break-before-avoid {
    break-before: avoid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_avoid : Css.Style
break_before_avoid =
    Css.property "break-before" "avoid"


{-| This class has the effect of following css declaration:

```css
.break-before-avoid-page {
    break-before: avoid-page
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_avoid_page : Css.Style
break_before_avoid_page =
    Css.property "break-before" "avoid-page"


{-| This class has the effect of following css declaration:

```css
.break-before-column {
    break-before: column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_column : Css.Style
break_before_column =
    Css.property "break-before" "column"


{-| This class has the effect of following css declaration:

```css
.break-before-left {
    break-before: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_left : Css.Style
break_before_left =
    Css.property "break-before" "left"


{-| This class has the effect of following css declaration:

```css
.break-before-page {
    break-before: page
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_page : Css.Style
break_before_page =
    Css.property "break-before" "page"


{-| This class has the effect of following css declaration:

```css
.break-before-right {
    break-before: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_before_right : Css.Style
break_before_right =
    Css.property "break-before" "right"


{-| This class has the effect of following css declaration:

```css
.break-inside-auto {
    break-inside: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_inside_auto : Css.Style
break_inside_auto =
    Css.property "break-inside" "auto"


{-| This class has the effect of following css declaration:

```css
.break-inside-avoid {
    break-inside: avoid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_inside_avoid : Css.Style
break_inside_avoid =
    Css.property "break-inside" "avoid"


{-| This class has the effect of following css declaration:

```css
.break-inside-avoid-column {
    break-inside: avoid-column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_inside_avoid_column : Css.Style
break_inside_avoid_column =
    Css.property "break-inside" "avoid-column"


{-| This class has the effect of following css declaration:

```css
.break-inside-avoid-page {
    break-inside: avoid-page
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_inside_avoid_page : Css.Style
break_inside_avoid_page =
    Css.property "break-inside" "avoid-page"


{-| This class has the effect of following css declaration:

```css
.break-normal {
    overflow-wrap: normal;
    word-break: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_normal : Css.Style
break_normal =
    Css.batch
        [ Css.property "overflow-wrap" "normal"
        , Css.property "word-break" "normal"
        ]


{-| This class has the effect of following css declaration:

```css
.break-words {
    overflow-wrap: break-word
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
break_words : Css.Style
break_words =
    Css.property "overflow-wrap" "break-word"


{-| This class has the effect of following css declaration:

```css
.brightness-0 {
    --tw-brightness: brightness(0);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_0 : Css.Style
brightness_0 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(0)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-100 {
    --tw-brightness: brightness(1);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_100 : Css.Style
brightness_100 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(1)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-105 {
    --tw-brightness: brightness(1.05);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_105 : Css.Style
brightness_105 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(1.05)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-110 {
    --tw-brightness: brightness(1.1);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_110 : Css.Style
brightness_110 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(1.1)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-125 {
    --tw-brightness: brightness(1.25);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_125 : Css.Style
brightness_125 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(1.25)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-150 {
    --tw-brightness: brightness(1.5);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_150 : Css.Style
brightness_150 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(1.5)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-200 {
    --tw-brightness: brightness(2);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_200 : Css.Style
brightness_200 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(2)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-50 {
    --tw-brightness: brightness(.5);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_50 : Css.Style
brightness_50 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(.5)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-75 {
    --tw-brightness: brightness(.75);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_75 : Css.Style
brightness_75 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(.75)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-90 {
    --tw-brightness: brightness(.9);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_90 : Css.Style
brightness_90 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(.9)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.brightness-95 {
    --tw-brightness: brightness(.95);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
brightness_95 : Css.Style
brightness_95 =
    Css.batch
        [ Css.property "--tw-brightness" "brightness(.95)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.capitalize {
    text-transform: capitalize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
capitalize : Css.Style
capitalize =
    Css.property "text-transform" "capitalize"


{-| This class has the effect of following css declaration:

```css
.clear-both {
    clear: both
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_both : Css.Style
clear_both =
    Css.property "clear" "both"


{-| This class has the effect of following css declaration:

```css
.clear-left {
    clear: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_left : Css.Style
clear_left =
    Css.property "clear" "left"


{-| This class has the effect of following css declaration:

```css
.clear-none {
    clear: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_none : Css.Style
clear_none =
    Css.property "clear" "none"


{-| This class has the effect of following css declaration:

```css
.clear-right {
    clear: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
clear_right : Css.Style
clear_right =
    Css.property "clear" "right"


{-| This class has the effect of following css declaration:

```css
.col-auto {
    grid-column: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_auto : Css.Style
col_auto =
    Css.property "grid-column" "auto"


{-| This class has the effect of following css declaration:

```css
.col-end-1 {
    grid-column-end: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_1 : Css.Style
col_end_1 =
    Css.property "grid-column-end" "1"


{-| This class has the effect of following css declaration:

```css
.col-end-10 {
    grid-column-end: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_10 : Css.Style
col_end_10 =
    Css.property "grid-column-end" "10"


{-| This class has the effect of following css declaration:

```css
.col-end-11 {
    grid-column-end: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_11 : Css.Style
col_end_11 =
    Css.property "grid-column-end" "11"


{-| This class has the effect of following css declaration:

```css
.col-end-12 {
    grid-column-end: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_12 : Css.Style
col_end_12 =
    Css.property "grid-column-end" "12"


{-| This class has the effect of following css declaration:

```css
.col-end-13 {
    grid-column-end: 13
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_13 : Css.Style
col_end_13 =
    Css.property "grid-column-end" "13"


{-| This class has the effect of following css declaration:

```css
.col-end-2 {
    grid-column-end: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_2 : Css.Style
col_end_2 =
    Css.property "grid-column-end" "2"


{-| This class has the effect of following css declaration:

```css
.col-end-3 {
    grid-column-end: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_3 : Css.Style
col_end_3 =
    Css.property "grid-column-end" "3"


{-| This class has the effect of following css declaration:

```css
.col-end-4 {
    grid-column-end: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_4 : Css.Style
col_end_4 =
    Css.property "grid-column-end" "4"


{-| This class has the effect of following css declaration:

```css
.col-end-5 {
    grid-column-end: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_5 : Css.Style
col_end_5 =
    Css.property "grid-column-end" "5"


{-| This class has the effect of following css declaration:

```css
.col-end-6 {
    grid-column-end: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_6 : Css.Style
col_end_6 =
    Css.property "grid-column-end" "6"


{-| This class has the effect of following css declaration:

```css
.col-end-7 {
    grid-column-end: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_7 : Css.Style
col_end_7 =
    Css.property "grid-column-end" "7"


{-| This class has the effect of following css declaration:

```css
.col-end-8 {
    grid-column-end: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_8 : Css.Style
col_end_8 =
    Css.property "grid-column-end" "8"


{-| This class has the effect of following css declaration:

```css
.col-end-9 {
    grid-column-end: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_9 : Css.Style
col_end_9 =
    Css.property "grid-column-end" "9"


{-| This class has the effect of following css declaration:

```css
.col-end-auto {
    grid-column-end: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_end_auto : Css.Style
col_end_auto =
    Css.property "grid-column-end" "auto"


{-| This class has the effect of following css declaration:

```css
.col-span-1 {
    grid-column: span 1 / span 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_1 : Css.Style
col_span_1 =
    Css.property "grid-column" "span 1 / span 1"


{-| This class has the effect of following css declaration:

```css
.col-span-10 {
    grid-column: span 10 / span 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_10 : Css.Style
col_span_10 =
    Css.property "grid-column" "span 10 / span 10"


{-| This class has the effect of following css declaration:

```css
.col-span-11 {
    grid-column: span 11 / span 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_11 : Css.Style
col_span_11 =
    Css.property "grid-column" "span 11 / span 11"


{-| This class has the effect of following css declaration:

```css
.col-span-12 {
    grid-column: span 12 / span 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_12 : Css.Style
col_span_12 =
    Css.property "grid-column" "span 12 / span 12"


{-| This class has the effect of following css declaration:

```css
.col-span-2 {
    grid-column: span 2 / span 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_2 : Css.Style
col_span_2 =
    Css.property "grid-column" "span 2 / span 2"


{-| This class has the effect of following css declaration:

```css
.col-span-3 {
    grid-column: span 3 / span 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_3 : Css.Style
col_span_3 =
    Css.property "grid-column" "span 3 / span 3"


{-| This class has the effect of following css declaration:

```css
.col-span-4 {
    grid-column: span 4 / span 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_4 : Css.Style
col_span_4 =
    Css.property "grid-column" "span 4 / span 4"


{-| This class has the effect of following css declaration:

```css
.col-span-5 {
    grid-column: span 5 / span 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_5 : Css.Style
col_span_5 =
    Css.property "grid-column" "span 5 / span 5"


{-| This class has the effect of following css declaration:

```css
.col-span-6 {
    grid-column: span 6 / span 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_6 : Css.Style
col_span_6 =
    Css.property "grid-column" "span 6 / span 6"


{-| This class has the effect of following css declaration:

```css
.col-span-7 {
    grid-column: span 7 / span 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_7 : Css.Style
col_span_7 =
    Css.property "grid-column" "span 7 / span 7"


{-| This class has the effect of following css declaration:

```css
.col-span-8 {
    grid-column: span 8 / span 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_8 : Css.Style
col_span_8 =
    Css.property "grid-column" "span 8 / span 8"


{-| This class has the effect of following css declaration:

```css
.col-span-9 {
    grid-column: span 9 / span 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_9 : Css.Style
col_span_9 =
    Css.property "grid-column" "span 9 / span 9"


{-| This class has the effect of following css declaration:

```css
.col-span-full {
    grid-column: 1 / -1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_span_full : Css.Style
col_span_full =
    Css.property "grid-column" "1 / -1"


{-| This class has the effect of following css declaration:

```css
.col-start-1 {
    grid-column-start: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_1 : Css.Style
col_start_1 =
    Css.property "grid-column-start" "1"


{-| This class has the effect of following css declaration:

```css
.col-start-10 {
    grid-column-start: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_10 : Css.Style
col_start_10 =
    Css.property "grid-column-start" "10"


{-| This class has the effect of following css declaration:

```css
.col-start-11 {
    grid-column-start: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_11 : Css.Style
col_start_11 =
    Css.property "grid-column-start" "11"


{-| This class has the effect of following css declaration:

```css
.col-start-12 {
    grid-column-start: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_12 : Css.Style
col_start_12 =
    Css.property "grid-column-start" "12"


{-| This class has the effect of following css declaration:

```css
.col-start-13 {
    grid-column-start: 13
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_13 : Css.Style
col_start_13 =
    Css.property "grid-column-start" "13"


{-| This class has the effect of following css declaration:

```css
.col-start-2 {
    grid-column-start: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_2 : Css.Style
col_start_2 =
    Css.property "grid-column-start" "2"


{-| This class has the effect of following css declaration:

```css
.col-start-3 {
    grid-column-start: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_3 : Css.Style
col_start_3 =
    Css.property "grid-column-start" "3"


{-| This class has the effect of following css declaration:

```css
.col-start-4 {
    grid-column-start: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_4 : Css.Style
col_start_4 =
    Css.property "grid-column-start" "4"


{-| This class has the effect of following css declaration:

```css
.col-start-5 {
    grid-column-start: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_5 : Css.Style
col_start_5 =
    Css.property "grid-column-start" "5"


{-| This class has the effect of following css declaration:

```css
.col-start-6 {
    grid-column-start: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_6 : Css.Style
col_start_6 =
    Css.property "grid-column-start" "6"


{-| This class has the effect of following css declaration:

```css
.col-start-7 {
    grid-column-start: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_7 : Css.Style
col_start_7 =
    Css.property "grid-column-start" "7"


{-| This class has the effect of following css declaration:

```css
.col-start-8 {
    grid-column-start: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_8 : Css.Style
col_start_8 =
    Css.property "grid-column-start" "8"


{-| This class has the effect of following css declaration:

```css
.col-start-9 {
    grid-column-start: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_9 : Css.Style
col_start_9 =
    Css.property "grid-column-start" "9"


{-| This class has the effect of following css declaration:

```css
.col-start-auto {
    grid-column-start: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
col_start_auto : Css.Style
col_start_auto =
    Css.property "grid-column-start" "auto"


{-| This class has the effect of following css declaration:

```css
.columns-1 {
    columns: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_1 : Css.Style
columns_1 =
    Css.property "columns" "1"


{-| This class has the effect of following css declaration:

```css
.columns-10 {
    columns: 10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_10 : Css.Style
columns_10 =
    Css.property "columns" "10"


{-| This class has the effect of following css declaration:

```css
.columns-11 {
    columns: 11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_11 : Css.Style
columns_11 =
    Css.property "columns" "11"


{-| This class has the effect of following css declaration:

```css
.columns-12 {
    columns: 12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_12 : Css.Style
columns_12 =
    Css.property "columns" "12"


{-| This class has the effect of following css declaration:

```css
.columns-2 {
    columns: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_2 : Css.Style
columns_2 =
    Css.property "columns" "2"


{-| This class has the effect of following css declaration:

```css
.columns-2xl {
    columns: 42rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_2xl : Css.Style
columns_2xl =
    Css.property "columns" "42rem"


{-| This class has the effect of following css declaration:

```css
.columns-2xs {
    columns: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_2xs : Css.Style
columns_2xs =
    Css.property "columns" "18rem"


{-| This class has the effect of following css declaration:

```css
.columns-3 {
    columns: 3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_3 : Css.Style
columns_3 =
    Css.property "columns" "3"


{-| This class has the effect of following css declaration:

```css
.columns-3xl {
    columns: 48rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_3xl : Css.Style
columns_3xl =
    Css.property "columns" "48rem"


{-| This class has the effect of following css declaration:

```css
.columns-3xs {
    columns: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_3xs : Css.Style
columns_3xs =
    Css.property "columns" "16rem"


{-| This class has the effect of following css declaration:

```css
.columns-4 {
    columns: 4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_4 : Css.Style
columns_4 =
    Css.property "columns" "4"


{-| This class has the effect of following css declaration:

```css
.columns-4xl {
    columns: 56rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_4xl : Css.Style
columns_4xl =
    Css.property "columns" "56rem"


{-| This class has the effect of following css declaration:

```css
.columns-5 {
    columns: 5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_5 : Css.Style
columns_5 =
    Css.property "columns" "5"


{-| This class has the effect of following css declaration:

```css
.columns-5xl {
    columns: 64rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_5xl : Css.Style
columns_5xl =
    Css.property "columns" "64rem"


{-| This class has the effect of following css declaration:

```css
.columns-6 {
    columns: 6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_6 : Css.Style
columns_6 =
    Css.property "columns" "6"


{-| This class has the effect of following css declaration:

```css
.columns-6xl {
    columns: 72rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_6xl : Css.Style
columns_6xl =
    Css.property "columns" "72rem"


{-| This class has the effect of following css declaration:

```css
.columns-7 {
    columns: 7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_7 : Css.Style
columns_7 =
    Css.property "columns" "7"


{-| This class has the effect of following css declaration:

```css
.columns-7xl {
    columns: 80rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_7xl : Css.Style
columns_7xl =
    Css.property "columns" "80rem"


{-| This class has the effect of following css declaration:

```css
.columns-8 {
    columns: 8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_8 : Css.Style
columns_8 =
    Css.property "columns" "8"


{-| This class has the effect of following css declaration:

```css
.columns-9 {
    columns: 9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_9 : Css.Style
columns_9 =
    Css.property "columns" "9"


{-| This class has the effect of following css declaration:

```css
.columns-auto {
    columns: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_auto : Css.Style
columns_auto =
    Css.property "columns" "auto"


{-| This class has the effect of following css declaration:

```css
.columns-lg {
    columns: 32rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_lg : Css.Style
columns_lg =
    Css.property "columns" "32rem"


{-| This class has the effect of following css declaration:

```css
.columns-md {
    columns: 28rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_md : Css.Style
columns_md =
    Css.property "columns" "28rem"


{-| This class has the effect of following css declaration:

```css
.columns-sm {
    columns: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_sm : Css.Style
columns_sm =
    Css.property "columns" "24rem"


{-| This class has the effect of following css declaration:

```css
.columns-xl {
    columns: 36rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_xl : Css.Style
columns_xl =
    Css.property "columns" "36rem"


{-| This class has the effect of following css declaration:

```css
.columns-xs {
    columns: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
columns_xs : Css.Style
columns_xs =
    Css.property "columns" "20rem"


{-| This class combines the effects of following css declarations:

```css
.container {
    width: 100%
}

@media (min-width: 640px) {}

@media (min-width: 768px) {}

@media (min-width: 1024px) {}

@media (min-width: 1280px) {}

@media (min-width: 1536px) {}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
container : Css.Style
container =
    Css.batch
        [ Css.property "width" "100%"
        , Css.Media.withMediaQuery [ "(min-width: 1536px)" ]
            [ Css.property "max-width" "1536px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 1280px)" ]
            [ Css.property "max-width" "1280px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 1024px)" ]
            [ Css.property "max-width" "1024px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 768px)" ]
            [ Css.property "max-width" "768px"
            ]
        , Css.Media.withMediaQuery [ "(min-width: 640px)" ]
            [ Css.property "max-width" "640px"
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.content-around {
    align-content: space-around
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_around : Css.Style
content_around =
    Css.property "align-content" "space-around"


{-| This class has the effect of following css declaration:

```css
.content-between {
    align-content: space-between
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_between : Css.Style
content_between =
    Css.property "align-content" "space-between"


{-| This class has the effect of following css declaration:

```css
.content-center {
    align-content: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_center : Css.Style
content_center =
    Css.property "align-content" "center"


{-| This class has the effect of following css declaration:

```css
.content-end {
    align-content: flex-end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_end : Css.Style
content_end =
    Css.property "align-content" "flex-end"


{-| This class has the effect of following css declaration:

```css
.content-evenly {
    align-content: space-evenly
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_evenly : Css.Style
content_evenly =
    Css.property "align-content" "space-evenly"


{-| This class has the effect of following css declaration:

```css
.content-none {
    --tw-content: none;
    content: var(--tw-content)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_none : Css.Style
content_none =
    Css.batch
        [ Css.property "--tw-content" "none"
        , Css.property "content" "var(--tw-content)"
        ]


{-| This class has the effect of following css declaration:

```css
.content-start {
    align-content: flex-start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
content_start : Css.Style
content_start =
    Css.property "align-content" "flex-start"


{-| This class has the effect of following css declaration:

```css
.contents {
    display: contents
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contents : Css.Style
contents =
    Css.property "display" "contents"


{-| This class has the effect of following css declaration:

```css
.contrast-0 {
    --tw-contrast: contrast(0);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_0 : Css.Style
contrast_0 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(0)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.contrast-100 {
    --tw-contrast: contrast(1);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_100 : Css.Style
contrast_100 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(1)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.contrast-125 {
    --tw-contrast: contrast(1.25);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_125 : Css.Style
contrast_125 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(1.25)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.contrast-150 {
    --tw-contrast: contrast(1.5);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_150 : Css.Style
contrast_150 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(1.5)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.contrast-200 {
    --tw-contrast: contrast(2);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_200 : Css.Style
contrast_200 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(2)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.contrast-50 {
    --tw-contrast: contrast(.5);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_50 : Css.Style
contrast_50 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(.5)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.contrast-75 {
    --tw-contrast: contrast(.75);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
contrast_75 : Css.Style
contrast_75 =
    Css.batch
        [ Css.property "--tw-contrast" "contrast(.75)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.cursor-alias {
    cursor: alias
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_alias : Css.Style
cursor_alias =
    Css.property "cursor" "alias"


{-| This class has the effect of following css declaration:

```css
.cursor-all-scroll {
    cursor: all-scroll
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_all_scroll : Css.Style
cursor_all_scroll =
    Css.property "cursor" "all-scroll"


{-| This class has the effect of following css declaration:

```css
.cursor-auto {
    cursor: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_auto : Css.Style
cursor_auto =
    Css.property "cursor" "auto"


{-| This class has the effect of following css declaration:

```css
.cursor-cell {
    cursor: cell
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_cell : Css.Style
cursor_cell =
    Css.property "cursor" "cell"


{-| This class has the effect of following css declaration:

```css
.cursor-col-resize {
    cursor: col-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_col_resize : Css.Style
cursor_col_resize =
    Css.property "cursor" "col-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-context-menu {
    cursor: context-menu
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_context_menu : Css.Style
cursor_context_menu =
    Css.property "cursor" "context-menu"


{-| This class has the effect of following css declaration:

```css
.cursor-copy {
    cursor: copy
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_copy : Css.Style
cursor_copy =
    Css.property "cursor" "copy"


{-| This class has the effect of following css declaration:

```css
.cursor-crosshair {
    cursor: crosshair
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_crosshair : Css.Style
cursor_crosshair =
    Css.property "cursor" "crosshair"


{-| This class has the effect of following css declaration:

```css
.cursor-default {
    cursor: default
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_default : Css.Style
cursor_default =
    Css.property "cursor" "default"


{-| This class has the effect of following css declaration:

```css
.cursor-e-resize {
    cursor: e-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_e_resize : Css.Style
cursor_e_resize =
    Css.property "cursor" "e-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-ew-resize {
    cursor: ew-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_ew_resize : Css.Style
cursor_ew_resize =
    Css.property "cursor" "ew-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-grab {
    cursor: grab
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_grab : Css.Style
cursor_grab =
    Css.property "cursor" "grab"


{-| This class has the effect of following css declaration:

```css
.cursor-grabbing {
    cursor: grabbing
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_grabbing : Css.Style
cursor_grabbing =
    Css.property "cursor" "grabbing"


{-| This class has the effect of following css declaration:

```css
.cursor-help {
    cursor: help
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_help : Css.Style
cursor_help =
    Css.property "cursor" "help"


{-| This class has the effect of following css declaration:

```css
.cursor-move {
    cursor: move
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_move : Css.Style
cursor_move =
    Css.property "cursor" "move"


{-| This class has the effect of following css declaration:

```css
.cursor-n-resize {
    cursor: n-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_n_resize : Css.Style
cursor_n_resize =
    Css.property "cursor" "n-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-ne-resize {
    cursor: ne-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_ne_resize : Css.Style
cursor_ne_resize =
    Css.property "cursor" "ne-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-nesw-resize {
    cursor: nesw-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_nesw_resize : Css.Style
cursor_nesw_resize =
    Css.property "cursor" "nesw-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-no-drop {
    cursor: no-drop
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_no_drop : Css.Style
cursor_no_drop =
    Css.property "cursor" "no-drop"


{-| This class has the effect of following css declaration:

```css
.cursor-none {
    cursor: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_none : Css.Style
cursor_none =
    Css.property "cursor" "none"


{-| This class has the effect of following css declaration:

```css
.cursor-not-allowed {
    cursor: not-allowed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_not_allowed : Css.Style
cursor_not_allowed =
    Css.property "cursor" "not-allowed"


{-| This class has the effect of following css declaration:

```css
.cursor-ns-resize {
    cursor: ns-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_ns_resize : Css.Style
cursor_ns_resize =
    Css.property "cursor" "ns-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-nw-resize {
    cursor: nw-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_nw_resize : Css.Style
cursor_nw_resize =
    Css.property "cursor" "nw-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-nwse-resize {
    cursor: nwse-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_nwse_resize : Css.Style
cursor_nwse_resize =
    Css.property "cursor" "nwse-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-pointer {
    cursor: pointer
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_pointer : Css.Style
cursor_pointer =
    Css.property "cursor" "pointer"


{-| This class has the effect of following css declaration:

```css
.cursor-progress {
    cursor: progress
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_progress : Css.Style
cursor_progress =
    Css.property "cursor" "progress"


{-| This class has the effect of following css declaration:

```css
.cursor-row-resize {
    cursor: row-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_row_resize : Css.Style
cursor_row_resize =
    Css.property "cursor" "row-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-s-resize {
    cursor: s-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_s_resize : Css.Style
cursor_s_resize =
    Css.property "cursor" "s-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-se-resize {
    cursor: se-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_se_resize : Css.Style
cursor_se_resize =
    Css.property "cursor" "se-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-sw-resize {
    cursor: sw-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_sw_resize : Css.Style
cursor_sw_resize =
    Css.property "cursor" "sw-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-text {
    cursor: text
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_text : Css.Style
cursor_text =
    Css.property "cursor" "text"


{-| This class has the effect of following css declaration:

```css
.cursor-vertical-text {
    cursor: vertical-text
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_vertical_text : Css.Style
cursor_vertical_text =
    Css.property "cursor" "vertical-text"


{-| This class has the effect of following css declaration:

```css
.cursor-w-resize {
    cursor: w-resize
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_w_resize : Css.Style
cursor_w_resize =
    Css.property "cursor" "w-resize"


{-| This class has the effect of following css declaration:

```css
.cursor-wait {
    cursor: wait
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_wait : Css.Style
cursor_wait =
    Css.property "cursor" "wait"


{-| This class has the effect of following css declaration:

```css
.cursor-zoom-in {
    cursor: zoom-in
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_zoom_in : Css.Style
cursor_zoom_in =
    Css.property "cursor" "zoom-in"


{-| This class has the effect of following css declaration:

```css
.cursor-zoom-out {
    cursor: zoom-out
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
cursor_zoom_out : Css.Style
cursor_zoom_out =
    Css.property "cursor" "zoom-out"


{-| This class has the effect of following css declaration:

```css
.decoration-0 {
    text-decoration-thickness: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_0 : Css.Style
decoration_0 =
    Css.property "text-decoration-thickness" "0px"


{-| This class has the effect of following css declaration:

```css
.decoration-1 {
    text-decoration-thickness: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_1 : Css.Style
decoration_1 =
    Css.property "text-decoration-thickness" "1px"


{-| This class has the effect of following css declaration:

```css
.decoration-2 {
    text-decoration-thickness: 2px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_2 : Css.Style
decoration_2 =
    Css.property "text-decoration-thickness" "2px"


{-| This class has the effect of following css declaration:

```css
.decoration-4 {
    text-decoration-thickness: 4px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_4 : Css.Style
decoration_4 =
    Css.property "text-decoration-thickness" "4px"


{-| This class has the effect of following css declaration:

```css
.decoration-8 {
    text-decoration-thickness: 8px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_8 : Css.Style
decoration_8 =
    Css.property "text-decoration-thickness" "8px"


{-| This class has the effect of following css declaration:

```css
.decoration-auto {
    text-decoration-thickness: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_auto : Css.Style
decoration_auto =
    Css.property "text-decoration-thickness" "auto"


{-| This class has the effect of following css declaration:

```css
.decoration-clone {
    box-decoration-break: clone
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_clone : Css.Style
decoration_clone =
    Css.property "box-decoration-break" "clone"


{-| This class has the effect of following css declaration:

```css
.decoration-dashed {
    text-decoration-style: dashed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_dashed : Css.Style
decoration_dashed =
    Css.property "text-decoration-style" "dashed"


{-| This class has the effect of following css declaration:

```css
.decoration-dotted {
    text-decoration-style: dotted
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_dotted : Css.Style
decoration_dotted =
    Css.property "text-decoration-style" "dotted"


{-| This class has the effect of following css declaration:

```css
.decoration-double {
    text-decoration-style: double
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_double : Css.Style
decoration_double =
    Css.property "text-decoration-style" "double"


{-| This class has the effect of following css declaration:

```css
.decoration-from-font {
    text-decoration-thickness: from-font
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_from_font : Css.Style
decoration_from_font =
    Css.property "text-decoration-thickness" "from-font"


{-| This class has the effect of following css declaration:

```css
.decoration-slice {
    box-decoration-break: slice
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_slice : Css.Style
decoration_slice =
    Css.property "box-decoration-break" "slice"


{-| This class has the effect of following css declaration:

```css
.decoration-solid {
    text-decoration-style: solid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_solid : Css.Style
decoration_solid =
    Css.property "text-decoration-style" "solid"


{-| This class has the effect of following css declaration:

```css
.decoration-wavy {
    text-decoration-style: wavy
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
decoration_wavy : Css.Style
decoration_wavy =
    Css.property "text-decoration-style" "wavy"


{-| This class has the effect of following css declaration:

```css
.delay-100 {
    transition-delay: 100ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_100 : Css.Style
delay_100 =
    Css.property "transition-delay" "100ms"


{-| This class has the effect of following css declaration:

```css
.delay-1000 {
    transition-delay: 1000ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_1000 : Css.Style
delay_1000 =
    Css.property "transition-delay" "1000ms"


{-| This class has the effect of following css declaration:

```css
.delay-150 {
    transition-delay: 150ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_150 : Css.Style
delay_150 =
    Css.property "transition-delay" "150ms"


{-| This class has the effect of following css declaration:

```css
.delay-200 {
    transition-delay: 200ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_200 : Css.Style
delay_200 =
    Css.property "transition-delay" "200ms"


{-| This class has the effect of following css declaration:

```css
.delay-300 {
    transition-delay: 300ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_300 : Css.Style
delay_300 =
    Css.property "transition-delay" "300ms"


{-| This class has the effect of following css declaration:

```css
.delay-500 {
    transition-delay: 500ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_500 : Css.Style
delay_500 =
    Css.property "transition-delay" "500ms"


{-| This class has the effect of following css declaration:

```css
.delay-700 {
    transition-delay: 700ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_700 : Css.Style
delay_700 =
    Css.property "transition-delay" "700ms"


{-| This class has the effect of following css declaration:

```css
.delay-75 {
    transition-delay: 75ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
delay_75 : Css.Style
delay_75 =
    Css.property "transition-delay" "75ms"


{-| This class has the effect of following css declaration:

```css
.diagonal-fractions {
    --tw-numeric-fraction: diagonal-fractions;
    font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
diagonal_fractions : Css.Style
diagonal_fractions =
    Css.batch
        [ Css.property "--tw-numeric-fraction" "diagonal-fractions"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        ]


{-| This class has the effect of following css declaration:

```css
.divide-dashed > :not([hidden]) ~ :not([hidden]) {
    border-style: dashed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_dashed : Css.Style
divide_dashed =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "dashed"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-dotted > :not([hidden]) ~ :not([hidden]) {
    border-style: dotted
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_dotted : Css.Style
divide_dotted =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "dotted"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-double > :not([hidden]) ~ :not([hidden]) {
    border-style: double
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_double : Css.Style
divide_double =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "double"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-none > :not([hidden]) ~ :not([hidden]) {
    border-style: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_none : Css.Style
divide_none =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "none"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-0 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_0 : Css.Style
divide_opacity_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-10 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_10 : Css.Style
divide_opacity_10 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-100 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_100 : Css.Style
divide_opacity_100 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-20 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_20 : Css.Style
divide_opacity_20 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.2"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-25 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_25 : Css.Style
divide_opacity_25 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.25"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-30 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_30 : Css.Style
divide_opacity_30 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.3"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-40 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_40 : Css.Style
divide_opacity_40 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.4"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-5 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.05
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_5 : Css.Style
divide_opacity_5 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.05"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-50 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_50 : Css.Style
divide_opacity_50 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.5"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-60 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_60 : Css.Style
divide_opacity_60 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.6"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-70 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_70 : Css.Style
divide_opacity_70 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.7"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-75 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.75
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_75 : Css.Style
divide_opacity_75 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.75"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-80 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_80 : Css.Style
divide_opacity_80 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.8"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-90 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_90 : Css.Style
divide_opacity_90 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.9"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-opacity-95 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-opacity: 0.95
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_opacity_95 : Css.Style
divide_opacity_95 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-opacity" "0.95"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-solid > :not([hidden]) ~ :not([hidden]) {
    border-style: solid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_solid : Css.Style
divide_solid =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "border-style" "solid"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-x-reverse: 0;
    border-right-width: calc(1px * var(--tw-divide-x-reverse));
    border-left-width: calc(1px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x : Css.Style
divide_x =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(1px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(1px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-0 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-x-reverse: 0;
    border-right-width: calc(0px * var(--tw-divide-x-reverse));
    border-left-width: calc(0px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_0 : Css.Style
divide_x_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(0px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(0px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-2 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-x-reverse: 0;
    border-right-width: calc(2px * var(--tw-divide-x-reverse));
    border-left-width: calc(2px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_2 : Css.Style
divide_x_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(2px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(2px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-4 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-x-reverse: 0;
    border-right-width: calc(4px * var(--tw-divide-x-reverse));
    border-left-width: calc(4px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_4 : Css.Style
divide_x_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(4px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(4px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-8 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-x-reverse: 0;
    border-right-width: calc(8px * var(--tw-divide-x-reverse));
    border-left-width: calc(8px * calc(1 - var(--tw-divide-x-reverse)))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_8 : Css.Style
divide_x_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "0"
                , Css.property "border-right-width" "calc(8px * var(--tw-divide-x-reverse))"
                , Css.property "border-left-width" "calc(8px * calc(1 - var(--tw-divide-x-reverse)))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-x-reverse > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-x-reverse: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_x_reverse : Css.Style
divide_x_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-x-reverse" "1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-y-reverse: 0;
    border-top-width: calc(1px * calc(1 - var(--tw-divide-y-reverse)));
    border-bottom-width: calc(1px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y : Css.Style
divide_y =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(1px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(1px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-0 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-y-reverse: 0;
    border-top-width: calc(0px * calc(1 - var(--tw-divide-y-reverse)));
    border-bottom-width: calc(0px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_0 : Css.Style
divide_y_0 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(0px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(0px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-2 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-y-reverse: 0;
    border-top-width: calc(2px * calc(1 - var(--tw-divide-y-reverse)));
    border-bottom-width: calc(2px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_2 : Css.Style
divide_y_2 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(2px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(2px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-4 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-y-reverse: 0;
    border-top-width: calc(4px * calc(1 - var(--tw-divide-y-reverse)));
    border-bottom-width: calc(4px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_4 : Css.Style
divide_y_4 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(4px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(4px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-8 > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-y-reverse: 0;
    border-top-width: calc(8px * calc(1 - var(--tw-divide-y-reverse)));
    border-bottom-width: calc(8px * var(--tw-divide-y-reverse))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_8 : Css.Style
divide_y_8 =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "0"
                , Css.property "border-top-width" "calc(8px * calc(1 - var(--tw-divide-y-reverse)))"
                , Css.property "border-bottom-width" "calc(8px * var(--tw-divide-y-reverse))"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.divide-y-reverse > :not([hidden]) ~ :not([hidden]) {
    --tw-divide-y-reverse: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
divide_y_reverse : Css.Style
divide_y_reverse =
    Css.batch
        [ Css.Global.children
            [ Css.Global.selector ":not([hidden]) ~ :not([hidden])"
                [ Css.property "--tw-divide-y-reverse" "1"
                ]
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow {
    --tw-drop-shadow: drop-shadow(0 1px 2px rgb(0 0 0 / 0.1)) drop-shadow(0 1px 1px rgb(0 0 0 / 0.06));
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow : Css.Style
drop_shadow =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 1px 2px rgb(0 0 0 / 0.1)) drop-shadow(0 1px 1px rgb(0 0 0 / 0.06))"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow-2xl {
    --tw-drop-shadow: drop-shadow(0 25px 25px rgb(0 0 0 / 0.15));
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_2xl : Css.Style
drop_shadow_2xl =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 25px 25px rgb(0 0 0 / 0.15))"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow-lg {
    --tw-drop-shadow: drop-shadow(0 10px 8px rgb(0 0 0 / 0.04)) drop-shadow(0 4px 3px rgb(0 0 0 / 0.1));
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_lg : Css.Style
drop_shadow_lg =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 10px 8px rgb(0 0 0 / 0.04)) drop-shadow(0 4px 3px rgb(0 0 0 / 0.1))"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow-md {
    --tw-drop-shadow: drop-shadow(0 4px 3px rgb(0 0 0 / 0.07)) drop-shadow(0 2px 2px rgb(0 0 0 / 0.06));
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_md : Css.Style
drop_shadow_md =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 4px 3px rgb(0 0 0 / 0.07)) drop-shadow(0 2px 2px rgb(0 0 0 / 0.06))"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow-none {
    --tw-drop-shadow: drop-shadow(0 0 #0000);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_none : Css.Style
drop_shadow_none =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 0 #0000)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow-sm {
    --tw-drop-shadow: drop-shadow(0 1px 1px rgb(0 0 0 / 0.05));
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_sm : Css.Style
drop_shadow_sm =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 1px 1px rgb(0 0 0 / 0.05))"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.drop-shadow-xl {
    --tw-drop-shadow: drop-shadow(0 20px 13px rgb(0 0 0 / 0.03)) drop-shadow(0 8px 5px rgb(0 0 0 / 0.08));
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
drop_shadow_xl : Css.Style
drop_shadow_xl =
    Css.batch
        [ Css.property "--tw-drop-shadow" "drop-shadow(0 20px 13px rgb(0 0 0 / 0.03)) drop-shadow(0 8px 5px rgb(0 0 0 / 0.08))"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.duration-100 {
    transition-duration: 100ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_100 : Css.Style
duration_100 =
    Css.property "transition-duration" "100ms"


{-| This class has the effect of following css declaration:

```css
.duration-1000 {
    transition-duration: 1000ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_1000 : Css.Style
duration_1000 =
    Css.property "transition-duration" "1000ms"


{-| This class has the effect of following css declaration:

```css
.duration-150 {
    transition-duration: 150ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_150 : Css.Style
duration_150 =
    Css.property "transition-duration" "150ms"


{-| This class has the effect of following css declaration:

```css
.duration-200 {
    transition-duration: 200ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_200 : Css.Style
duration_200 =
    Css.property "transition-duration" "200ms"


{-| This class has the effect of following css declaration:

```css
.duration-300 {
    transition-duration: 300ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_300 : Css.Style
duration_300 =
    Css.property "transition-duration" "300ms"


{-| This class has the effect of following css declaration:

```css
.duration-500 {
    transition-duration: 500ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_500 : Css.Style
duration_500 =
    Css.property "transition-duration" "500ms"


{-| This class has the effect of following css declaration:

```css
.duration-700 {
    transition-duration: 700ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_700 : Css.Style
duration_700 =
    Css.property "transition-duration" "700ms"


{-| This class has the effect of following css declaration:

```css
.duration-75 {
    transition-duration: 75ms
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
duration_75 : Css.Style
duration_75 =
    Css.property "transition-duration" "75ms"


{-| This class has the effect of following css declaration:

```css
.ease-in {
    transition-timing-function: cubic-bezier(0.4, 0, 1, 1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_in : Css.Style
ease_in =
    Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 1, 1)"


{-| This class has the effect of following css declaration:

```css
.ease-in-out {
    transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_in_out : Css.Style
ease_in_out =
    Css.property "transition-timing-function" "cubic-bezier(0.4, 0, 0.2, 1)"


{-| This class has the effect of following css declaration:

```css
.ease-linear {
    transition-timing-function: linear
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_linear : Css.Style
ease_linear =
    Css.property "transition-timing-function" "linear"


{-| This class has the effect of following css declaration:

```css
.ease-out {
    transition-timing-function: cubic-bezier(0, 0, 0.2, 1)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ease_out : Css.Style
ease_out =
    Css.property "transition-timing-function" "cubic-bezier(0, 0, 0.2, 1)"


{-| This class has the effect of following css declaration:

```css
.filter {
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
filter : Css.Style
filter =
    Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"


{-| This class has the effect of following css declaration:

```css
.filter-none {
    filter: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
filter_none : Css.Style
filter_none =
    Css.property "filter" "none"


{-| This class has the effect of following css declaration:

```css
.fixed {
    position: fixed
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
fixed : Css.Style
fixed =
    Css.property "position" "fixed"


{-| This class has the effect of following css declaration:

```css
.flex {
    display: flex
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex : Css.Style
flex =
    Css.property "display" "flex"


{-| This class has the effect of following css declaration:

```css
.flex-1 {
    flex: 1 1 0%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_1 : Css.Style
flex_1 =
    Css.property "flex" "1 1 0%"


{-| This class has the effect of following css declaration:

```css
.flex-auto {
    flex: 1 1 auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_auto : Css.Style
flex_auto =
    Css.property "flex" "1 1 auto"


{-| This class has the effect of following css declaration:

```css
.flex-col {
    flex-direction: column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_col : Css.Style
flex_col =
    Css.property "flex-direction" "column"


{-| This class has the effect of following css declaration:

```css
.flex-col-reverse {
    flex-direction: column-reverse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_col_reverse : Css.Style
flex_col_reverse =
    Css.property "flex-direction" "column-reverse"


{-| This class has the effect of following css declaration:

```css
.flex-grow {
    flex-grow: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_grow : Css.Style
flex_grow =
    Css.property "flex-grow" "1"


{-| This class has the effect of following css declaration:

```css
.flex-grow-0 {
    flex-grow: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_grow_0 : Css.Style
flex_grow_0 =
    Css.property "flex-grow" "0"


{-| This class has the effect of following css declaration:

```css
.flex-initial {
    flex: 0 1 auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_initial : Css.Style
flex_initial =
    Css.property "flex" "0 1 auto"


{-| This class has the effect of following css declaration:

```css
.flex-none {
    flex: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_none : Css.Style
flex_none =
    Css.property "flex" "none"


{-| This class has the effect of following css declaration:

```css
.flex-nowrap {
    flex-wrap: nowrap
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_nowrap : Css.Style
flex_nowrap =
    Css.property "flex-wrap" "nowrap"


{-| This class has the effect of following css declaration:

```css
.flex-row {
    flex-direction: row
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_row : Css.Style
flex_row =
    Css.property "flex-direction" "row"


{-| This class has the effect of following css declaration:

```css
.flex-row-reverse {
    flex-direction: row-reverse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_row_reverse : Css.Style
flex_row_reverse =
    Css.property "flex-direction" "row-reverse"


{-| This class has the effect of following css declaration:

```css
.flex-shrink {
    flex-shrink: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_shrink : Css.Style
flex_shrink =
    Css.property "flex-shrink" "1"


{-| This class has the effect of following css declaration:

```css
.flex-shrink-0 {
    flex-shrink: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_shrink_0 : Css.Style
flex_shrink_0 =
    Css.property "flex-shrink" "0"


{-| This class has the effect of following css declaration:

```css
.flex-wrap {
    flex-wrap: wrap
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_wrap : Css.Style
flex_wrap =
    Css.property "flex-wrap" "wrap"


{-| This class has the effect of following css declaration:

```css
.flex-wrap-reverse {
    flex-wrap: wrap-reverse
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flex_wrap_reverse : Css.Style
flex_wrap_reverse =
    Css.property "flex-wrap" "wrap-reverse"


{-| This class has the effect of following css declaration:

```css
.float-left {
    float: left
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
float_left : Css.Style
float_left =
    Css.property "float" "left"


{-| This class has the effect of following css declaration:

```css
.float-none {
    float: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
float_none : Css.Style
float_none =
    Css.property "float" "none"


{-| This class has the effect of following css declaration:

```css
.float-right {
    float: right
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
float_right : Css.Style
float_right =
    Css.property "float" "right"


{-| This class has the effect of following css declaration:

```css
.flow-root {
    display: flow-root
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
flow_root : Css.Style
flow_root =
    Css.property "display" "flow-root"


{-| This class has the effect of following css declaration:

```css
.font-bold {
    font-weight: 700
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_bold : Css.Style
font_bold =
    Css.property "font-weight" "700"


{-| This class has the effect of following css declaration:

```css
.font-extrabold {
    font-weight: 800
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_extrabold : Css.Style
font_extrabold =
    Css.property "font-weight" "800"


{-| This class has the effect of following css declaration:

```css
.font-extralight {
    font-weight: 200
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_extralight : Css.Style
font_extralight =
    Css.property "font-weight" "200"


{-| This class has the effect of following css declaration:

```css
.font-light {
    font-weight: 300
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_light : Css.Style
font_light =
    Css.property "font-weight" "300"


{-| This class has the effect of following css declaration:

```css
.font-medium {
    font-weight: 500
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_medium : Css.Style
font_medium =
    Css.property "font-weight" "500"


{-| This class has the effect of following css declaration:

```css
.font-mono {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_mono : Css.Style
font_mono =
    Css.property "font-family" "ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, \"Liberation Mono\", \"Courier New\", monospace"


{-| This class has the effect of following css declaration:

```css
.font-normal {
    font-weight: 400
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_normal : Css.Style
font_normal =
    Css.property "font-weight" "400"


{-| This class has the effect of following css declaration:

```css
.font-sans {
    font-family: ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_sans : Css.Style
font_sans =
    Css.property "font-family" "ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, \"Noto Sans\", sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\""


{-| This class has the effect of following css declaration:

```css
.font-semibold {
    font-weight: 600
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_semibold : Css.Style
font_semibold =
    Css.property "font-weight" "600"


{-| This class has the effect of following css declaration:

```css
.font-serif {
    font-family: ui-serif, Georgia, Cambria, "Times New Roman", Times, serif
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_serif : Css.Style
font_serif =
    Css.property "font-family" "ui-serif, Georgia, Cambria, \"Times New Roman\", Times, serif"


{-| This class has the effect of following css declaration:

```css
.font-thin {
    font-weight: 100
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
font_thin : Css.Style
font_thin =
    Css.property "font-weight" "100"


{-| This class combines the effects of following css declarations:

```css
.form-checkbox,.form-radio {
    appearance: none;
    padding: 0;
    print-color-adjust: exact;
    display: inline-block;
    vertical-align: middle;
    background-origin: border-box;
    user-select: none;
    flex-shrink: 0;
    height: 1rem;
    width: 1rem;
    color: #2563eb;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    --tw-shadow: 0 0 #0000
}

.form-checkbox {
    border-radius: 0px
}

.form-checkbox:focus,.form-radio:focus {
    outline: 2px solid transparent;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 2px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)
}

.form-checkbox:checked,.form-radio:checked {
    border-color: transparent;
    background-color: currentColor;
    background-size: 100% 100%;
    background-position: center;
    background-repeat: no-repeat
}

.form-checkbox:checked {
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e")
}

.form-checkbox:checked:hover,.form-checkbox:checked:focus,.form-radio:checked:hover,.form-radio:checked:focus {
    border-color: transparent;
    background-color: currentColor
}

.form-checkbox:checked:hover,.form-checkbox:checked:focus,.form-radio:checked:hover,.form-radio:checked:focus {
    border-color: transparent;
    background-color: currentColor
}

.form-checkbox:indeterminate {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e");
    border-color: transparent;
    background-color: currentColor;
    background-size: 100% 100%;
    background-position: center;
    background-repeat: no-repeat
}

.form-checkbox:indeterminate:hover,.form-checkbox:indeterminate:focus {
    border-color: transparent;
    background-color: currentColor
}

.form-checkbox:indeterminate:hover,.form-checkbox:indeterminate:focus {
    border-color: transparent;
    background-color: currentColor
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
form_checkbox : Css.Style
form_checkbox =
    Css.batch
        [ Css.property "appearance" "none"
        , Css.property "padding" "0"
        , Css.property "print-color-adjust" "exact"
        , Css.property "display" "inline-block"
        , Css.property "vertical-align" "middle"
        , Css.property "background-origin" "border-box"
        , Css.property "user-select" "none"
        , Css.property "flex-shrink" "0"
        , Css.property "height" "1rem"
        , Css.property "width" "1rem"
        , Css.property "color" "#2563eb"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "border-radius" "0px"
        , Css.pseudoClass "indeterminate"
            [ Css.pseudoClass "focus"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "indeterminate"
            [ Css.pseudoClass "hover"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "indeterminate"
            [ Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 16 16'%3e%3cpath stroke='white' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M4 8h8'/%3e%3c/svg%3e\")"
            , Css.property "border-color" "transparent"
            , Css.property "background-color" "currentColor"
            , Css.property "background-size" "100% 100%"
            , Css.property "background-position" "center"
            , Css.property "background-repeat" "no-repeat"
            ]
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "focus"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "hover"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.property "border-color" "transparent"
            , Css.property "background-color" "currentColor"
            , Css.property "background-size" "100% 100%"
            , Css.property "background-position" "center"
            , Css.property "background-repeat" "no-repeat"
            , Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3cpath d='M12.207 4.793a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0l-2-2a1 1 0 011.414-1.414L6.5 9.086l4.293-4.293a1 1 0 011.414 0z'/%3e%3c/svg%3e\")"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "2px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.form-input,.form-textarea,.form-select,.form-multiselect {
    appearance: none;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    border-radius: 0px;
    padding-top: 0.5rem;
    padding-right: 0.75rem;
    padding-bottom: 0.5rem;
    padding-left: 0.75rem;
    font-size: 1rem;
    line-height: 1.5rem;
    --tw-shadow: 0 0 #0000;
}

.form-input:focus, .form-textarea:focus, .form-select:focus, .form-multiselect:focus {
    outline: 2px solid transparent;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow);
    border-color: #2563eb
}

.form-input::placeholder,.form-textarea::placeholder {
    color: #6b7280;
    opacity: 1
}

.form-input::-webkit-datetime-edit-fields-wrapper {
    padding: 0
}

.form-input::-webkit-date-and-time-value {
    min-height: 1.5em
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}

.form-input::-webkit-datetime-edit,.form-input::-webkit-datetime-edit-year-field,.form-input::-webkit-datetime-edit-month-field,.form-input::-webkit-datetime-edit-day-field,.form-input::-webkit-datetime-edit-hour-field,.form-input::-webkit-datetime-edit-minute-field,.form-input::-webkit-datetime-edit-second-field,.form-input::-webkit-datetime-edit-millisecond-field,.form-input::-webkit-datetime-edit-meridiem-field {
    padding-top: 0;
    padding-bottom: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
form_input : Css.Style
form_input =
    Css.batch
        [ Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.pseudoElement "-webkit-datetime-edit-meridiem-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-millisecond-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-second-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-minute-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-hour-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-day-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-month-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-year-field"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-datetime-edit"
            [ Css.property "padding-top" "0"
            , Css.property "padding-bottom" "0"
            ]
        , Css.pseudoElement "-webkit-date-and-time-value"
            [ Css.property "min-height" "1.5em"
            ]
        , Css.pseudoElement "-webkit-datetime-edit-fields-wrapper"
            [ Css.property "padding" "0"
            ]
        , Css.pseudoElement "placeholder"
            [ Css.property "color" "#6b7280"
            , Css.property "opacity" "1"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.form-input,.form-textarea,.form-select,.form-multiselect {
    appearance: none;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    border-radius: 0px;
    padding-top: 0.5rem;
    padding-right: 0.75rem;
    padding-bottom: 0.5rem;
    padding-left: 0.75rem;
    font-size: 1rem;
    line-height: 1.5rem;
    --tw-shadow: 0 0 #0000;
}

.form-input:focus, .form-textarea:focus, .form-select:focus, .form-multiselect:focus {
    outline: 2px solid transparent;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow);
    border-color: #2563eb
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
form_multiselect : Css.Style
form_multiselect =
    Css.batch
        [ Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.form-checkbox,.form-radio {
    appearance: none;
    padding: 0;
    print-color-adjust: exact;
    display: inline-block;
    vertical-align: middle;
    background-origin: border-box;
    user-select: none;
    flex-shrink: 0;
    height: 1rem;
    width: 1rem;
    color: #2563eb;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    --tw-shadow: 0 0 #0000
}

.form-radio {
    border-radius: 100%
}

.form-checkbox:focus,.form-radio:focus {
    outline: 2px solid transparent;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 2px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)
}

.form-checkbox:checked,.form-radio:checked {
    border-color: transparent;
    background-color: currentColor;
    background-size: 100% 100%;
    background-position: center;
    background-repeat: no-repeat
}

.form-radio:checked {
    background-image: url("data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e")
}

.form-checkbox:checked:hover,.form-checkbox:checked:focus,.form-radio:checked:hover,.form-radio:checked:focus {
    border-color: transparent;
    background-color: currentColor
}

.form-checkbox:checked:hover,.form-checkbox:checked:focus,.form-radio:checked:hover,.form-radio:checked:focus {
    border-color: transparent;
    background-color: currentColor
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
form_radio : Css.Style
form_radio =
    Css.batch
        [ Css.property "appearance" "none"
        , Css.property "padding" "0"
        , Css.property "print-color-adjust" "exact"
        , Css.property "display" "inline-block"
        , Css.property "vertical-align" "middle"
        , Css.property "background-origin" "border-box"
        , Css.property "user-select" "none"
        , Css.property "flex-shrink" "0"
        , Css.property "height" "1rem"
        , Css.property "width" "1rem"
        , Css.property "color" "#2563eb"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "border-radius" "100%"
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "focus"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.pseudoClass "hover"
                [ Css.property "border-color" "transparent"
                , Css.property "background-color" "currentColor"
                ]
            ]
        , Css.pseudoClass "checked"
            [ Css.property "border-color" "transparent"
            , Css.property "background-color" "currentColor"
            , Css.property "background-size" "100% 100%"
            , Css.property "background-position" "center"
            , Css.property "background-repeat" "no-repeat"
            , Css.property "background-image" "url(\"data:image/svg+xml,%3csvg viewBox='0 0 16 16' fill='white' xmlns='http://www.w3.org/2000/svg'%3e%3ccircle cx='8' cy='8' r='3'/%3e%3c/svg%3e\")"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "2px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(2px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.form-input,.form-textarea,.form-select,.form-multiselect {
    appearance: none;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    border-radius: 0px;
    padding-top: 0.5rem;
    padding-right: 0.75rem;
    padding-bottom: 0.5rem;
    padding-left: 0.75rem;
    font-size: 1rem;
    line-height: 1.5rem;
    --tw-shadow: 0 0 #0000;
}

.form-input:focus, .form-textarea:focus, .form-select:focus, .form-multiselect:focus {
    outline: 2px solid transparent;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow);
    border-color: #2563eb
}

.form-select {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e");
    background-position: right 0.5rem center;
    background-repeat: no-repeat;
    background-size: 1.5em 1.5em;
    padding-right: 2.5rem;
    print-color-adjust: exact
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
form_select : Css.Style
form_select =
    Css.batch
        [ Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.property "background-image" "url(\"data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e\")"
        , Css.property "background-position" "right 0.5rem center"
        , Css.property "background-repeat" "no-repeat"
        , Css.property "background-size" "1.5em 1.5em"
        , Css.property "padding-right" "2.5rem"
        , Css.property "print-color-adjust" "exact"
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| This class combines the effects of following css declarations:

```css
.form-input,.form-textarea,.form-select,.form-multiselect {
    appearance: none;
    background-color: #fff;
    border-color: #6b7280;
    border-width: 1px;
    border-radius: 0px;
    padding-top: 0.5rem;
    padding-right: 0.75rem;
    padding-bottom: 0.5rem;
    padding-left: 0.75rem;
    font-size: 1rem;
    line-height: 1.5rem;
    --tw-shadow: 0 0 #0000;
}

.form-input:focus, .form-textarea:focus, .form-select:focus, .form-multiselect:focus {
    outline: 2px solid transparent;
    outline-offset: 2px;
    --tw-ring-inset: var(--tw-empty,/*!*/ /*!*/);
    --tw-ring-offset-width: 0px;
    --tw-ring-offset-color: #fff;
    --tw-ring-color: #2563eb;
    --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
    --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color);
    box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow);
    border-color: #2563eb
}

.form-input::placeholder,.form-textarea::placeholder {
    color: #6b7280;
    opacity: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
form_textarea : Css.Style
form_textarea =
    Css.batch
        [ Css.property "appearance" "none"
        , Css.property "background-color" "#fff"
        , Css.property "border-color" "#6b7280"
        , Css.property "border-width" "1px"
        , Css.property "border-radius" "0px"
        , Css.property "padding-top" "0.5rem"
        , Css.property "padding-right" "0.75rem"
        , Css.property "padding-bottom" "0.5rem"
        , Css.property "padding-left" "0.75rem"
        , Css.property "font-size" "1rem"
        , Css.property "line-height" "1.5rem"
        , Css.property "--tw-shadow" "0 0 #0000"
        , Css.pseudoElement "placeholder"
            [ Css.property "color" "#6b7280"
            , Css.property "opacity" "1"
            ]
        , Css.pseudoClass "focus"
            [ Css.property "outline" "2px solid transparent"
            , Css.property "outline-offset" "2px"
            , Css.property "--tw-ring-inset" "var(--tw-empty,/*!*/ /*!*/)"
            , Css.property "--tw-ring-offset-width" "0px"
            , Css.property "--tw-ring-offset-color" "#fff"
            , Css.property "--tw-ring-color" "#2563eb"
            , Css.property "--tw-ring-offset-shadow" "var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color)"
            , Css.property "--tw-ring-shadow" "var(--tw-ring-inset) 0 0 0 calc(1px + var(--tw-ring-offset-width)) var(--tw-ring-color)"
            , Css.property "box-shadow" "var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow)"
            , Css.property "border-color" "#2563eb"
            ]
        ]


{-| This class has the effect of following css declaration:

```css
.gap-0 {
    gap: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_0 : Css.Style
gap_0 =
    Css.property "gap" "0px"


{-| This class has the effect of following css declaration:

```css
.gap-0\.5 {
    gap: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_0_dot_5 : Css.Style
gap_0_dot_5 =
    Css.property "gap" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.gap-1 {
    gap: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_1 : Css.Style
gap_1 =
    Css.property "gap" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-10 {
    gap: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_10 : Css.Style
gap_10 =
    Css.property "gap" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-11 {
    gap: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_11 : Css.Style
gap_11 =
    Css.property "gap" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-12 {
    gap: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_12 : Css.Style
gap_12 =
    Css.property "gap" "3rem"


{-| This class has the effect of following css declaration:

```css
.gap-14 {
    gap: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_14 : Css.Style
gap_14 =
    Css.property "gap" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-16 {
    gap: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_16 : Css.Style
gap_16 =
    Css.property "gap" "4rem"


{-| This class has the effect of following css declaration:

```css
.gap-1\.5 {
    gap: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_1_dot_5 : Css.Style
gap_1_dot_5 =
    Css.property "gap" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.gap-2 {
    gap: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_2 : Css.Style
gap_2 =
    Css.property "gap" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-20 {
    gap: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_20 : Css.Style
gap_20 =
    Css.property "gap" "5rem"


{-| This class has the effect of following css declaration:

```css
.gap-24 {
    gap: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_24 : Css.Style
gap_24 =
    Css.property "gap" "6rem"


{-| This class has the effect of following css declaration:

```css
.gap-28 {
    gap: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_28 : Css.Style
gap_28 =
    Css.property "gap" "7rem"


{-| This class has the effect of following css declaration:

```css
.gap-2\.5 {
    gap: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_2_dot_5 : Css.Style
gap_2_dot_5 =
    Css.property "gap" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.gap-3 {
    gap: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_3 : Css.Style
gap_3 =
    Css.property "gap" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-32 {
    gap: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_32 : Css.Style
gap_32 =
    Css.property "gap" "8rem"


{-| This class has the effect of following css declaration:

```css
.gap-36 {
    gap: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_36 : Css.Style
gap_36 =
    Css.property "gap" "9rem"


{-| This class has the effect of following css declaration:

```css
.gap-3\.5 {
    gap: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_3_dot_5 : Css.Style
gap_3_dot_5 =
    Css.property "gap" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.gap-4 {
    gap: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_4 : Css.Style
gap_4 =
    Css.property "gap" "1rem"


{-| This class has the effect of following css declaration:

```css
.gap-40 {
    gap: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_40 : Css.Style
gap_40 =
    Css.property "gap" "10rem"


{-| This class has the effect of following css declaration:

```css
.gap-44 {
    gap: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_44 : Css.Style
gap_44 =
    Css.property "gap" "11rem"


{-| This class has the effect of following css declaration:

```css
.gap-48 {
    gap: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_48 : Css.Style
gap_48 =
    Css.property "gap" "12rem"


{-| This class has the effect of following css declaration:

```css
.gap-5 {
    gap: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_5 : Css.Style
gap_5 =
    Css.property "gap" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-52 {
    gap: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_52 : Css.Style
gap_52 =
    Css.property "gap" "13rem"


{-| This class has the effect of following css declaration:

```css
.gap-56 {
    gap: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_56 : Css.Style
gap_56 =
    Css.property "gap" "14rem"


{-| This class has the effect of following css declaration:

```css
.gap-6 {
    gap: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_6 : Css.Style
gap_6 =
    Css.property "gap" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-60 {
    gap: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_60 : Css.Style
gap_60 =
    Css.property "gap" "15rem"


{-| This class has the effect of following css declaration:

```css
.gap-64 {
    gap: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_64 : Css.Style
gap_64 =
    Css.property "gap" "16rem"


{-| This class has the effect of following css declaration:

```css
.gap-7 {
    gap: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_7 : Css.Style
gap_7 =
    Css.property "gap" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-72 {
    gap: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_72 : Css.Style
gap_72 =
    Css.property "gap" "18rem"


{-| This class has the effect of following css declaration:

```css
.gap-8 {
    gap: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_8 : Css.Style
gap_8 =
    Css.property "gap" "2rem"


{-| This class has the effect of following css declaration:

```css
.gap-80 {
    gap: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_80 : Css.Style
gap_80 =
    Css.property "gap" "20rem"


{-| This class has the effect of following css declaration:

```css
.gap-9 {
    gap: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_9 : Css.Style
gap_9 =
    Css.property "gap" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-96 {
    gap: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_96 : Css.Style
gap_96 =
    Css.property "gap" "24rem"


{-| This class has the effect of following css declaration:

```css
.gap-px {
    gap: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_px : Css.Style
gap_px =
    Css.property "gap" "1px"


{-| This class has the effect of following css declaration:

```css
.gap-x-0 {
    column-gap: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_0 : Css.Style
gap_x_0 =
    Css.property "column-gap" "0px"


{-| This class has the effect of following css declaration:

```css
.gap-x-0\.5 {
    column-gap: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_0_dot_5 : Css.Style
gap_x_0_dot_5 =
    Css.property "column-gap" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-1 {
    column-gap: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_1 : Css.Style
gap_x_1 =
    Css.property "column-gap" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-10 {
    column-gap: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_10 : Css.Style
gap_x_10 =
    Css.property "column-gap" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-11 {
    column-gap: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_11 : Css.Style
gap_x_11 =
    Css.property "column-gap" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-12 {
    column-gap: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_12 : Css.Style
gap_x_12 =
    Css.property "column-gap" "3rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-14 {
    column-gap: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_14 : Css.Style
gap_x_14 =
    Css.property "column-gap" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-16 {
    column-gap: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_16 : Css.Style
gap_x_16 =
    Css.property "column-gap" "4rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-1\.5 {
    column-gap: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_1_dot_5 : Css.Style
gap_x_1_dot_5 =
    Css.property "column-gap" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-2 {
    column-gap: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_2 : Css.Style
gap_x_2 =
    Css.property "column-gap" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-20 {
    column-gap: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_20 : Css.Style
gap_x_20 =
    Css.property "column-gap" "5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-24 {
    column-gap: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_24 : Css.Style
gap_x_24 =
    Css.property "column-gap" "6rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-28 {
    column-gap: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_28 : Css.Style
gap_x_28 =
    Css.property "column-gap" "7rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-2\.5 {
    column-gap: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_2_dot_5 : Css.Style
gap_x_2_dot_5 =
    Css.property "column-gap" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-3 {
    column-gap: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_3 : Css.Style
gap_x_3 =
    Css.property "column-gap" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-32 {
    column-gap: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_32 : Css.Style
gap_x_32 =
    Css.property "column-gap" "8rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-36 {
    column-gap: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_36 : Css.Style
gap_x_36 =
    Css.property "column-gap" "9rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-3\.5 {
    column-gap: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_3_dot_5 : Css.Style
gap_x_3_dot_5 =
    Css.property "column-gap" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-4 {
    column-gap: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_4 : Css.Style
gap_x_4 =
    Css.property "column-gap" "1rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-40 {
    column-gap: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_40 : Css.Style
gap_x_40 =
    Css.property "column-gap" "10rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-44 {
    column-gap: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_44 : Css.Style
gap_x_44 =
    Css.property "column-gap" "11rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-48 {
    column-gap: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_48 : Css.Style
gap_x_48 =
    Css.property "column-gap" "12rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-5 {
    column-gap: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_5 : Css.Style
gap_x_5 =
    Css.property "column-gap" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-52 {
    column-gap: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_52 : Css.Style
gap_x_52 =
    Css.property "column-gap" "13rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-56 {
    column-gap: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_56 : Css.Style
gap_x_56 =
    Css.property "column-gap" "14rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-6 {
    column-gap: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_6 : Css.Style
gap_x_6 =
    Css.property "column-gap" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-60 {
    column-gap: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_60 : Css.Style
gap_x_60 =
    Css.property "column-gap" "15rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-64 {
    column-gap: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_64 : Css.Style
gap_x_64 =
    Css.property "column-gap" "16rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-7 {
    column-gap: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_7 : Css.Style
gap_x_7 =
    Css.property "column-gap" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-72 {
    column-gap: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_72 : Css.Style
gap_x_72 =
    Css.property "column-gap" "18rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-8 {
    column-gap: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_8 : Css.Style
gap_x_8 =
    Css.property "column-gap" "2rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-80 {
    column-gap: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_80 : Css.Style
gap_x_80 =
    Css.property "column-gap" "20rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-9 {
    column-gap: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_9 : Css.Style
gap_x_9 =
    Css.property "column-gap" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-96 {
    column-gap: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_96 : Css.Style
gap_x_96 =
    Css.property "column-gap" "24rem"


{-| This class has the effect of following css declaration:

```css
.gap-x-px {
    column-gap: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_x_px : Css.Style
gap_x_px =
    Css.property "column-gap" "1px"


{-| This class has the effect of following css declaration:

```css
.gap-y-0 {
    row-gap: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_0 : Css.Style
gap_y_0 =
    Css.property "row-gap" "0px"


{-| This class has the effect of following css declaration:

```css
.gap-y-0\.5 {
    row-gap: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_0_dot_5 : Css.Style
gap_y_0_dot_5 =
    Css.property "row-gap" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-1 {
    row-gap: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_1 : Css.Style
gap_y_1 =
    Css.property "row-gap" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-10 {
    row-gap: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_10 : Css.Style
gap_y_10 =
    Css.property "row-gap" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-11 {
    row-gap: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_11 : Css.Style
gap_y_11 =
    Css.property "row-gap" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-12 {
    row-gap: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_12 : Css.Style
gap_y_12 =
    Css.property "row-gap" "3rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-14 {
    row-gap: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_14 : Css.Style
gap_y_14 =
    Css.property "row-gap" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-16 {
    row-gap: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_16 : Css.Style
gap_y_16 =
    Css.property "row-gap" "4rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-1\.5 {
    row-gap: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_1_dot_5 : Css.Style
gap_y_1_dot_5 =
    Css.property "row-gap" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-2 {
    row-gap: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_2 : Css.Style
gap_y_2 =
    Css.property "row-gap" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-20 {
    row-gap: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_20 : Css.Style
gap_y_20 =
    Css.property "row-gap" "5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-24 {
    row-gap: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_24 : Css.Style
gap_y_24 =
    Css.property "row-gap" "6rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-28 {
    row-gap: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_28 : Css.Style
gap_y_28 =
    Css.property "row-gap" "7rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-2\.5 {
    row-gap: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_2_dot_5 : Css.Style
gap_y_2_dot_5 =
    Css.property "row-gap" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-3 {
    row-gap: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_3 : Css.Style
gap_y_3 =
    Css.property "row-gap" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-32 {
    row-gap: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_32 : Css.Style
gap_y_32 =
    Css.property "row-gap" "8rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-36 {
    row-gap: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_36 : Css.Style
gap_y_36 =
    Css.property "row-gap" "9rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-3\.5 {
    row-gap: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_3_dot_5 : Css.Style
gap_y_3_dot_5 =
    Css.property "row-gap" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-4 {
    row-gap: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_4 : Css.Style
gap_y_4 =
    Css.property "row-gap" "1rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-40 {
    row-gap: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_40 : Css.Style
gap_y_40 =
    Css.property "row-gap" "10rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-44 {
    row-gap: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_44 : Css.Style
gap_y_44 =
    Css.property "row-gap" "11rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-48 {
    row-gap: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_48 : Css.Style
gap_y_48 =
    Css.property "row-gap" "12rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-5 {
    row-gap: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_5 : Css.Style
gap_y_5 =
    Css.property "row-gap" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-52 {
    row-gap: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_52 : Css.Style
gap_y_52 =
    Css.property "row-gap" "13rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-56 {
    row-gap: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_56 : Css.Style
gap_y_56 =
    Css.property "row-gap" "14rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-6 {
    row-gap: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_6 : Css.Style
gap_y_6 =
    Css.property "row-gap" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-60 {
    row-gap: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_60 : Css.Style
gap_y_60 =
    Css.property "row-gap" "15rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-64 {
    row-gap: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_64 : Css.Style
gap_y_64 =
    Css.property "row-gap" "16rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-7 {
    row-gap: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_7 : Css.Style
gap_y_7 =
    Css.property "row-gap" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-72 {
    row-gap: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_72 : Css.Style
gap_y_72 =
    Css.property "row-gap" "18rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-8 {
    row-gap: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_8 : Css.Style
gap_y_8 =
    Css.property "row-gap" "2rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-80 {
    row-gap: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_80 : Css.Style
gap_y_80 =
    Css.property "row-gap" "20rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-9 {
    row-gap: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_9 : Css.Style
gap_y_9 =
    Css.property "row-gap" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-96 {
    row-gap: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_96 : Css.Style
gap_y_96 =
    Css.property "row-gap" "24rem"


{-| This class has the effect of following css declaration:

```css
.gap-y-px {
    row-gap: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
gap_y_px : Css.Style
gap_y_px =
    Css.property "row-gap" "1px"


{-| This class has the effect of following css declaration:

```css
.grayscale {
    --tw-grayscale: grayscale(100%);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grayscale : Css.Style
grayscale =
    Css.batch
        [ Css.property "--tw-grayscale" "grayscale(100%)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.grayscale-0 {
    --tw-grayscale: grayscale(0);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grayscale_0 : Css.Style
grayscale_0 =
    Css.batch
        [ Css.property "--tw-grayscale" "grayscale(0)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.grid {
    display: grid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid : Css.Style
grid =
    Css.property "display" "grid"


{-| This class has the effect of following css declaration:

```css
.grid-cols-1 {
    grid-template-columns: repeat(1, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_1 : Css.Style
grid_cols_1 =
    Css.property "grid-template-columns" "repeat(1, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-10 {
    grid-template-columns: repeat(10, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_10 : Css.Style
grid_cols_10 =
    Css.property "grid-template-columns" "repeat(10, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-11 {
    grid-template-columns: repeat(11, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_11 : Css.Style
grid_cols_11 =
    Css.property "grid-template-columns" "repeat(11, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-12 {
    grid-template-columns: repeat(12, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_12 : Css.Style
grid_cols_12 =
    Css.property "grid-template-columns" "repeat(12, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-2 {
    grid-template-columns: repeat(2, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_2 : Css.Style
grid_cols_2 =
    Css.property "grid-template-columns" "repeat(2, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-3 {
    grid-template-columns: repeat(3, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_3 : Css.Style
grid_cols_3 =
    Css.property "grid-template-columns" "repeat(3, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-4 {
    grid-template-columns: repeat(4, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_4 : Css.Style
grid_cols_4 =
    Css.property "grid-template-columns" "repeat(4, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-5 {
    grid-template-columns: repeat(5, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_5 : Css.Style
grid_cols_5 =
    Css.property "grid-template-columns" "repeat(5, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-6 {
    grid-template-columns: repeat(6, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_6 : Css.Style
grid_cols_6 =
    Css.property "grid-template-columns" "repeat(6, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-7 {
    grid-template-columns: repeat(7, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_7 : Css.Style
grid_cols_7 =
    Css.property "grid-template-columns" "repeat(7, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-8 {
    grid-template-columns: repeat(8, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_8 : Css.Style
grid_cols_8 =
    Css.property "grid-template-columns" "repeat(8, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-9 {
    grid-template-columns: repeat(9, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_9 : Css.Style
grid_cols_9 =
    Css.property "grid-template-columns" "repeat(9, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-cols-none {
    grid-template-columns: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_cols_none : Css.Style
grid_cols_none =
    Css.property "grid-template-columns" "none"


{-| This class has the effect of following css declaration:

```css
.grid-flow-col {
    grid-auto-flow: column
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_col : Css.Style
grid_flow_col =
    Css.property "grid-auto-flow" "column"


{-| This class has the effect of following css declaration:

```css
.grid-flow-col-dense {
    grid-auto-flow: column dense
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_col_dense : Css.Style
grid_flow_col_dense =
    Css.property "grid-auto-flow" "column dense"


{-| This class has the effect of following css declaration:

```css
.grid-flow-dense {
    grid-auto-flow: dense
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_dense : Css.Style
grid_flow_dense =
    Css.property "grid-auto-flow" "dense"


{-| This class has the effect of following css declaration:

```css
.grid-flow-row {
    grid-auto-flow: row
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_row : Css.Style
grid_flow_row =
    Css.property "grid-auto-flow" "row"


{-| This class has the effect of following css declaration:

```css
.grid-flow-row-dense {
    grid-auto-flow: row dense
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_flow_row_dense : Css.Style
grid_flow_row_dense =
    Css.property "grid-auto-flow" "row dense"


{-| This class has the effect of following css declaration:

```css
.grid-rows-1 {
    grid-template-rows: repeat(1, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_1 : Css.Style
grid_rows_1 =
    Css.property "grid-template-rows" "repeat(1, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-2 {
    grid-template-rows: repeat(2, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_2 : Css.Style
grid_rows_2 =
    Css.property "grid-template-rows" "repeat(2, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-3 {
    grid-template-rows: repeat(3, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_3 : Css.Style
grid_rows_3 =
    Css.property "grid-template-rows" "repeat(3, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-4 {
    grid-template-rows: repeat(4, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_4 : Css.Style
grid_rows_4 =
    Css.property "grid-template-rows" "repeat(4, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-5 {
    grid-template-rows: repeat(5, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_5 : Css.Style
grid_rows_5 =
    Css.property "grid-template-rows" "repeat(5, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-6 {
    grid-template-rows: repeat(6, minmax(0, 1fr))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_6 : Css.Style
grid_rows_6 =
    Css.property "grid-template-rows" "repeat(6, minmax(0, 1fr))"


{-| This class has the effect of following css declaration:

```css
.grid-rows-none {
    grid-template-rows: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grid_rows_none : Css.Style
grid_rows_none =
    Css.property "grid-template-rows" "none"


{-| This class has the effect of following css declaration:

```css
.grow {
    flex-grow: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grow : Css.Style
grow =
    Css.property "flex-grow" "1"


{-| This class has the effect of following css declaration:

```css
.grow-0 {
    flex-grow: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
grow_0 : Css.Style
grow_0 =
    Css.property "flex-grow" "0"


{-| This class has the effect of following css declaration:

```css
.h-0 {
    height: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_0 : Css.Style
h_0 =
    Css.property "height" "0px"


{-| This class has the effect of following css declaration:

```css
.h-0\.5 {
    height: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_0_dot_5 : Css.Style
h_0_dot_5 =
    Css.property "height" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.h-1 {
    height: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1 : Css.Style
h_1 =
    Css.property "height" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.h-10 {
    height: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_10 : Css.Style
h_10 =
    Css.property "height" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.h-11 {
    height: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_11 : Css.Style
h_11 =
    Css.property "height" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.h-12 {
    height: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_12 : Css.Style
h_12 =
    Css.property "height" "3rem"


{-| This class has the effect of following css declaration:

```css
.h-14 {
    height: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_14 : Css.Style
h_14 =
    Css.property "height" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.h-16 {
    height: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_16 : Css.Style
h_16 =
    Css.property "height" "4rem"


{-| This class has the effect of following css declaration:

```css
.h-1\.5 {
    height: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1_dot_5 : Css.Style
h_1_dot_5 =
    Css.property "height" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.h-1\/2 {
    height: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over2 : Css.Style
h_1over2 =
    Css.property "height" "50%"


{-| This class has the effect of following css declaration:

```css
.h-1\/3 {
    height: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over3 : Css.Style
h_1over3 =
    Css.property "height" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.h-1\/4 {
    height: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over4 : Css.Style
h_1over4 =
    Css.property "height" "25%"


{-| This class has the effect of following css declaration:

```css
.h-1\/5 {
    height: 20%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over5 : Css.Style
h_1over5 =
    Css.property "height" "20%"


{-| This class has the effect of following css declaration:

```css
.h-1\/6 {
    height: 16.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_1over6 : Css.Style
h_1over6 =
    Css.property "height" "16.666667%"


{-| This class has the effect of following css declaration:

```css
.h-2 {
    height: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2 : Css.Style
h_2 =
    Css.property "height" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.h-20 {
    height: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_20 : Css.Style
h_20 =
    Css.property "height" "5rem"


{-| This class has the effect of following css declaration:

```css
.h-24 {
    height: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_24 : Css.Style
h_24 =
    Css.property "height" "6rem"


{-| This class has the effect of following css declaration:

```css
.h-28 {
    height: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_28 : Css.Style
h_28 =
    Css.property "height" "7rem"


{-| This class has the effect of following css declaration:

```css
.h-2\.5 {
    height: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2_dot_5 : Css.Style
h_2_dot_5 =
    Css.property "height" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.h-2\/3 {
    height: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over3 : Css.Style
h_2over3 =
    Css.property "height" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.h-2\/4 {
    height: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over4 : Css.Style
h_2over4 =
    Css.property "height" "50%"


{-| This class has the effect of following css declaration:

```css
.h-2\/5 {
    height: 40%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over5 : Css.Style
h_2over5 =
    Css.property "height" "40%"


{-| This class has the effect of following css declaration:

```css
.h-2\/6 {
    height: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_2over6 : Css.Style
h_2over6 =
    Css.property "height" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.h-3 {
    height: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3 : Css.Style
h_3 =
    Css.property "height" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.h-32 {
    height: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_32 : Css.Style
h_32 =
    Css.property "height" "8rem"


{-| This class has the effect of following css declaration:

```css
.h-36 {
    height: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_36 : Css.Style
h_36 =
    Css.property "height" "9rem"


{-| This class has the effect of following css declaration:

```css
.h-3\.5 {
    height: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3_dot_5 : Css.Style
h_3_dot_5 =
    Css.property "height" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.h-3\/4 {
    height: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3over4 : Css.Style
h_3over4 =
    Css.property "height" "75%"


{-| This class has the effect of following css declaration:

```css
.h-3\/5 {
    height: 60%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3over5 : Css.Style
h_3over5 =
    Css.property "height" "60%"


{-| This class has the effect of following css declaration:

```css
.h-3\/6 {
    height: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_3over6 : Css.Style
h_3over6 =
    Css.property "height" "50%"


{-| This class has the effect of following css declaration:

```css
.h-4 {
    height: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_4 : Css.Style
h_4 =
    Css.property "height" "1rem"


{-| This class has the effect of following css declaration:

```css
.h-40 {
    height: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_40 : Css.Style
h_40 =
    Css.property "height" "10rem"


{-| This class has the effect of following css declaration:

```css
.h-44 {
    height: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_44 : Css.Style
h_44 =
    Css.property "height" "11rem"


{-| This class has the effect of following css declaration:

```css
.h-48 {
    height: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_48 : Css.Style
h_48 =
    Css.property "height" "12rem"


{-| This class has the effect of following css declaration:

```css
.h-4\/5 {
    height: 80%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_4over5 : Css.Style
h_4over5 =
    Css.property "height" "80%"


{-| This class has the effect of following css declaration:

```css
.h-4\/6 {
    height: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_4over6 : Css.Style
h_4over6 =
    Css.property "height" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.h-5 {
    height: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_5 : Css.Style
h_5 =
    Css.property "height" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.h-52 {
    height: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_52 : Css.Style
h_52 =
    Css.property "height" "13rem"


{-| This class has the effect of following css declaration:

```css
.h-56 {
    height: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_56 : Css.Style
h_56 =
    Css.property "height" "14rem"


{-| This class has the effect of following css declaration:

```css
.h-5\/6 {
    height: 83.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_5over6 : Css.Style
h_5over6 =
    Css.property "height" "83.333333%"


{-| This class has the effect of following css declaration:

```css
.h-6 {
    height: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_6 : Css.Style
h_6 =
    Css.property "height" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.h-60 {
    height: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_60 : Css.Style
h_60 =
    Css.property "height" "15rem"


{-| This class has the effect of following css declaration:

```css
.h-64 {
    height: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_64 : Css.Style
h_64 =
    Css.property "height" "16rem"


{-| This class has the effect of following css declaration:

```css
.h-7 {
    height: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_7 : Css.Style
h_7 =
    Css.property "height" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.h-72 {
    height: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_72 : Css.Style
h_72 =
    Css.property "height" "18rem"


{-| This class has the effect of following css declaration:

```css
.h-8 {
    height: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_8 : Css.Style
h_8 =
    Css.property "height" "2rem"


{-| This class has the effect of following css declaration:

```css
.h-80 {
    height: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_80 : Css.Style
h_80 =
    Css.property "height" "20rem"


{-| This class has the effect of following css declaration:

```css
.h-9 {
    height: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_9 : Css.Style
h_9 =
    Css.property "height" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.h-96 {
    height: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_96 : Css.Style
h_96 =
    Css.property "height" "24rem"


{-| This class has the effect of following css declaration:

```css
.h-auto {
    height: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_auto : Css.Style
h_auto =
    Css.property "height" "auto"


{-| This class has the effect of following css declaration:

```css
.h-fit {
    height: fit-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_fit : Css.Style
h_fit =
    Css.property "height" "fit-content"


{-| This class has the effect of following css declaration:

```css
.h-full {
    height: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_full : Css.Style
h_full =
    Css.property "height" "100%"


{-| This class has the effect of following css declaration:

```css
.h-max {
    height: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_max : Css.Style
h_max =
    Css.property "height" "max-content"


{-| This class has the effect of following css declaration:

```css
.h-min {
    height: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_min : Css.Style
h_min =
    Css.property "height" "min-content"


{-| This class has the effect of following css declaration:

```css
.h-px {
    height: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_px : Css.Style
h_px =
    Css.property "height" "1px"


{-| This class has the effect of following css declaration:

```css
.h-screen {
    height: 100vh
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
h_screen : Css.Style
h_screen =
    Css.property "height" "100vh"


{-| This class has the effect of following css declaration:

```css
.hidden {
    display: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hidden : Css.Style
hidden =
    Css.property "display" "none"


{-| This class has the effect of following css declaration:

```css
.hue-rotate-0 {
    --tw-hue-rotate: hue-rotate(0deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_0 : Css.Style
hue_rotate_0 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(0deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.hue-rotate-15 {
    --tw-hue-rotate: hue-rotate(15deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_15 : Css.Style
hue_rotate_15 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(15deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.hue-rotate-180 {
    --tw-hue-rotate: hue-rotate(180deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_180 : Css.Style
hue_rotate_180 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(180deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.hue-rotate-30 {
    --tw-hue-rotate: hue-rotate(30deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_30 : Css.Style
hue_rotate_30 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(30deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.hue-rotate-60 {
    --tw-hue-rotate: hue-rotate(60deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_60 : Css.Style
hue_rotate_60 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(60deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.hue-rotate-90 {
    --tw-hue-rotate: hue-rotate(90deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
hue_rotate_90 : Css.Style
hue_rotate_90 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(90deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.indent-0 {
    text-indent: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_0 : Css.Style
indent_0 =
    Css.property "text-indent" "0px"


{-| This class has the effect of following css declaration:

```css
.indent-0\.5 {
    text-indent: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_0_dot_5 : Css.Style
indent_0_dot_5 =
    Css.property "text-indent" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.indent-1 {
    text-indent: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_1 : Css.Style
indent_1 =
    Css.property "text-indent" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.indent-10 {
    text-indent: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_10 : Css.Style
indent_10 =
    Css.property "text-indent" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.indent-11 {
    text-indent: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_11 : Css.Style
indent_11 =
    Css.property "text-indent" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.indent-12 {
    text-indent: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_12 : Css.Style
indent_12 =
    Css.property "text-indent" "3rem"


{-| This class has the effect of following css declaration:

```css
.indent-14 {
    text-indent: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_14 : Css.Style
indent_14 =
    Css.property "text-indent" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.indent-16 {
    text-indent: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_16 : Css.Style
indent_16 =
    Css.property "text-indent" "4rem"


{-| This class has the effect of following css declaration:

```css
.indent-1\.5 {
    text-indent: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_1_dot_5 : Css.Style
indent_1_dot_5 =
    Css.property "text-indent" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.indent-2 {
    text-indent: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_2 : Css.Style
indent_2 =
    Css.property "text-indent" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.indent-20 {
    text-indent: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_20 : Css.Style
indent_20 =
    Css.property "text-indent" "5rem"


{-| This class has the effect of following css declaration:

```css
.indent-24 {
    text-indent: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_24 : Css.Style
indent_24 =
    Css.property "text-indent" "6rem"


{-| This class has the effect of following css declaration:

```css
.indent-28 {
    text-indent: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_28 : Css.Style
indent_28 =
    Css.property "text-indent" "7rem"


{-| This class has the effect of following css declaration:

```css
.indent-2\.5 {
    text-indent: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_2_dot_5 : Css.Style
indent_2_dot_5 =
    Css.property "text-indent" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.indent-3 {
    text-indent: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_3 : Css.Style
indent_3 =
    Css.property "text-indent" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.indent-32 {
    text-indent: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_32 : Css.Style
indent_32 =
    Css.property "text-indent" "8rem"


{-| This class has the effect of following css declaration:

```css
.indent-36 {
    text-indent: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_36 : Css.Style
indent_36 =
    Css.property "text-indent" "9rem"


{-| This class has the effect of following css declaration:

```css
.indent-3\.5 {
    text-indent: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_3_dot_5 : Css.Style
indent_3_dot_5 =
    Css.property "text-indent" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.indent-4 {
    text-indent: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_4 : Css.Style
indent_4 =
    Css.property "text-indent" "1rem"


{-| This class has the effect of following css declaration:

```css
.indent-40 {
    text-indent: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_40 : Css.Style
indent_40 =
    Css.property "text-indent" "10rem"


{-| This class has the effect of following css declaration:

```css
.indent-44 {
    text-indent: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_44 : Css.Style
indent_44 =
    Css.property "text-indent" "11rem"


{-| This class has the effect of following css declaration:

```css
.indent-48 {
    text-indent: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_48 : Css.Style
indent_48 =
    Css.property "text-indent" "12rem"


{-| This class has the effect of following css declaration:

```css
.indent-5 {
    text-indent: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_5 : Css.Style
indent_5 =
    Css.property "text-indent" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.indent-52 {
    text-indent: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_52 : Css.Style
indent_52 =
    Css.property "text-indent" "13rem"


{-| This class has the effect of following css declaration:

```css
.indent-56 {
    text-indent: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_56 : Css.Style
indent_56 =
    Css.property "text-indent" "14rem"


{-| This class has the effect of following css declaration:

```css
.indent-6 {
    text-indent: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_6 : Css.Style
indent_6 =
    Css.property "text-indent" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.indent-60 {
    text-indent: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_60 : Css.Style
indent_60 =
    Css.property "text-indent" "15rem"


{-| This class has the effect of following css declaration:

```css
.indent-64 {
    text-indent: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_64 : Css.Style
indent_64 =
    Css.property "text-indent" "16rem"


{-| This class has the effect of following css declaration:

```css
.indent-7 {
    text-indent: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_7 : Css.Style
indent_7 =
    Css.property "text-indent" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.indent-72 {
    text-indent: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_72 : Css.Style
indent_72 =
    Css.property "text-indent" "18rem"


{-| This class has the effect of following css declaration:

```css
.indent-8 {
    text-indent: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_8 : Css.Style
indent_8 =
    Css.property "text-indent" "2rem"


{-| This class has the effect of following css declaration:

```css
.indent-80 {
    text-indent: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_80 : Css.Style
indent_80 =
    Css.property "text-indent" "20rem"


{-| This class has the effect of following css declaration:

```css
.indent-9 {
    text-indent: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_9 : Css.Style
indent_9 =
    Css.property "text-indent" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.indent-96 {
    text-indent: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_96 : Css.Style
indent_96 =
    Css.property "text-indent" "24rem"


{-| This class has the effect of following css declaration:

```css
.indent-px {
    text-indent: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
indent_px : Css.Style
indent_px =
    Css.property "text-indent" "1px"


{-| This class has the effect of following css declaration:

```css
.inline {
    display: inline
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline : Css.Style
inline =
    Css.property "display" "inline"


{-| This class has the effect of following css declaration:

```css
.inline-block {
    display: inline-block
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_block : Css.Style
inline_block =
    Css.property "display" "inline-block"


{-| This class has the effect of following css declaration:

```css
.inline-flex {
    display: inline-flex
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_flex : Css.Style
inline_flex =
    Css.property "display" "inline-flex"


{-| This class has the effect of following css declaration:

```css
.inline-grid {
    display: inline-grid
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_grid : Css.Style
inline_grid =
    Css.property "display" "inline-grid"


{-| This class has the effect of following css declaration:

```css
.inline-table {
    display: inline-table
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inline_table : Css.Style
inline_table =
    Css.property "display" "inline-table"


{-| This class has the effect of following css declaration:

```css
.inset-0 {
    top: 0px;
    right: 0px;
    bottom: 0px;
    left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_0 : Css.Style
inset_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "right" "0px"
        , Css.property "bottom" "0px"
        , Css.property "left" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-0\.5 {
    top: 0.125rem;
    right: 0.125rem;
    bottom: 0.125rem;
    left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_0_dot_5 : Css.Style
inset_0_dot_5 =
    Css.batch
        [ Css.property "top" "0.125rem"
        , Css.property "right" "0.125rem"
        , Css.property "bottom" "0.125rem"
        , Css.property "left" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1 {
    top: 0.25rem;
    right: 0.25rem;
    bottom: 0.25rem;
    left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1 : Css.Style
inset_1 =
    Css.batch
        [ Css.property "top" "0.25rem"
        , Css.property "right" "0.25rem"
        , Css.property "bottom" "0.25rem"
        , Css.property "left" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-10 {
    top: 2.5rem;
    right: 2.5rem;
    bottom: 2.5rem;
    left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_10 : Css.Style
inset_10 =
    Css.batch
        [ Css.property "top" "2.5rem"
        , Css.property "right" "2.5rem"
        , Css.property "bottom" "2.5rem"
        , Css.property "left" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-11 {
    top: 2.75rem;
    right: 2.75rem;
    bottom: 2.75rem;
    left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_11 : Css.Style
inset_11 =
    Css.batch
        [ Css.property "top" "2.75rem"
        , Css.property "right" "2.75rem"
        , Css.property "bottom" "2.75rem"
        , Css.property "left" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-12 {
    top: 3rem;
    right: 3rem;
    bottom: 3rem;
    left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_12 : Css.Style
inset_12 =
    Css.batch
        [ Css.property "top" "3rem"
        , Css.property "right" "3rem"
        , Css.property "bottom" "3rem"
        , Css.property "left" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-14 {
    top: 3.5rem;
    right: 3.5rem;
    bottom: 3.5rem;
    left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_14 : Css.Style
inset_14 =
    Css.batch
        [ Css.property "top" "3.5rem"
        , Css.property "right" "3.5rem"
        , Css.property "bottom" "3.5rem"
        , Css.property "left" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-16 {
    top: 4rem;
    right: 4rem;
    bottom: 4rem;
    left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_16 : Css.Style
inset_16 =
    Css.batch
        [ Css.property "top" "4rem"
        , Css.property "right" "4rem"
        , Css.property "bottom" "4rem"
        , Css.property "left" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\.5 {
    top: 0.375rem;
    right: 0.375rem;
    bottom: 0.375rem;
    left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1_dot_5 : Css.Style
inset_1_dot_5 =
    Css.batch
        [ Css.property "top" "0.375rem"
        , Css.property "right" "0.375rem"
        , Css.property "bottom" "0.375rem"
        , Css.property "left" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\/2 {
    top: 50%;
    right: 50%;
    bottom: 50%;
    left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1over2 : Css.Style
inset_1over2 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "right" "50%"
        , Css.property "bottom" "50%"
        , Css.property "left" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\/3 {
    top: 33.333333%;
    right: 33.333333%;
    bottom: 33.333333%;
    left: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1over3 : Css.Style
inset_1over3 =
    Css.batch
        [ Css.property "top" "33.333333%"
        , Css.property "right" "33.333333%"
        , Css.property "bottom" "33.333333%"
        , Css.property "left" "33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-1\/4 {
    top: 25%;
    right: 25%;
    bottom: 25%;
    left: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_1over4 : Css.Style
inset_1over4 =
    Css.batch
        [ Css.property "top" "25%"
        , Css.property "right" "25%"
        , Css.property "bottom" "25%"
        , Css.property "left" "25%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2 {
    top: 0.5rem;
    right: 0.5rem;
    bottom: 0.5rem;
    left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2 : Css.Style
inset_2 =
    Css.batch
        [ Css.property "top" "0.5rem"
        , Css.property "right" "0.5rem"
        , Css.property "bottom" "0.5rem"
        , Css.property "left" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-20 {
    top: 5rem;
    right: 5rem;
    bottom: 5rem;
    left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_20 : Css.Style
inset_20 =
    Css.batch
        [ Css.property "top" "5rem"
        , Css.property "right" "5rem"
        , Css.property "bottom" "5rem"
        , Css.property "left" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-24 {
    top: 6rem;
    right: 6rem;
    bottom: 6rem;
    left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_24 : Css.Style
inset_24 =
    Css.batch
        [ Css.property "top" "6rem"
        , Css.property "right" "6rem"
        , Css.property "bottom" "6rem"
        , Css.property "left" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-28 {
    top: 7rem;
    right: 7rem;
    bottom: 7rem;
    left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_28 : Css.Style
inset_28 =
    Css.batch
        [ Css.property "top" "7rem"
        , Css.property "right" "7rem"
        , Css.property "bottom" "7rem"
        , Css.property "left" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2\.5 {
    top: 0.625rem;
    right: 0.625rem;
    bottom: 0.625rem;
    left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2_dot_5 : Css.Style
inset_2_dot_5 =
    Css.batch
        [ Css.property "top" "0.625rem"
        , Css.property "right" "0.625rem"
        , Css.property "bottom" "0.625rem"
        , Css.property "left" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2\/3 {
    top: 66.666667%;
    right: 66.666667%;
    bottom: 66.666667%;
    left: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2over3 : Css.Style
inset_2over3 =
    Css.batch
        [ Css.property "top" "66.666667%"
        , Css.property "right" "66.666667%"
        , Css.property "bottom" "66.666667%"
        , Css.property "left" "66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-2\/4 {
    top: 50%;
    right: 50%;
    bottom: 50%;
    left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_2over4 : Css.Style
inset_2over4 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "right" "50%"
        , Css.property "bottom" "50%"
        , Css.property "left" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-3 {
    top: 0.75rem;
    right: 0.75rem;
    bottom: 0.75rem;
    left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_3 : Css.Style
inset_3 =
    Css.batch
        [ Css.property "top" "0.75rem"
        , Css.property "right" "0.75rem"
        , Css.property "bottom" "0.75rem"
        , Css.property "left" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-32 {
    top: 8rem;
    right: 8rem;
    bottom: 8rem;
    left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_32 : Css.Style
inset_32 =
    Css.batch
        [ Css.property "top" "8rem"
        , Css.property "right" "8rem"
        , Css.property "bottom" "8rem"
        , Css.property "left" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-36 {
    top: 9rem;
    right: 9rem;
    bottom: 9rem;
    left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_36 : Css.Style
inset_36 =
    Css.batch
        [ Css.property "top" "9rem"
        , Css.property "right" "9rem"
        , Css.property "bottom" "9rem"
        , Css.property "left" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-3\.5 {
    top: 0.875rem;
    right: 0.875rem;
    bottom: 0.875rem;
    left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_3_dot_5 : Css.Style
inset_3_dot_5 =
    Css.batch
        [ Css.property "top" "0.875rem"
        , Css.property "right" "0.875rem"
        , Css.property "bottom" "0.875rem"
        , Css.property "left" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-3\/4 {
    top: 75%;
    right: 75%;
    bottom: 75%;
    left: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_3over4 : Css.Style
inset_3over4 =
    Css.batch
        [ Css.property "top" "75%"
        , Css.property "right" "75%"
        , Css.property "bottom" "75%"
        , Css.property "left" "75%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-4 {
    top: 1rem;
    right: 1rem;
    bottom: 1rem;
    left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_4 : Css.Style
inset_4 =
    Css.batch
        [ Css.property "top" "1rem"
        , Css.property "right" "1rem"
        , Css.property "bottom" "1rem"
        , Css.property "left" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-40 {
    top: 10rem;
    right: 10rem;
    bottom: 10rem;
    left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_40 : Css.Style
inset_40 =
    Css.batch
        [ Css.property "top" "10rem"
        , Css.property "right" "10rem"
        , Css.property "bottom" "10rem"
        , Css.property "left" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-44 {
    top: 11rem;
    right: 11rem;
    bottom: 11rem;
    left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_44 : Css.Style
inset_44 =
    Css.batch
        [ Css.property "top" "11rem"
        , Css.property "right" "11rem"
        , Css.property "bottom" "11rem"
        , Css.property "left" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-48 {
    top: 12rem;
    right: 12rem;
    bottom: 12rem;
    left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_48 : Css.Style
inset_48 =
    Css.batch
        [ Css.property "top" "12rem"
        , Css.property "right" "12rem"
        , Css.property "bottom" "12rem"
        , Css.property "left" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-5 {
    top: 1.25rem;
    right: 1.25rem;
    bottom: 1.25rem;
    left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_5 : Css.Style
inset_5 =
    Css.batch
        [ Css.property "top" "1.25rem"
        , Css.property "right" "1.25rem"
        , Css.property "bottom" "1.25rem"
        , Css.property "left" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-52 {
    top: 13rem;
    right: 13rem;
    bottom: 13rem;
    left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_52 : Css.Style
inset_52 =
    Css.batch
        [ Css.property "top" "13rem"
        , Css.property "right" "13rem"
        , Css.property "bottom" "13rem"
        , Css.property "left" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-56 {
    top: 14rem;
    right: 14rem;
    bottom: 14rem;
    left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_56 : Css.Style
inset_56 =
    Css.batch
        [ Css.property "top" "14rem"
        , Css.property "right" "14rem"
        , Css.property "bottom" "14rem"
        , Css.property "left" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-6 {
    top: 1.5rem;
    right: 1.5rem;
    bottom: 1.5rem;
    left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_6 : Css.Style
inset_6 =
    Css.batch
        [ Css.property "top" "1.5rem"
        , Css.property "right" "1.5rem"
        , Css.property "bottom" "1.5rem"
        , Css.property "left" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-60 {
    top: 15rem;
    right: 15rem;
    bottom: 15rem;
    left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_60 : Css.Style
inset_60 =
    Css.batch
        [ Css.property "top" "15rem"
        , Css.property "right" "15rem"
        , Css.property "bottom" "15rem"
        , Css.property "left" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-64 {
    top: 16rem;
    right: 16rem;
    bottom: 16rem;
    left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_64 : Css.Style
inset_64 =
    Css.batch
        [ Css.property "top" "16rem"
        , Css.property "right" "16rem"
        , Css.property "bottom" "16rem"
        , Css.property "left" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-7 {
    top: 1.75rem;
    right: 1.75rem;
    bottom: 1.75rem;
    left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_7 : Css.Style
inset_7 =
    Css.batch
        [ Css.property "top" "1.75rem"
        , Css.property "right" "1.75rem"
        , Css.property "bottom" "1.75rem"
        , Css.property "left" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-72 {
    top: 18rem;
    right: 18rem;
    bottom: 18rem;
    left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_72 : Css.Style
inset_72 =
    Css.batch
        [ Css.property "top" "18rem"
        , Css.property "right" "18rem"
        , Css.property "bottom" "18rem"
        , Css.property "left" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-8 {
    top: 2rem;
    right: 2rem;
    bottom: 2rem;
    left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_8 : Css.Style
inset_8 =
    Css.batch
        [ Css.property "top" "2rem"
        , Css.property "right" "2rem"
        , Css.property "bottom" "2rem"
        , Css.property "left" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-80 {
    top: 20rem;
    right: 20rem;
    bottom: 20rem;
    left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_80 : Css.Style
inset_80 =
    Css.batch
        [ Css.property "top" "20rem"
        , Css.property "right" "20rem"
        , Css.property "bottom" "20rem"
        , Css.property "left" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-9 {
    top: 2.25rem;
    right: 2.25rem;
    bottom: 2.25rem;
    left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_9 : Css.Style
inset_9 =
    Css.batch
        [ Css.property "top" "2.25rem"
        , Css.property "right" "2.25rem"
        , Css.property "bottom" "2.25rem"
        , Css.property "left" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-96 {
    top: 24rem;
    right: 24rem;
    bottom: 24rem;
    left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_96 : Css.Style
inset_96 =
    Css.batch
        [ Css.property "top" "24rem"
        , Css.property "right" "24rem"
        , Css.property "bottom" "24rem"
        , Css.property "left" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-auto {
    top: auto;
    right: auto;
    bottom: auto;
    left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_auto : Css.Style
inset_auto =
    Css.batch
        [ Css.property "top" "auto"
        , Css.property "right" "auto"
        , Css.property "bottom" "auto"
        , Css.property "left" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-full {
    top: 100%;
    right: 100%;
    bottom: 100%;
    left: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_full : Css.Style
inset_full =
    Css.batch
        [ Css.property "top" "100%"
        , Css.property "right" "100%"
        , Css.property "bottom" "100%"
        , Css.property "left" "100%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-px {
    top: 1px;
    right: 1px;
    bottom: 1px;
    left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_px : Css.Style
inset_px =
    Css.batch
        [ Css.property "top" "1px"
        , Css.property "right" "1px"
        , Css.property "bottom" "1px"
        , Css.property "left" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-0 {
    left: 0px;
    right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_0 : Css.Style
inset_x_0 =
    Css.batch
        [ Css.property "left" "0px"
        , Css.property "right" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-0\.5 {
    left: 0.125rem;
    right: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_0_dot_5 : Css.Style
inset_x_0_dot_5 =
    Css.batch
        [ Css.property "left" "0.125rem"
        , Css.property "right" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1 {
    left: 0.25rem;
    right: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1 : Css.Style
inset_x_1 =
    Css.batch
        [ Css.property "left" "0.25rem"
        , Css.property "right" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-10 {
    left: 2.5rem;
    right: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_10 : Css.Style
inset_x_10 =
    Css.batch
        [ Css.property "left" "2.5rem"
        , Css.property "right" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-11 {
    left: 2.75rem;
    right: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_11 : Css.Style
inset_x_11 =
    Css.batch
        [ Css.property "left" "2.75rem"
        , Css.property "right" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-12 {
    left: 3rem;
    right: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_12 : Css.Style
inset_x_12 =
    Css.batch
        [ Css.property "left" "3rem"
        , Css.property "right" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-14 {
    left: 3.5rem;
    right: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_14 : Css.Style
inset_x_14 =
    Css.batch
        [ Css.property "left" "3.5rem"
        , Css.property "right" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-16 {
    left: 4rem;
    right: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_16 : Css.Style
inset_x_16 =
    Css.batch
        [ Css.property "left" "4rem"
        , Css.property "right" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\.5 {
    left: 0.375rem;
    right: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1_dot_5 : Css.Style
inset_x_1_dot_5 =
    Css.batch
        [ Css.property "left" "0.375rem"
        , Css.property "right" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\/2 {
    left: 50%;
    right: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1over2 : Css.Style
inset_x_1over2 =
    Css.batch
        [ Css.property "left" "50%"
        , Css.property "right" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\/3 {
    left: 33.333333%;
    right: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1over3 : Css.Style
inset_x_1over3 =
    Css.batch
        [ Css.property "left" "33.333333%"
        , Css.property "right" "33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-1\/4 {
    left: 25%;
    right: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_1over4 : Css.Style
inset_x_1over4 =
    Css.batch
        [ Css.property "left" "25%"
        , Css.property "right" "25%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2 {
    left: 0.5rem;
    right: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2 : Css.Style
inset_x_2 =
    Css.batch
        [ Css.property "left" "0.5rem"
        , Css.property "right" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-20 {
    left: 5rem;
    right: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_20 : Css.Style
inset_x_20 =
    Css.batch
        [ Css.property "left" "5rem"
        , Css.property "right" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-24 {
    left: 6rem;
    right: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_24 : Css.Style
inset_x_24 =
    Css.batch
        [ Css.property "left" "6rem"
        , Css.property "right" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-28 {
    left: 7rem;
    right: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_28 : Css.Style
inset_x_28 =
    Css.batch
        [ Css.property "left" "7rem"
        , Css.property "right" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2\.5 {
    left: 0.625rem;
    right: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2_dot_5 : Css.Style
inset_x_2_dot_5 =
    Css.batch
        [ Css.property "left" "0.625rem"
        , Css.property "right" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2\/3 {
    left: 66.666667%;
    right: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2over3 : Css.Style
inset_x_2over3 =
    Css.batch
        [ Css.property "left" "66.666667%"
        , Css.property "right" "66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-2\/4 {
    left: 50%;
    right: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_2over4 : Css.Style
inset_x_2over4 =
    Css.batch
        [ Css.property "left" "50%"
        , Css.property "right" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-3 {
    left: 0.75rem;
    right: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_3 : Css.Style
inset_x_3 =
    Css.batch
        [ Css.property "left" "0.75rem"
        , Css.property "right" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-32 {
    left: 8rem;
    right: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_32 : Css.Style
inset_x_32 =
    Css.batch
        [ Css.property "left" "8rem"
        , Css.property "right" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-36 {
    left: 9rem;
    right: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_36 : Css.Style
inset_x_36 =
    Css.batch
        [ Css.property "left" "9rem"
        , Css.property "right" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-3\.5 {
    left: 0.875rem;
    right: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_3_dot_5 : Css.Style
inset_x_3_dot_5 =
    Css.batch
        [ Css.property "left" "0.875rem"
        , Css.property "right" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-3\/4 {
    left: 75%;
    right: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_3over4 : Css.Style
inset_x_3over4 =
    Css.batch
        [ Css.property "left" "75%"
        , Css.property "right" "75%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-4 {
    left: 1rem;
    right: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_4 : Css.Style
inset_x_4 =
    Css.batch
        [ Css.property "left" "1rem"
        , Css.property "right" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-40 {
    left: 10rem;
    right: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_40 : Css.Style
inset_x_40 =
    Css.batch
        [ Css.property "left" "10rem"
        , Css.property "right" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-44 {
    left: 11rem;
    right: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_44 : Css.Style
inset_x_44 =
    Css.batch
        [ Css.property "left" "11rem"
        , Css.property "right" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-48 {
    left: 12rem;
    right: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_48 : Css.Style
inset_x_48 =
    Css.batch
        [ Css.property "left" "12rem"
        , Css.property "right" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-5 {
    left: 1.25rem;
    right: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_5 : Css.Style
inset_x_5 =
    Css.batch
        [ Css.property "left" "1.25rem"
        , Css.property "right" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-52 {
    left: 13rem;
    right: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_52 : Css.Style
inset_x_52 =
    Css.batch
        [ Css.property "left" "13rem"
        , Css.property "right" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-56 {
    left: 14rem;
    right: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_56 : Css.Style
inset_x_56 =
    Css.batch
        [ Css.property "left" "14rem"
        , Css.property "right" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-6 {
    left: 1.5rem;
    right: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_6 : Css.Style
inset_x_6 =
    Css.batch
        [ Css.property "left" "1.5rem"
        , Css.property "right" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-60 {
    left: 15rem;
    right: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_60 : Css.Style
inset_x_60 =
    Css.batch
        [ Css.property "left" "15rem"
        , Css.property "right" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-64 {
    left: 16rem;
    right: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_64 : Css.Style
inset_x_64 =
    Css.batch
        [ Css.property "left" "16rem"
        , Css.property "right" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-7 {
    left: 1.75rem;
    right: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_7 : Css.Style
inset_x_7 =
    Css.batch
        [ Css.property "left" "1.75rem"
        , Css.property "right" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-72 {
    left: 18rem;
    right: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_72 : Css.Style
inset_x_72 =
    Css.batch
        [ Css.property "left" "18rem"
        , Css.property "right" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-8 {
    left: 2rem;
    right: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_8 : Css.Style
inset_x_8 =
    Css.batch
        [ Css.property "left" "2rem"
        , Css.property "right" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-80 {
    left: 20rem;
    right: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_80 : Css.Style
inset_x_80 =
    Css.batch
        [ Css.property "left" "20rem"
        , Css.property "right" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-9 {
    left: 2.25rem;
    right: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_9 : Css.Style
inset_x_9 =
    Css.batch
        [ Css.property "left" "2.25rem"
        , Css.property "right" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-96 {
    left: 24rem;
    right: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_96 : Css.Style
inset_x_96 =
    Css.batch
        [ Css.property "left" "24rem"
        , Css.property "right" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-auto {
    left: auto;
    right: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_auto : Css.Style
inset_x_auto =
    Css.batch
        [ Css.property "left" "auto"
        , Css.property "right" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-full {
    left: 100%;
    right: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_full : Css.Style
inset_x_full =
    Css.batch
        [ Css.property "left" "100%"
        , Css.property "right" "100%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-x-px {
    left: 1px;
    right: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_x_px : Css.Style
inset_x_px =
    Css.batch
        [ Css.property "left" "1px"
        , Css.property "right" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-0 {
    top: 0px;
    bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_0 : Css.Style
inset_y_0 =
    Css.batch
        [ Css.property "top" "0px"
        , Css.property "bottom" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-0\.5 {
    top: 0.125rem;
    bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_0_dot_5 : Css.Style
inset_y_0_dot_5 =
    Css.batch
        [ Css.property "top" "0.125rem"
        , Css.property "bottom" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1 {
    top: 0.25rem;
    bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1 : Css.Style
inset_y_1 =
    Css.batch
        [ Css.property "top" "0.25rem"
        , Css.property "bottom" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-10 {
    top: 2.5rem;
    bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_10 : Css.Style
inset_y_10 =
    Css.batch
        [ Css.property "top" "2.5rem"
        , Css.property "bottom" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-11 {
    top: 2.75rem;
    bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_11 : Css.Style
inset_y_11 =
    Css.batch
        [ Css.property "top" "2.75rem"
        , Css.property "bottom" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-12 {
    top: 3rem;
    bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_12 : Css.Style
inset_y_12 =
    Css.batch
        [ Css.property "top" "3rem"
        , Css.property "bottom" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-14 {
    top: 3.5rem;
    bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_14 : Css.Style
inset_y_14 =
    Css.batch
        [ Css.property "top" "3.5rem"
        , Css.property "bottom" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-16 {
    top: 4rem;
    bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_16 : Css.Style
inset_y_16 =
    Css.batch
        [ Css.property "top" "4rem"
        , Css.property "bottom" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\.5 {
    top: 0.375rem;
    bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1_dot_5 : Css.Style
inset_y_1_dot_5 =
    Css.batch
        [ Css.property "top" "0.375rem"
        , Css.property "bottom" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\/2 {
    top: 50%;
    bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1over2 : Css.Style
inset_y_1over2 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "bottom" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\/3 {
    top: 33.333333%;
    bottom: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1over3 : Css.Style
inset_y_1over3 =
    Css.batch
        [ Css.property "top" "33.333333%"
        , Css.property "bottom" "33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-1\/4 {
    top: 25%;
    bottom: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_1over4 : Css.Style
inset_y_1over4 =
    Css.batch
        [ Css.property "top" "25%"
        , Css.property "bottom" "25%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2 {
    top: 0.5rem;
    bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2 : Css.Style
inset_y_2 =
    Css.batch
        [ Css.property "top" "0.5rem"
        , Css.property "bottom" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-20 {
    top: 5rem;
    bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_20 : Css.Style
inset_y_20 =
    Css.batch
        [ Css.property "top" "5rem"
        , Css.property "bottom" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-24 {
    top: 6rem;
    bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_24 : Css.Style
inset_y_24 =
    Css.batch
        [ Css.property "top" "6rem"
        , Css.property "bottom" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-28 {
    top: 7rem;
    bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_28 : Css.Style
inset_y_28 =
    Css.batch
        [ Css.property "top" "7rem"
        , Css.property "bottom" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2\.5 {
    top: 0.625rem;
    bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2_dot_5 : Css.Style
inset_y_2_dot_5 =
    Css.batch
        [ Css.property "top" "0.625rem"
        , Css.property "bottom" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2\/3 {
    top: 66.666667%;
    bottom: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2over3 : Css.Style
inset_y_2over3 =
    Css.batch
        [ Css.property "top" "66.666667%"
        , Css.property "bottom" "66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-2\/4 {
    top: 50%;
    bottom: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_2over4 : Css.Style
inset_y_2over4 =
    Css.batch
        [ Css.property "top" "50%"
        , Css.property "bottom" "50%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-3 {
    top: 0.75rem;
    bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_3 : Css.Style
inset_y_3 =
    Css.batch
        [ Css.property "top" "0.75rem"
        , Css.property "bottom" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-32 {
    top: 8rem;
    bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_32 : Css.Style
inset_y_32 =
    Css.batch
        [ Css.property "top" "8rem"
        , Css.property "bottom" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-36 {
    top: 9rem;
    bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_36 : Css.Style
inset_y_36 =
    Css.batch
        [ Css.property "top" "9rem"
        , Css.property "bottom" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-3\.5 {
    top: 0.875rem;
    bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_3_dot_5 : Css.Style
inset_y_3_dot_5 =
    Css.batch
        [ Css.property "top" "0.875rem"
        , Css.property "bottom" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-3\/4 {
    top: 75%;
    bottom: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_3over4 : Css.Style
inset_y_3over4 =
    Css.batch
        [ Css.property "top" "75%"
        , Css.property "bottom" "75%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-4 {
    top: 1rem;
    bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_4 : Css.Style
inset_y_4 =
    Css.batch
        [ Css.property "top" "1rem"
        , Css.property "bottom" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-40 {
    top: 10rem;
    bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_40 : Css.Style
inset_y_40 =
    Css.batch
        [ Css.property "top" "10rem"
        , Css.property "bottom" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-44 {
    top: 11rem;
    bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_44 : Css.Style
inset_y_44 =
    Css.batch
        [ Css.property "top" "11rem"
        , Css.property "bottom" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-48 {
    top: 12rem;
    bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_48 : Css.Style
inset_y_48 =
    Css.batch
        [ Css.property "top" "12rem"
        , Css.property "bottom" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-5 {
    top: 1.25rem;
    bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_5 : Css.Style
inset_y_5 =
    Css.batch
        [ Css.property "top" "1.25rem"
        , Css.property "bottom" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-52 {
    top: 13rem;
    bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_52 : Css.Style
inset_y_52 =
    Css.batch
        [ Css.property "top" "13rem"
        , Css.property "bottom" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-56 {
    top: 14rem;
    bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_56 : Css.Style
inset_y_56 =
    Css.batch
        [ Css.property "top" "14rem"
        , Css.property "bottom" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-6 {
    top: 1.5rem;
    bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_6 : Css.Style
inset_y_6 =
    Css.batch
        [ Css.property "top" "1.5rem"
        , Css.property "bottom" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-60 {
    top: 15rem;
    bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_60 : Css.Style
inset_y_60 =
    Css.batch
        [ Css.property "top" "15rem"
        , Css.property "bottom" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-64 {
    top: 16rem;
    bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_64 : Css.Style
inset_y_64 =
    Css.batch
        [ Css.property "top" "16rem"
        , Css.property "bottom" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-7 {
    top: 1.75rem;
    bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_7 : Css.Style
inset_y_7 =
    Css.batch
        [ Css.property "top" "1.75rem"
        , Css.property "bottom" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-72 {
    top: 18rem;
    bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_72 : Css.Style
inset_y_72 =
    Css.batch
        [ Css.property "top" "18rem"
        , Css.property "bottom" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-8 {
    top: 2rem;
    bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_8 : Css.Style
inset_y_8 =
    Css.batch
        [ Css.property "top" "2rem"
        , Css.property "bottom" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-80 {
    top: 20rem;
    bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_80 : Css.Style
inset_y_80 =
    Css.batch
        [ Css.property "top" "20rem"
        , Css.property "bottom" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-9 {
    top: 2.25rem;
    bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_9 : Css.Style
inset_y_9 =
    Css.batch
        [ Css.property "top" "2.25rem"
        , Css.property "bottom" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-96 {
    top: 24rem;
    bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_96 : Css.Style
inset_y_96 =
    Css.batch
        [ Css.property "top" "24rem"
        , Css.property "bottom" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-auto {
    top: auto;
    bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_auto : Css.Style
inset_y_auto =
    Css.batch
        [ Css.property "top" "auto"
        , Css.property "bottom" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-full {
    top: 100%;
    bottom: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_full : Css.Style
inset_y_full =
    Css.batch
        [ Css.property "top" "100%"
        , Css.property "bottom" "100%"
        ]


{-| This class has the effect of following css declaration:

```css
.inset-y-px {
    top: 1px;
    bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
inset_y_px : Css.Style
inset_y_px =
    Css.batch
        [ Css.property "top" "1px"
        , Css.property "bottom" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.invert {
    --tw-invert: invert(100%);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
invert : Css.Style
invert =
    Css.batch
        [ Css.property "--tw-invert" "invert(100%)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.invert-0 {
    --tw-invert: invert(0);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
invert_0 : Css.Style
invert_0 =
    Css.batch
        [ Css.property "--tw-invert" "invert(0)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.invisible {
    visibility: hidden
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
invisible : Css.Style
invisible =
    Css.property "visibility" "hidden"


{-| This class has the effect of following css declaration:

```css
.isolate {
    isolation: isolate
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
isolate : Css.Style
isolate =
    Css.property "isolation" "isolate"


{-| This class has the effect of following css declaration:

```css
.isolation-auto {
    isolation: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
isolation_auto : Css.Style
isolation_auto =
    Css.property "isolation" "auto"


{-| This class has the effect of following css declaration:

```css
.italic {
    font-style: italic
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
italic : Css.Style
italic =
    Css.property "font-style" "italic"


{-| This class has the effect of following css declaration:

```css
.items-baseline {
    align-items: baseline
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_baseline : Css.Style
items_baseline =
    Css.property "align-items" "baseline"


{-| This class has the effect of following css declaration:

```css
.items-center {
    align-items: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_center : Css.Style
items_center =
    Css.property "align-items" "center"


{-| This class has the effect of following css declaration:

```css
.items-end {
    align-items: flex-end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_end : Css.Style
items_end =
    Css.property "align-items" "flex-end"


{-| This class has the effect of following css declaration:

```css
.items-start {
    align-items: flex-start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_start : Css.Style
items_start =
    Css.property "align-items" "flex-start"


{-| This class has the effect of following css declaration:

```css
.items-stretch {
    align-items: stretch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
items_stretch : Css.Style
items_stretch =
    Css.property "align-items" "stretch"


{-| This class has the effect of following css declaration:

```css
.justify-around {
    justify-content: space-around
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_around : Css.Style
justify_around =
    Css.property "justify-content" "space-around"


{-| This class has the effect of following css declaration:

```css
.justify-between {
    justify-content: space-between
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_between : Css.Style
justify_between =
    Css.property "justify-content" "space-between"


{-| This class has the effect of following css declaration:

```css
.justify-center {
    justify-content: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_center : Css.Style
justify_center =
    Css.property "justify-content" "center"


{-| This class has the effect of following css declaration:

```css
.justify-end {
    justify-content: flex-end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_end : Css.Style
justify_end =
    Css.property "justify-content" "flex-end"


{-| This class has the effect of following css declaration:

```css
.justify-evenly {
    justify-content: space-evenly
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_evenly : Css.Style
justify_evenly =
    Css.property "justify-content" "space-evenly"


{-| This class has the effect of following css declaration:

```css
.justify-items-center {
    justify-items: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_center : Css.Style
justify_items_center =
    Css.property "justify-items" "center"


{-| This class has the effect of following css declaration:

```css
.justify-items-end {
    justify-items: end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_end : Css.Style
justify_items_end =
    Css.property "justify-items" "end"


{-| This class has the effect of following css declaration:

```css
.justify-items-start {
    justify-items: start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_start : Css.Style
justify_items_start =
    Css.property "justify-items" "start"


{-| This class has the effect of following css declaration:

```css
.justify-items-stretch {
    justify-items: stretch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_items_stretch : Css.Style
justify_items_stretch =
    Css.property "justify-items" "stretch"


{-| This class has the effect of following css declaration:

```css
.justify-self-auto {
    justify-self: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_auto : Css.Style
justify_self_auto =
    Css.property "justify-self" "auto"


{-| This class has the effect of following css declaration:

```css
.justify-self-center {
    justify-self: center
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_center : Css.Style
justify_self_center =
    Css.property "justify-self" "center"


{-| This class has the effect of following css declaration:

```css
.justify-self-end {
    justify-self: end
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_end : Css.Style
justify_self_end =
    Css.property "justify-self" "end"


{-| This class has the effect of following css declaration:

```css
.justify-self-start {
    justify-self: start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_start : Css.Style
justify_self_start =
    Css.property "justify-self" "start"


{-| This class has the effect of following css declaration:

```css
.justify-self-stretch {
    justify-self: stretch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_self_stretch : Css.Style
justify_self_stretch =
    Css.property "justify-self" "stretch"


{-| This class has the effect of following css declaration:

```css
.justify-start {
    justify-content: flex-start
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
justify_start : Css.Style
justify_start =
    Css.property "justify-content" "flex-start"


{-| This class has the effect of following css declaration:

```css
.leading-10 {
    line-height: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_10 : Css.Style
leading_10 =
    Css.property "line-height" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.leading-3 {
    line-height: .75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_3 : Css.Style
leading_3 =
    Css.property "line-height" ".75rem"


{-| This class has the effect of following css declaration:

```css
.leading-4 {
    line-height: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_4 : Css.Style
leading_4 =
    Css.property "line-height" "1rem"


{-| This class has the effect of following css declaration:

```css
.leading-5 {
    line-height: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_5 : Css.Style
leading_5 =
    Css.property "line-height" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.leading-6 {
    line-height: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_6 : Css.Style
leading_6 =
    Css.property "line-height" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.leading-7 {
    line-height: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_7 : Css.Style
leading_7 =
    Css.property "line-height" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.leading-8 {
    line-height: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_8 : Css.Style
leading_8 =
    Css.property "line-height" "2rem"


{-| This class has the effect of following css declaration:

```css
.leading-9 {
    line-height: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_9 : Css.Style
leading_9 =
    Css.property "line-height" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.leading-loose {
    line-height: 2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_loose : Css.Style
leading_loose =
    Css.property "line-height" "2"


{-| This class has the effect of following css declaration:

```css
.leading-none {
    line-height: 1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_none : Css.Style
leading_none =
    Css.property "line-height" "1"


{-| This class has the effect of following css declaration:

```css
.leading-normal {
    line-height: 1.5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_normal : Css.Style
leading_normal =
    Css.property "line-height" "1.5"


{-| This class has the effect of following css declaration:

```css
.leading-relaxed {
    line-height: 1.625
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_relaxed : Css.Style
leading_relaxed =
    Css.property "line-height" "1.625"


{-| This class has the effect of following css declaration:

```css
.leading-snug {
    line-height: 1.375
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_snug : Css.Style
leading_snug =
    Css.property "line-height" "1.375"


{-| This class has the effect of following css declaration:

```css
.leading-tight {
    line-height: 1.25
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
leading_tight : Css.Style
leading_tight =
    Css.property "line-height" "1.25"


{-| This class has the effect of following css declaration:

```css
.left-0 {
    left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_0 : Css.Style
left_0 =
    Css.property "left" "0px"


{-| This class has the effect of following css declaration:

```css
.left-0\.5 {
    left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_0_dot_5 : Css.Style
left_0_dot_5 =
    Css.property "left" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.left-1 {
    left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1 : Css.Style
left_1 =
    Css.property "left" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.left-10 {
    left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_10 : Css.Style
left_10 =
    Css.property "left" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.left-11 {
    left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_11 : Css.Style
left_11 =
    Css.property "left" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.left-12 {
    left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_12 : Css.Style
left_12 =
    Css.property "left" "3rem"


{-| This class has the effect of following css declaration:

```css
.left-14 {
    left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_14 : Css.Style
left_14 =
    Css.property "left" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.left-16 {
    left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_16 : Css.Style
left_16 =
    Css.property "left" "4rem"


{-| This class has the effect of following css declaration:

```css
.left-1\.5 {
    left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1_dot_5 : Css.Style
left_1_dot_5 =
    Css.property "left" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.left-1\/2 {
    left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1over2 : Css.Style
left_1over2 =
    Css.property "left" "50%"


{-| This class has the effect of following css declaration:

```css
.left-1\/3 {
    left: 33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1over3 : Css.Style
left_1over3 =
    Css.property "left" "33.333333%"


{-| This class has the effect of following css declaration:

```css
.left-1\/4 {
    left: 25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_1over4 : Css.Style
left_1over4 =
    Css.property "left" "25%"


{-| This class has the effect of following css declaration:

```css
.left-2 {
    left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2 : Css.Style
left_2 =
    Css.property "left" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.left-20 {
    left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_20 : Css.Style
left_20 =
    Css.property "left" "5rem"


{-| This class has the effect of following css declaration:

```css
.left-24 {
    left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_24 : Css.Style
left_24 =
    Css.property "left" "6rem"


{-| This class has the effect of following css declaration:

```css
.left-28 {
    left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_28 : Css.Style
left_28 =
    Css.property "left" "7rem"


{-| This class has the effect of following css declaration:

```css
.left-2\.5 {
    left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2_dot_5 : Css.Style
left_2_dot_5 =
    Css.property "left" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.left-2\/3 {
    left: 66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2over3 : Css.Style
left_2over3 =
    Css.property "left" "66.666667%"


{-| This class has the effect of following css declaration:

```css
.left-2\/4 {
    left: 50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_2over4 : Css.Style
left_2over4 =
    Css.property "left" "50%"


{-| This class has the effect of following css declaration:

```css
.left-3 {
    left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_3 : Css.Style
left_3 =
    Css.property "left" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.left-32 {
    left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_32 : Css.Style
left_32 =
    Css.property "left" "8rem"


{-| This class has the effect of following css declaration:

```css
.left-36 {
    left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_36 : Css.Style
left_36 =
    Css.property "left" "9rem"


{-| This class has the effect of following css declaration:

```css
.left-3\.5 {
    left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_3_dot_5 : Css.Style
left_3_dot_5 =
    Css.property "left" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.left-3\/4 {
    left: 75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_3over4 : Css.Style
left_3over4 =
    Css.property "left" "75%"


{-| This class has the effect of following css declaration:

```css
.left-4 {
    left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_4 : Css.Style
left_4 =
    Css.property "left" "1rem"


{-| This class has the effect of following css declaration:

```css
.left-40 {
    left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_40 : Css.Style
left_40 =
    Css.property "left" "10rem"


{-| This class has the effect of following css declaration:

```css
.left-44 {
    left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_44 : Css.Style
left_44 =
    Css.property "left" "11rem"


{-| This class has the effect of following css declaration:

```css
.left-48 {
    left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_48 : Css.Style
left_48 =
    Css.property "left" "12rem"


{-| This class has the effect of following css declaration:

```css
.left-5 {
    left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_5 : Css.Style
left_5 =
    Css.property "left" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.left-52 {
    left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_52 : Css.Style
left_52 =
    Css.property "left" "13rem"


{-| This class has the effect of following css declaration:

```css
.left-56 {
    left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_56 : Css.Style
left_56 =
    Css.property "left" "14rem"


{-| This class has the effect of following css declaration:

```css
.left-6 {
    left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_6 : Css.Style
left_6 =
    Css.property "left" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.left-60 {
    left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_60 : Css.Style
left_60 =
    Css.property "left" "15rem"


{-| This class has the effect of following css declaration:

```css
.left-64 {
    left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_64 : Css.Style
left_64 =
    Css.property "left" "16rem"


{-| This class has the effect of following css declaration:

```css
.left-7 {
    left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_7 : Css.Style
left_7 =
    Css.property "left" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.left-72 {
    left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_72 : Css.Style
left_72 =
    Css.property "left" "18rem"


{-| This class has the effect of following css declaration:

```css
.left-8 {
    left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_8 : Css.Style
left_8 =
    Css.property "left" "2rem"


{-| This class has the effect of following css declaration:

```css
.left-80 {
    left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_80 : Css.Style
left_80 =
    Css.property "left" "20rem"


{-| This class has the effect of following css declaration:

```css
.left-9 {
    left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_9 : Css.Style
left_9 =
    Css.property "left" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.left-96 {
    left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_96 : Css.Style
left_96 =
    Css.property "left" "24rem"


{-| This class has the effect of following css declaration:

```css
.left-auto {
    left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_auto : Css.Style
left_auto =
    Css.property "left" "auto"


{-| This class has the effect of following css declaration:

```css
.left-full {
    left: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_full : Css.Style
left_full =
    Css.property "left" "100%"


{-| This class has the effect of following css declaration:

```css
.left-px {
    left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
left_px : Css.Style
left_px =
    Css.property "left" "1px"


{-| This class has the effect of following css declaration:

```css
.line-through {
    text-decoration-line: line-through
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
line_through : Css.Style
line_through =
    Css.property "text-decoration-line" "line-through"


{-| This class has the effect of following css declaration:

```css
.lining-nums {
    --tw-numeric-figure: lining-nums;
    font-variant-numeric: var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
lining_nums : Css.Style
lining_nums =
    Css.batch
        [ Css.property "--tw-numeric-figure" "lining-nums"
        , Css.property "font-variant-numeric" "var(--tw-ordinal) var(--tw-slashed-zero) var(--tw-numeric-figure) var(--tw-numeric-spacing) var(--tw-numeric-fraction)"
        ]


{-| This class has the effect of following css declaration:

```css
.list-decimal {
    list-style-type: decimal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_decimal : Css.Style
list_decimal =
    Css.property "list-style-type" "decimal"


{-| This class has the effect of following css declaration:

```css
.list-disc {
    list-style-type: disc
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_disc : Css.Style
list_disc =
    Css.property "list-style-type" "disc"


{-| This class has the effect of following css declaration:

```css
.list-inside {
    list-style-position: inside
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_inside : Css.Style
list_inside =
    Css.property "list-style-position" "inside"


{-| This class has the effect of following css declaration:

```css
.list-item {
    display: list-item
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_item : Css.Style
list_item =
    Css.property "display" "list-item"


{-| This class has the effect of following css declaration:

```css
.list-none {
    list-style-type: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_none : Css.Style
list_none =
    Css.property "list-style-type" "none"


{-| This class has the effect of following css declaration:

```css
.list-outside {
    list-style-position: outside
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
list_outside : Css.Style
list_outside =
    Css.property "list-style-position" "outside"


{-| This class has the effect of following css declaration:

```css
.lowercase {
    text-transform: lowercase
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
lowercase : Css.Style
lowercase =
    Css.property "text-transform" "lowercase"


{-| This class has the effect of following css declaration:

```css
.m-0 {
    margin: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_0 : Css.Style
m_0 =
    Css.property "margin" "0px"


{-| This class has the effect of following css declaration:

```css
.m-0\.5 {
    margin: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_0_dot_5 : Css.Style
m_0_dot_5 =
    Css.property "margin" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.m-1 {
    margin: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_1 : Css.Style
m_1 =
    Css.property "margin" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.m-10 {
    margin: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_10 : Css.Style
m_10 =
    Css.property "margin" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.m-11 {
    margin: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_11 : Css.Style
m_11 =
    Css.property "margin" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.m-12 {
    margin: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_12 : Css.Style
m_12 =
    Css.property "margin" "3rem"


{-| This class has the effect of following css declaration:

```css
.m-14 {
    margin: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_14 : Css.Style
m_14 =
    Css.property "margin" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.m-16 {
    margin: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_16 : Css.Style
m_16 =
    Css.property "margin" "4rem"


{-| This class has the effect of following css declaration:

```css
.m-1\.5 {
    margin: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_1_dot_5 : Css.Style
m_1_dot_5 =
    Css.property "margin" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.m-2 {
    margin: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_2 : Css.Style
m_2 =
    Css.property "margin" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.m-20 {
    margin: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_20 : Css.Style
m_20 =
    Css.property "margin" "5rem"


{-| This class has the effect of following css declaration:

```css
.m-24 {
    margin: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_24 : Css.Style
m_24 =
    Css.property "margin" "6rem"


{-| This class has the effect of following css declaration:

```css
.m-28 {
    margin: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_28 : Css.Style
m_28 =
    Css.property "margin" "7rem"


{-| This class has the effect of following css declaration:

```css
.m-2\.5 {
    margin: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_2_dot_5 : Css.Style
m_2_dot_5 =
    Css.property "margin" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.m-3 {
    margin: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_3 : Css.Style
m_3 =
    Css.property "margin" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.m-32 {
    margin: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_32 : Css.Style
m_32 =
    Css.property "margin" "8rem"


{-| This class has the effect of following css declaration:

```css
.m-36 {
    margin: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_36 : Css.Style
m_36 =
    Css.property "margin" "9rem"


{-| This class has the effect of following css declaration:

```css
.m-3\.5 {
    margin: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_3_dot_5 : Css.Style
m_3_dot_5 =
    Css.property "margin" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.m-4 {
    margin: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_4 : Css.Style
m_4 =
    Css.property "margin" "1rem"


{-| This class has the effect of following css declaration:

```css
.m-40 {
    margin: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_40 : Css.Style
m_40 =
    Css.property "margin" "10rem"


{-| This class has the effect of following css declaration:

```css
.m-44 {
    margin: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_44 : Css.Style
m_44 =
    Css.property "margin" "11rem"


{-| This class has the effect of following css declaration:

```css
.m-48 {
    margin: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_48 : Css.Style
m_48 =
    Css.property "margin" "12rem"


{-| This class has the effect of following css declaration:

```css
.m-5 {
    margin: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_5 : Css.Style
m_5 =
    Css.property "margin" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.m-52 {
    margin: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_52 : Css.Style
m_52 =
    Css.property "margin" "13rem"


{-| This class has the effect of following css declaration:

```css
.m-56 {
    margin: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_56 : Css.Style
m_56 =
    Css.property "margin" "14rem"


{-| This class has the effect of following css declaration:

```css
.m-6 {
    margin: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_6 : Css.Style
m_6 =
    Css.property "margin" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.m-60 {
    margin: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_60 : Css.Style
m_60 =
    Css.property "margin" "15rem"


{-| This class has the effect of following css declaration:

```css
.m-64 {
    margin: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_64 : Css.Style
m_64 =
    Css.property "margin" "16rem"


{-| This class has the effect of following css declaration:

```css
.m-7 {
    margin: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_7 : Css.Style
m_7 =
    Css.property "margin" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.m-72 {
    margin: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_72 : Css.Style
m_72 =
    Css.property "margin" "18rem"


{-| This class has the effect of following css declaration:

```css
.m-8 {
    margin: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_8 : Css.Style
m_8 =
    Css.property "margin" "2rem"


{-| This class has the effect of following css declaration:

```css
.m-80 {
    margin: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_80 : Css.Style
m_80 =
    Css.property "margin" "20rem"


{-| This class has the effect of following css declaration:

```css
.m-9 {
    margin: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_9 : Css.Style
m_9 =
    Css.property "margin" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.m-96 {
    margin: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_96 : Css.Style
m_96 =
    Css.property "margin" "24rem"


{-| This class has the effect of following css declaration:

```css
.m-auto {
    margin: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_auto : Css.Style
m_auto =
    Css.property "margin" "auto"


{-| This class has the effect of following css declaration:

```css
.m-px {
    margin: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
m_px : Css.Style
m_px =
    Css.property "margin" "1px"


{-| This class has the effect of following css declaration:

```css
.max-h-0 {
    max-height: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_0 : Css.Style
max_h_0 =
    Css.property "max-height" "0px"


{-| This class has the effect of following css declaration:

```css
.max-h-0\.5 {
    max-height: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_0_dot_5 : Css.Style
max_h_0_dot_5 =
    Css.property "max-height" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.max-h-1 {
    max-height: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_1 : Css.Style
max_h_1 =
    Css.property "max-height" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.max-h-10 {
    max-height: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_10 : Css.Style
max_h_10 =
    Css.property "max-height" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-11 {
    max-height: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_11 : Css.Style
max_h_11 =
    Css.property "max-height" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.max-h-12 {
    max-height: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_12 : Css.Style
max_h_12 =
    Css.property "max-height" "3rem"


{-| This class has the effect of following css declaration:

```css
.max-h-14 {
    max-height: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_14 : Css.Style
max_h_14 =
    Css.property "max-height" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-16 {
    max-height: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_16 : Css.Style
max_h_16 =
    Css.property "max-height" "4rem"


{-| This class has the effect of following css declaration:

```css
.max-h-1\.5 {
    max-height: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_1_dot_5 : Css.Style
max_h_1_dot_5 =
    Css.property "max-height" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.max-h-2 {
    max-height: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_2 : Css.Style
max_h_2 =
    Css.property "max-height" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-20 {
    max-height: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_20 : Css.Style
max_h_20 =
    Css.property "max-height" "5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-24 {
    max-height: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_24 : Css.Style
max_h_24 =
    Css.property "max-height" "6rem"


{-| This class has the effect of following css declaration:

```css
.max-h-28 {
    max-height: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_28 : Css.Style
max_h_28 =
    Css.property "max-height" "7rem"


{-| This class has the effect of following css declaration:

```css
.max-h-2\.5 {
    max-height: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_2_dot_5 : Css.Style
max_h_2_dot_5 =
    Css.property "max-height" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.max-h-3 {
    max-height: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_3 : Css.Style
max_h_3 =
    Css.property "max-height" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.max-h-32 {
    max-height: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_32 : Css.Style
max_h_32 =
    Css.property "max-height" "8rem"


{-| This class has the effect of following css declaration:

```css
.max-h-36 {
    max-height: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_36 : Css.Style
max_h_36 =
    Css.property "max-height" "9rem"


{-| This class has the effect of following css declaration:

```css
.max-h-3\.5 {
    max-height: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_3_dot_5 : Css.Style
max_h_3_dot_5 =
    Css.property "max-height" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.max-h-4 {
    max-height: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_4 : Css.Style
max_h_4 =
    Css.property "max-height" "1rem"


{-| This class has the effect of following css declaration:

```css
.max-h-40 {
    max-height: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_40 : Css.Style
max_h_40 =
    Css.property "max-height" "10rem"


{-| This class has the effect of following css declaration:

```css
.max-h-44 {
    max-height: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_44 : Css.Style
max_h_44 =
    Css.property "max-height" "11rem"


{-| This class has the effect of following css declaration:

```css
.max-h-48 {
    max-height: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_48 : Css.Style
max_h_48 =
    Css.property "max-height" "12rem"


{-| This class has the effect of following css declaration:

```css
.max-h-5 {
    max-height: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_5 : Css.Style
max_h_5 =
    Css.property "max-height" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.max-h-52 {
    max-height: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_52 : Css.Style
max_h_52 =
    Css.property "max-height" "13rem"


{-| This class has the effect of following css declaration:

```css
.max-h-56 {
    max-height: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_56 : Css.Style
max_h_56 =
    Css.property "max-height" "14rem"


{-| This class has the effect of following css declaration:

```css
.max-h-6 {
    max-height: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_6 : Css.Style
max_h_6 =
    Css.property "max-height" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.max-h-60 {
    max-height: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_60 : Css.Style
max_h_60 =
    Css.property "max-height" "15rem"


{-| This class has the effect of following css declaration:

```css
.max-h-64 {
    max-height: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_64 : Css.Style
max_h_64 =
    Css.property "max-height" "16rem"


{-| This class has the effect of following css declaration:

```css
.max-h-7 {
    max-height: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_7 : Css.Style
max_h_7 =
    Css.property "max-height" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.max-h-72 {
    max-height: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_72 : Css.Style
max_h_72 =
    Css.property "max-height" "18rem"


{-| This class has the effect of following css declaration:

```css
.max-h-8 {
    max-height: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_8 : Css.Style
max_h_8 =
    Css.property "max-height" "2rem"


{-| This class has the effect of following css declaration:

```css
.max-h-80 {
    max-height: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_80 : Css.Style
max_h_80 =
    Css.property "max-height" "20rem"


{-| This class has the effect of following css declaration:

```css
.max-h-9 {
    max-height: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_9 : Css.Style
max_h_9 =
    Css.property "max-height" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.max-h-96 {
    max-height: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_96 : Css.Style
max_h_96 =
    Css.property "max-height" "24rem"


{-| This class has the effect of following css declaration:

```css
.max-h-fit {
    max-height: fit-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_fit : Css.Style
max_h_fit =
    Css.property "max-height" "fit-content"


{-| This class has the effect of following css declaration:

```css
.max-h-full {
    max-height: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_full : Css.Style
max_h_full =
    Css.property "max-height" "100%"


{-| This class has the effect of following css declaration:

```css
.max-h-max {
    max-height: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_max : Css.Style
max_h_max =
    Css.property "max-height" "max-content"


{-| This class has the effect of following css declaration:

```css
.max-h-min {
    max-height: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_min : Css.Style
max_h_min =
    Css.property "max-height" "min-content"


{-| This class has the effect of following css declaration:

```css
.max-h-px {
    max-height: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_px : Css.Style
max_h_px =
    Css.property "max-height" "1px"


{-| This class has the effect of following css declaration:

```css
.max-h-screen {
    max-height: 100vh
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_h_screen : Css.Style
max_h_screen =
    Css.property "max-height" "100vh"


{-| This class has the effect of following css declaration:

```css
.max-w-0 {
    max-width: 0rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_0 : Css.Style
max_w_0 =
    Css.property "max-width" "0rem"


{-| This class has the effect of following css declaration:

```css
.max-w-2xl {
    max-width: 42rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_2xl : Css.Style
max_w_2xl =
    Css.property "max-width" "42rem"


{-| This class has the effect of following css declaration:

```css
.max-w-3xl {
    max-width: 48rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_3xl : Css.Style
max_w_3xl =
    Css.property "max-width" "48rem"


{-| This class has the effect of following css declaration:

```css
.max-w-4xl {
    max-width: 56rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_4xl : Css.Style
max_w_4xl =
    Css.property "max-width" "56rem"


{-| This class has the effect of following css declaration:

```css
.max-w-5xl {
    max-width: 64rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_5xl : Css.Style
max_w_5xl =
    Css.property "max-width" "64rem"


{-| This class has the effect of following css declaration:

```css
.max-w-6xl {
    max-width: 72rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_6xl : Css.Style
max_w_6xl =
    Css.property "max-width" "72rem"


{-| This class has the effect of following css declaration:

```css
.max-w-7xl {
    max-width: 80rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_7xl : Css.Style
max_w_7xl =
    Css.property "max-width" "80rem"


{-| This class has the effect of following css declaration:

```css
.max-w-fit {
    max-width: fit-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_fit : Css.Style
max_w_fit =
    Css.property "max-width" "fit-content"


{-| This class has the effect of following css declaration:

```css
.max-w-full {
    max-width: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_full : Css.Style
max_w_full =
    Css.property "max-width" "100%"


{-| This class has the effect of following css declaration:

```css
.max-w-lg {
    max-width: 32rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_lg : Css.Style
max_w_lg =
    Css.property "max-width" "32rem"


{-| This class has the effect of following css declaration:

```css
.max-w-max {
    max-width: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_max : Css.Style
max_w_max =
    Css.property "max-width" "max-content"


{-| This class has the effect of following css declaration:

```css
.max-w-md {
    max-width: 28rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_md : Css.Style
max_w_md =
    Css.property "max-width" "28rem"


{-| This class has the effect of following css declaration:

```css
.max-w-min {
    max-width: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_min : Css.Style
max_w_min =
    Css.property "max-width" "min-content"


{-| This class has the effect of following css declaration:

```css
.max-w-none {
    max-width: none
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_none : Css.Style
max_w_none =
    Css.property "max-width" "none"


{-| This class has the effect of following css declaration:

```css
.max-w-prose {
    max-width: 65ch
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_prose : Css.Style
max_w_prose =
    Css.property "max-width" "65ch"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-2xl {
    max-width: 1536px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_2xl : Css.Style
max_w_screen_2xl =
    Css.property "max-width" "1536px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-lg {
    max-width: 1024px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_lg : Css.Style
max_w_screen_lg =
    Css.property "max-width" "1024px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-md {
    max-width: 768px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_md : Css.Style
max_w_screen_md =
    Css.property "max-width" "768px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-sm {
    max-width: 640px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_sm : Css.Style
max_w_screen_sm =
    Css.property "max-width" "640px"


{-| This class has the effect of following css declaration:

```css
.max-w-screen-xl {
    max-width: 1280px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_screen_xl : Css.Style
max_w_screen_xl =
    Css.property "max-width" "1280px"


{-| This class has the effect of following css declaration:

```css
.max-w-sm {
    max-width: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_sm : Css.Style
max_w_sm =
    Css.property "max-width" "24rem"


{-| This class has the effect of following css declaration:

```css
.max-w-xl {
    max-width: 36rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_xl : Css.Style
max_w_xl =
    Css.property "max-width" "36rem"


{-| This class has the effect of following css declaration:

```css
.max-w-xs {
    max-width: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
max_w_xs : Css.Style
max_w_xs =
    Css.property "max-width" "20rem"


{-| This class has the effect of following css declaration:

```css
.mb-0 {
    margin-bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_0 : Css.Style
mb_0 =
    Css.property "margin-bottom" "0px"


{-| This class has the effect of following css declaration:

```css
.mb-0\.5 {
    margin-bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_0_dot_5 : Css.Style
mb_0_dot_5 =
    Css.property "margin-bottom" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.mb-1 {
    margin-bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_1 : Css.Style
mb_1 =
    Css.property "margin-bottom" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.mb-10 {
    margin-bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_10 : Css.Style
mb_10 =
    Css.property "margin-bottom" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-11 {
    margin-bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_11 : Css.Style
mb_11 =
    Css.property "margin-bottom" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.mb-12 {
    margin-bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_12 : Css.Style
mb_12 =
    Css.property "margin-bottom" "3rem"


{-| This class has the effect of following css declaration:

```css
.mb-14 {
    margin-bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_14 : Css.Style
mb_14 =
    Css.property "margin-bottom" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-16 {
    margin-bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_16 : Css.Style
mb_16 =
    Css.property "margin-bottom" "4rem"


{-| This class has the effect of following css declaration:

```css
.mb-1\.5 {
    margin-bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_1_dot_5 : Css.Style
mb_1_dot_5 =
    Css.property "margin-bottom" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.mb-2 {
    margin-bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_2 : Css.Style
mb_2 =
    Css.property "margin-bottom" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-20 {
    margin-bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_20 : Css.Style
mb_20 =
    Css.property "margin-bottom" "5rem"


{-| This class has the effect of following css declaration:

```css
.mb-24 {
    margin-bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_24 : Css.Style
mb_24 =
    Css.property "margin-bottom" "6rem"


{-| This class has the effect of following css declaration:

```css
.mb-28 {
    margin-bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_28 : Css.Style
mb_28 =
    Css.property "margin-bottom" "7rem"


{-| This class has the effect of following css declaration:

```css
.mb-2\.5 {
    margin-bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_2_dot_5 : Css.Style
mb_2_dot_5 =
    Css.property "margin-bottom" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.mb-3 {
    margin-bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_3 : Css.Style
mb_3 =
    Css.property "margin-bottom" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.mb-32 {
    margin-bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_32 : Css.Style
mb_32 =
    Css.property "margin-bottom" "8rem"


{-| This class has the effect of following css declaration:

```css
.mb-36 {
    margin-bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_36 : Css.Style
mb_36 =
    Css.property "margin-bottom" "9rem"


{-| This class has the effect of following css declaration:

```css
.mb-3\.5 {
    margin-bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_3_dot_5 : Css.Style
mb_3_dot_5 =
    Css.property "margin-bottom" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.mb-4 {
    margin-bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_4 : Css.Style
mb_4 =
    Css.property "margin-bottom" "1rem"


{-| This class has the effect of following css declaration:

```css
.mb-40 {
    margin-bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_40 : Css.Style
mb_40 =
    Css.property "margin-bottom" "10rem"


{-| This class has the effect of following css declaration:

```css
.mb-44 {
    margin-bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_44 : Css.Style
mb_44 =
    Css.property "margin-bottom" "11rem"


{-| This class has the effect of following css declaration:

```css
.mb-48 {
    margin-bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_48 : Css.Style
mb_48 =
    Css.property "margin-bottom" "12rem"


{-| This class has the effect of following css declaration:

```css
.mb-5 {
    margin-bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_5 : Css.Style
mb_5 =
    Css.property "margin-bottom" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.mb-52 {
    margin-bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_52 : Css.Style
mb_52 =
    Css.property "margin-bottom" "13rem"


{-| This class has the effect of following css declaration:

```css
.mb-56 {
    margin-bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_56 : Css.Style
mb_56 =
    Css.property "margin-bottom" "14rem"


{-| This class has the effect of following css declaration:

```css
.mb-6 {
    margin-bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_6 : Css.Style
mb_6 =
    Css.property "margin-bottom" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.mb-60 {
    margin-bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_60 : Css.Style
mb_60 =
    Css.property "margin-bottom" "15rem"


{-| This class has the effect of following css declaration:

```css
.mb-64 {
    margin-bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_64 : Css.Style
mb_64 =
    Css.property "margin-bottom" "16rem"


{-| This class has the effect of following css declaration:

```css
.mb-7 {
    margin-bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_7 : Css.Style
mb_7 =
    Css.property "margin-bottom" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.mb-72 {
    margin-bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_72 : Css.Style
mb_72 =
    Css.property "margin-bottom" "18rem"


{-| This class has the effect of following css declaration:

```css
.mb-8 {
    margin-bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_8 : Css.Style
mb_8 =
    Css.property "margin-bottom" "2rem"


{-| This class has the effect of following css declaration:

```css
.mb-80 {
    margin-bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_80 : Css.Style
mb_80 =
    Css.property "margin-bottom" "20rem"


{-| This class has the effect of following css declaration:

```css
.mb-9 {
    margin-bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_9 : Css.Style
mb_9 =
    Css.property "margin-bottom" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.mb-96 {
    margin-bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_96 : Css.Style
mb_96 =
    Css.property "margin-bottom" "24rem"


{-| This class has the effect of following css declaration:

```css
.mb-auto {
    margin-bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_auto : Css.Style
mb_auto =
    Css.property "margin-bottom" "auto"


{-| This class has the effect of following css declaration:

```css
.mb-px {
    margin-bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mb_px : Css.Style
mb_px =
    Css.property "margin-bottom" "1px"


{-| This class has the effect of following css declaration:

```css
.min-h-0 {
    min-height: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_0 : Css.Style
min_h_0 =
    Css.property "min-height" "0px"


{-| This class has the effect of following css declaration:

```css
.min-h-fit {
    min-height: fit-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_fit : Css.Style
min_h_fit =
    Css.property "min-height" "fit-content"


{-| This class has the effect of following css declaration:

```css
.min-h-full {
    min-height: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_full : Css.Style
min_h_full =
    Css.property "min-height" "100%"


{-| This class has the effect of following css declaration:

```css
.min-h-max {
    min-height: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_max : Css.Style
min_h_max =
    Css.property "min-height" "max-content"


{-| This class has the effect of following css declaration:

```css
.min-h-min {
    min-height: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_min : Css.Style
min_h_min =
    Css.property "min-height" "min-content"


{-| This class has the effect of following css declaration:

```css
.min-h-screen {
    min-height: 100vh
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_h_screen : Css.Style
min_h_screen =
    Css.property "min-height" "100vh"


{-| This class has the effect of following css declaration:

```css
.min-w-0 {
    min-width: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_0 : Css.Style
min_w_0 =
    Css.property "min-width" "0px"


{-| This class has the effect of following css declaration:

```css
.min-w-fit {
    min-width: fit-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_fit : Css.Style
min_w_fit =
    Css.property "min-width" "fit-content"


{-| This class has the effect of following css declaration:

```css
.min-w-full {
    min-width: 100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_full : Css.Style
min_w_full =
    Css.property "min-width" "100%"


{-| This class has the effect of following css declaration:

```css
.min-w-max {
    min-width: max-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_max : Css.Style
min_w_max =
    Css.property "min-width" "max-content"


{-| This class has the effect of following css declaration:

```css
.min-w-min {
    min-width: min-content
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
min_w_min : Css.Style
min_w_min =
    Css.property "min-width" "min-content"


{-| This class has the effect of following css declaration:

```css
.mix-blend-color {
    mix-blend-mode: color
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_color : Css.Style
mix_blend_color =
    Css.property "mix-blend-mode" "color"


{-| This class has the effect of following css declaration:

```css
.mix-blend-color-burn {
    mix-blend-mode: color-burn
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_color_burn : Css.Style
mix_blend_color_burn =
    Css.property "mix-blend-mode" "color-burn"


{-| This class has the effect of following css declaration:

```css
.mix-blend-color-dodge {
    mix-blend-mode: color-dodge
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_color_dodge : Css.Style
mix_blend_color_dodge =
    Css.property "mix-blend-mode" "color-dodge"


{-| This class has the effect of following css declaration:

```css
.mix-blend-darken {
    mix-blend-mode: darken
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_darken : Css.Style
mix_blend_darken =
    Css.property "mix-blend-mode" "darken"


{-| This class has the effect of following css declaration:

```css
.mix-blend-difference {
    mix-blend-mode: difference
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_difference : Css.Style
mix_blend_difference =
    Css.property "mix-blend-mode" "difference"


{-| This class has the effect of following css declaration:

```css
.mix-blend-exclusion {
    mix-blend-mode: exclusion
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_exclusion : Css.Style
mix_blend_exclusion =
    Css.property "mix-blend-mode" "exclusion"


{-| This class has the effect of following css declaration:

```css
.mix-blend-hard-light {
    mix-blend-mode: hard-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_hard_light : Css.Style
mix_blend_hard_light =
    Css.property "mix-blend-mode" "hard-light"


{-| This class has the effect of following css declaration:

```css
.mix-blend-hue {
    mix-blend-mode: hue
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_hue : Css.Style
mix_blend_hue =
    Css.property "mix-blend-mode" "hue"


{-| This class has the effect of following css declaration:

```css
.mix-blend-lighten {
    mix-blend-mode: lighten
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_lighten : Css.Style
mix_blend_lighten =
    Css.property "mix-blend-mode" "lighten"


{-| This class has the effect of following css declaration:

```css
.mix-blend-luminosity {
    mix-blend-mode: luminosity
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_luminosity : Css.Style
mix_blend_luminosity =
    Css.property "mix-blend-mode" "luminosity"


{-| This class has the effect of following css declaration:

```css
.mix-blend-multiply {
    mix-blend-mode: multiply
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_multiply : Css.Style
mix_blend_multiply =
    Css.property "mix-blend-mode" "multiply"


{-| This class has the effect of following css declaration:

```css
.mix-blend-normal {
    mix-blend-mode: normal
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_normal : Css.Style
mix_blend_normal =
    Css.property "mix-blend-mode" "normal"


{-| This class has the effect of following css declaration:

```css
.mix-blend-overlay {
    mix-blend-mode: overlay
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_overlay : Css.Style
mix_blend_overlay =
    Css.property "mix-blend-mode" "overlay"


{-| This class has the effect of following css declaration:

```css
.mix-blend-plus-lighter {
    mix-blend-mode: plus-lighter
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_plus_lighter : Css.Style
mix_blend_plus_lighter =
    Css.property "mix-blend-mode" "plus-lighter"


{-| This class has the effect of following css declaration:

```css
.mix-blend-saturation {
    mix-blend-mode: saturation
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_saturation : Css.Style
mix_blend_saturation =
    Css.property "mix-blend-mode" "saturation"


{-| This class has the effect of following css declaration:

```css
.mix-blend-screen {
    mix-blend-mode: screen
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_screen : Css.Style
mix_blend_screen =
    Css.property "mix-blend-mode" "screen"


{-| This class has the effect of following css declaration:

```css
.mix-blend-soft-light {
    mix-blend-mode: soft-light
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mix_blend_soft_light : Css.Style
mix_blend_soft_light =
    Css.property "mix-blend-mode" "soft-light"


{-| This class has the effect of following css declaration:

```css
.ml-0 {
    margin-left: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_0 : Css.Style
ml_0 =
    Css.property "margin-left" "0px"


{-| This class has the effect of following css declaration:

```css
.ml-0\.5 {
    margin-left: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_0_dot_5 : Css.Style
ml_0_dot_5 =
    Css.property "margin-left" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.ml-1 {
    margin-left: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_1 : Css.Style
ml_1 =
    Css.property "margin-left" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.ml-10 {
    margin-left: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_10 : Css.Style
ml_10 =
    Css.property "margin-left" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-11 {
    margin-left: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_11 : Css.Style
ml_11 =
    Css.property "margin-left" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.ml-12 {
    margin-left: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_12 : Css.Style
ml_12 =
    Css.property "margin-left" "3rem"


{-| This class has the effect of following css declaration:

```css
.ml-14 {
    margin-left: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_14 : Css.Style
ml_14 =
    Css.property "margin-left" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-16 {
    margin-left: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_16 : Css.Style
ml_16 =
    Css.property "margin-left" "4rem"


{-| This class has the effect of following css declaration:

```css
.ml-1\.5 {
    margin-left: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_1_dot_5 : Css.Style
ml_1_dot_5 =
    Css.property "margin-left" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.ml-2 {
    margin-left: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_2 : Css.Style
ml_2 =
    Css.property "margin-left" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-20 {
    margin-left: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_20 : Css.Style
ml_20 =
    Css.property "margin-left" "5rem"


{-| This class has the effect of following css declaration:

```css
.ml-24 {
    margin-left: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_24 : Css.Style
ml_24 =
    Css.property "margin-left" "6rem"


{-| This class has the effect of following css declaration:

```css
.ml-28 {
    margin-left: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_28 : Css.Style
ml_28 =
    Css.property "margin-left" "7rem"


{-| This class has the effect of following css declaration:

```css
.ml-2\.5 {
    margin-left: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_2_dot_5 : Css.Style
ml_2_dot_5 =
    Css.property "margin-left" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.ml-3 {
    margin-left: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_3 : Css.Style
ml_3 =
    Css.property "margin-left" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.ml-32 {
    margin-left: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_32 : Css.Style
ml_32 =
    Css.property "margin-left" "8rem"


{-| This class has the effect of following css declaration:

```css
.ml-36 {
    margin-left: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_36 : Css.Style
ml_36 =
    Css.property "margin-left" "9rem"


{-| This class has the effect of following css declaration:

```css
.ml-3\.5 {
    margin-left: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_3_dot_5 : Css.Style
ml_3_dot_5 =
    Css.property "margin-left" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.ml-4 {
    margin-left: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_4 : Css.Style
ml_4 =
    Css.property "margin-left" "1rem"


{-| This class has the effect of following css declaration:

```css
.ml-40 {
    margin-left: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_40 : Css.Style
ml_40 =
    Css.property "margin-left" "10rem"


{-| This class has the effect of following css declaration:

```css
.ml-44 {
    margin-left: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_44 : Css.Style
ml_44 =
    Css.property "margin-left" "11rem"


{-| This class has the effect of following css declaration:

```css
.ml-48 {
    margin-left: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_48 : Css.Style
ml_48 =
    Css.property "margin-left" "12rem"


{-| This class has the effect of following css declaration:

```css
.ml-5 {
    margin-left: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_5 : Css.Style
ml_5 =
    Css.property "margin-left" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.ml-52 {
    margin-left: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_52 : Css.Style
ml_52 =
    Css.property "margin-left" "13rem"


{-| This class has the effect of following css declaration:

```css
.ml-56 {
    margin-left: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_56 : Css.Style
ml_56 =
    Css.property "margin-left" "14rem"


{-| This class has the effect of following css declaration:

```css
.ml-6 {
    margin-left: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_6 : Css.Style
ml_6 =
    Css.property "margin-left" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.ml-60 {
    margin-left: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_60 : Css.Style
ml_60 =
    Css.property "margin-left" "15rem"


{-| This class has the effect of following css declaration:

```css
.ml-64 {
    margin-left: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_64 : Css.Style
ml_64 =
    Css.property "margin-left" "16rem"


{-| This class has the effect of following css declaration:

```css
.ml-7 {
    margin-left: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_7 : Css.Style
ml_7 =
    Css.property "margin-left" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.ml-72 {
    margin-left: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_72 : Css.Style
ml_72 =
    Css.property "margin-left" "18rem"


{-| This class has the effect of following css declaration:

```css
.ml-8 {
    margin-left: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_8 : Css.Style
ml_8 =
    Css.property "margin-left" "2rem"


{-| This class has the effect of following css declaration:

```css
.ml-80 {
    margin-left: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_80 : Css.Style
ml_80 =
    Css.property "margin-left" "20rem"


{-| This class has the effect of following css declaration:

```css
.ml-9 {
    margin-left: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_9 : Css.Style
ml_9 =
    Css.property "margin-left" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.ml-96 {
    margin-left: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_96 : Css.Style
ml_96 =
    Css.property "margin-left" "24rem"


{-| This class has the effect of following css declaration:

```css
.ml-auto {
    margin-left: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_auto : Css.Style
ml_auto =
    Css.property "margin-left" "auto"


{-| This class has the effect of following css declaration:

```css
.ml-px {
    margin-left: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
ml_px : Css.Style
ml_px =
    Css.property "margin-left" "1px"


{-| This class has the effect of following css declaration:

```css
.mr-0 {
    margin-right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_0 : Css.Style
mr_0 =
    Css.property "margin-right" "0px"


{-| This class has the effect of following css declaration:

```css
.mr-0\.5 {
    margin-right: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_0_dot_5 : Css.Style
mr_0_dot_5 =
    Css.property "margin-right" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.mr-1 {
    margin-right: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_1 : Css.Style
mr_1 =
    Css.property "margin-right" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.mr-10 {
    margin-right: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_10 : Css.Style
mr_10 =
    Css.property "margin-right" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-11 {
    margin-right: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_11 : Css.Style
mr_11 =
    Css.property "margin-right" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.mr-12 {
    margin-right: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_12 : Css.Style
mr_12 =
    Css.property "margin-right" "3rem"


{-| This class has the effect of following css declaration:

```css
.mr-14 {
    margin-right: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_14 : Css.Style
mr_14 =
    Css.property "margin-right" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-16 {
    margin-right: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_16 : Css.Style
mr_16 =
    Css.property "margin-right" "4rem"


{-| This class has the effect of following css declaration:

```css
.mr-1\.5 {
    margin-right: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_1_dot_5 : Css.Style
mr_1_dot_5 =
    Css.property "margin-right" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.mr-2 {
    margin-right: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_2 : Css.Style
mr_2 =
    Css.property "margin-right" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-20 {
    margin-right: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_20 : Css.Style
mr_20 =
    Css.property "margin-right" "5rem"


{-| This class has the effect of following css declaration:

```css
.mr-24 {
    margin-right: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_24 : Css.Style
mr_24 =
    Css.property "margin-right" "6rem"


{-| This class has the effect of following css declaration:

```css
.mr-28 {
    margin-right: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_28 : Css.Style
mr_28 =
    Css.property "margin-right" "7rem"


{-| This class has the effect of following css declaration:

```css
.mr-2\.5 {
    margin-right: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_2_dot_5 : Css.Style
mr_2_dot_5 =
    Css.property "margin-right" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.mr-3 {
    margin-right: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_3 : Css.Style
mr_3 =
    Css.property "margin-right" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.mr-32 {
    margin-right: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_32 : Css.Style
mr_32 =
    Css.property "margin-right" "8rem"


{-| This class has the effect of following css declaration:

```css
.mr-36 {
    margin-right: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_36 : Css.Style
mr_36 =
    Css.property "margin-right" "9rem"


{-| This class has the effect of following css declaration:

```css
.mr-3\.5 {
    margin-right: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_3_dot_5 : Css.Style
mr_3_dot_5 =
    Css.property "margin-right" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.mr-4 {
    margin-right: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_4 : Css.Style
mr_4 =
    Css.property "margin-right" "1rem"


{-| This class has the effect of following css declaration:

```css
.mr-40 {
    margin-right: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_40 : Css.Style
mr_40 =
    Css.property "margin-right" "10rem"


{-| This class has the effect of following css declaration:

```css
.mr-44 {
    margin-right: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_44 : Css.Style
mr_44 =
    Css.property "margin-right" "11rem"


{-| This class has the effect of following css declaration:

```css
.mr-48 {
    margin-right: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_48 : Css.Style
mr_48 =
    Css.property "margin-right" "12rem"


{-| This class has the effect of following css declaration:

```css
.mr-5 {
    margin-right: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_5 : Css.Style
mr_5 =
    Css.property "margin-right" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.mr-52 {
    margin-right: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_52 : Css.Style
mr_52 =
    Css.property "margin-right" "13rem"


{-| This class has the effect of following css declaration:

```css
.mr-56 {
    margin-right: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_56 : Css.Style
mr_56 =
    Css.property "margin-right" "14rem"


{-| This class has the effect of following css declaration:

```css
.mr-6 {
    margin-right: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_6 : Css.Style
mr_6 =
    Css.property "margin-right" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.mr-60 {
    margin-right: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_60 : Css.Style
mr_60 =
    Css.property "margin-right" "15rem"


{-| This class has the effect of following css declaration:

```css
.mr-64 {
    margin-right: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_64 : Css.Style
mr_64 =
    Css.property "margin-right" "16rem"


{-| This class has the effect of following css declaration:

```css
.mr-7 {
    margin-right: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_7 : Css.Style
mr_7 =
    Css.property "margin-right" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.mr-72 {
    margin-right: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_72 : Css.Style
mr_72 =
    Css.property "margin-right" "18rem"


{-| This class has the effect of following css declaration:

```css
.mr-8 {
    margin-right: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_8 : Css.Style
mr_8 =
    Css.property "margin-right" "2rem"


{-| This class has the effect of following css declaration:

```css
.mr-80 {
    margin-right: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_80 : Css.Style
mr_80 =
    Css.property "margin-right" "20rem"


{-| This class has the effect of following css declaration:

```css
.mr-9 {
    margin-right: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_9 : Css.Style
mr_9 =
    Css.property "margin-right" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.mr-96 {
    margin-right: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_96 : Css.Style
mr_96 =
    Css.property "margin-right" "24rem"


{-| This class has the effect of following css declaration:

```css
.mr-auto {
    margin-right: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_auto : Css.Style
mr_auto =
    Css.property "margin-right" "auto"


{-| This class has the effect of following css declaration:

```css
.mr-px {
    margin-right: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mr_px : Css.Style
mr_px =
    Css.property "margin-right" "1px"


{-| This class has the effect of following css declaration:

```css
.mt-0 {
    margin-top: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_0 : Css.Style
mt_0 =
    Css.property "margin-top" "0px"


{-| This class has the effect of following css declaration:

```css
.mt-0\.5 {
    margin-top: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_0_dot_5 : Css.Style
mt_0_dot_5 =
    Css.property "margin-top" "0.125rem"


{-| This class has the effect of following css declaration:

```css
.mt-1 {
    margin-top: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_1 : Css.Style
mt_1 =
    Css.property "margin-top" "0.25rem"


{-| This class has the effect of following css declaration:

```css
.mt-10 {
    margin-top: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_10 : Css.Style
mt_10 =
    Css.property "margin-top" "2.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-11 {
    margin-top: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_11 : Css.Style
mt_11 =
    Css.property "margin-top" "2.75rem"


{-| This class has the effect of following css declaration:

```css
.mt-12 {
    margin-top: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_12 : Css.Style
mt_12 =
    Css.property "margin-top" "3rem"


{-| This class has the effect of following css declaration:

```css
.mt-14 {
    margin-top: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_14 : Css.Style
mt_14 =
    Css.property "margin-top" "3.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-16 {
    margin-top: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_16 : Css.Style
mt_16 =
    Css.property "margin-top" "4rem"


{-| This class has the effect of following css declaration:

```css
.mt-1\.5 {
    margin-top: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_1_dot_5 : Css.Style
mt_1_dot_5 =
    Css.property "margin-top" "0.375rem"


{-| This class has the effect of following css declaration:

```css
.mt-2 {
    margin-top: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_2 : Css.Style
mt_2 =
    Css.property "margin-top" "0.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-20 {
    margin-top: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_20 : Css.Style
mt_20 =
    Css.property "margin-top" "5rem"


{-| This class has the effect of following css declaration:

```css
.mt-24 {
    margin-top: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_24 : Css.Style
mt_24 =
    Css.property "margin-top" "6rem"


{-| This class has the effect of following css declaration:

```css
.mt-28 {
    margin-top: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_28 : Css.Style
mt_28 =
    Css.property "margin-top" "7rem"


{-| This class has the effect of following css declaration:

```css
.mt-2\.5 {
    margin-top: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_2_dot_5 : Css.Style
mt_2_dot_5 =
    Css.property "margin-top" "0.625rem"


{-| This class has the effect of following css declaration:

```css
.mt-3 {
    margin-top: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_3 : Css.Style
mt_3 =
    Css.property "margin-top" "0.75rem"


{-| This class has the effect of following css declaration:

```css
.mt-32 {
    margin-top: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_32 : Css.Style
mt_32 =
    Css.property "margin-top" "8rem"


{-| This class has the effect of following css declaration:

```css
.mt-36 {
    margin-top: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_36 : Css.Style
mt_36 =
    Css.property "margin-top" "9rem"


{-| This class has the effect of following css declaration:

```css
.mt-3\.5 {
    margin-top: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_3_dot_5 : Css.Style
mt_3_dot_5 =
    Css.property "margin-top" "0.875rem"


{-| This class has the effect of following css declaration:

```css
.mt-4 {
    margin-top: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_4 : Css.Style
mt_4 =
    Css.property "margin-top" "1rem"


{-| This class has the effect of following css declaration:

```css
.mt-40 {
    margin-top: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_40 : Css.Style
mt_40 =
    Css.property "margin-top" "10rem"


{-| This class has the effect of following css declaration:

```css
.mt-44 {
    margin-top: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_44 : Css.Style
mt_44 =
    Css.property "margin-top" "11rem"


{-| This class has the effect of following css declaration:

```css
.mt-48 {
    margin-top: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_48 : Css.Style
mt_48 =
    Css.property "margin-top" "12rem"


{-| This class has the effect of following css declaration:

```css
.mt-5 {
    margin-top: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_5 : Css.Style
mt_5 =
    Css.property "margin-top" "1.25rem"


{-| This class has the effect of following css declaration:

```css
.mt-52 {
    margin-top: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_52 : Css.Style
mt_52 =
    Css.property "margin-top" "13rem"


{-| This class has the effect of following css declaration:

```css
.mt-56 {
    margin-top: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_56 : Css.Style
mt_56 =
    Css.property "margin-top" "14rem"


{-| This class has the effect of following css declaration:

```css
.mt-6 {
    margin-top: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_6 : Css.Style
mt_6 =
    Css.property "margin-top" "1.5rem"


{-| This class has the effect of following css declaration:

```css
.mt-60 {
    margin-top: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_60 : Css.Style
mt_60 =
    Css.property "margin-top" "15rem"


{-| This class has the effect of following css declaration:

```css
.mt-64 {
    margin-top: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_64 : Css.Style
mt_64 =
    Css.property "margin-top" "16rem"


{-| This class has the effect of following css declaration:

```css
.mt-7 {
    margin-top: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_7 : Css.Style
mt_7 =
    Css.property "margin-top" "1.75rem"


{-| This class has the effect of following css declaration:

```css
.mt-72 {
    margin-top: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_72 : Css.Style
mt_72 =
    Css.property "margin-top" "18rem"


{-| This class has the effect of following css declaration:

```css
.mt-8 {
    margin-top: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_8 : Css.Style
mt_8 =
    Css.property "margin-top" "2rem"


{-| This class has the effect of following css declaration:

```css
.mt-80 {
    margin-top: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_80 : Css.Style
mt_80 =
    Css.property "margin-top" "20rem"


{-| This class has the effect of following css declaration:

```css
.mt-9 {
    margin-top: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_9 : Css.Style
mt_9 =
    Css.property "margin-top" "2.25rem"


{-| This class has the effect of following css declaration:

```css
.mt-96 {
    margin-top: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_96 : Css.Style
mt_96 =
    Css.property "margin-top" "24rem"


{-| This class has the effect of following css declaration:

```css
.mt-auto {
    margin-top: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_auto : Css.Style
mt_auto =
    Css.property "margin-top" "auto"


{-| This class has the effect of following css declaration:

```css
.mt-px {
    margin-top: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mt_px : Css.Style
mt_px =
    Css.property "margin-top" "1px"


{-| This class has the effect of following css declaration:

```css
.mx-0 {
    margin-left: 0px;
    margin-right: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_0 : Css.Style
mx_0 =
    Css.batch
        [ Css.property "margin-left" "0px"
        , Css.property "margin-right" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-0\.5 {
    margin-left: 0.125rem;
    margin-right: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_0_dot_5 : Css.Style
mx_0_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.125rem"
        , Css.property "margin-right" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-1 {
    margin-left: 0.25rem;
    margin-right: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_1 : Css.Style
mx_1 =
    Css.batch
        [ Css.property "margin-left" "0.25rem"
        , Css.property "margin-right" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-10 {
    margin-left: 2.5rem;
    margin-right: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_10 : Css.Style
mx_10 =
    Css.batch
        [ Css.property "margin-left" "2.5rem"
        , Css.property "margin-right" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-11 {
    margin-left: 2.75rem;
    margin-right: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_11 : Css.Style
mx_11 =
    Css.batch
        [ Css.property "margin-left" "2.75rem"
        , Css.property "margin-right" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-12 {
    margin-left: 3rem;
    margin-right: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_12 : Css.Style
mx_12 =
    Css.batch
        [ Css.property "margin-left" "3rem"
        , Css.property "margin-right" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-14 {
    margin-left: 3.5rem;
    margin-right: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_14 : Css.Style
mx_14 =
    Css.batch
        [ Css.property "margin-left" "3.5rem"
        , Css.property "margin-right" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-16 {
    margin-left: 4rem;
    margin-right: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_16 : Css.Style
mx_16 =
    Css.batch
        [ Css.property "margin-left" "4rem"
        , Css.property "margin-right" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-1\.5 {
    margin-left: 0.375rem;
    margin-right: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_1_dot_5 : Css.Style
mx_1_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.375rem"
        , Css.property "margin-right" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-2 {
    margin-left: 0.5rem;
    margin-right: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_2 : Css.Style
mx_2 =
    Css.batch
        [ Css.property "margin-left" "0.5rem"
        , Css.property "margin-right" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-20 {
    margin-left: 5rem;
    margin-right: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_20 : Css.Style
mx_20 =
    Css.batch
        [ Css.property "margin-left" "5rem"
        , Css.property "margin-right" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-24 {
    margin-left: 6rem;
    margin-right: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_24 : Css.Style
mx_24 =
    Css.batch
        [ Css.property "margin-left" "6rem"
        , Css.property "margin-right" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-28 {
    margin-left: 7rem;
    margin-right: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_28 : Css.Style
mx_28 =
    Css.batch
        [ Css.property "margin-left" "7rem"
        , Css.property "margin-right" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-2\.5 {
    margin-left: 0.625rem;
    margin-right: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_2_dot_5 : Css.Style
mx_2_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.625rem"
        , Css.property "margin-right" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-3 {
    margin-left: 0.75rem;
    margin-right: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_3 : Css.Style
mx_3 =
    Css.batch
        [ Css.property "margin-left" "0.75rem"
        , Css.property "margin-right" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-32 {
    margin-left: 8rem;
    margin-right: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_32 : Css.Style
mx_32 =
    Css.batch
        [ Css.property "margin-left" "8rem"
        , Css.property "margin-right" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-36 {
    margin-left: 9rem;
    margin-right: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_36 : Css.Style
mx_36 =
    Css.batch
        [ Css.property "margin-left" "9rem"
        , Css.property "margin-right" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-3\.5 {
    margin-left: 0.875rem;
    margin-right: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_3_dot_5 : Css.Style
mx_3_dot_5 =
    Css.batch
        [ Css.property "margin-left" "0.875rem"
        , Css.property "margin-right" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-4 {
    margin-left: 1rem;
    margin-right: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_4 : Css.Style
mx_4 =
    Css.batch
        [ Css.property "margin-left" "1rem"
        , Css.property "margin-right" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-40 {
    margin-left: 10rem;
    margin-right: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_40 : Css.Style
mx_40 =
    Css.batch
        [ Css.property "margin-left" "10rem"
        , Css.property "margin-right" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-44 {
    margin-left: 11rem;
    margin-right: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_44 : Css.Style
mx_44 =
    Css.batch
        [ Css.property "margin-left" "11rem"
        , Css.property "margin-right" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-48 {
    margin-left: 12rem;
    margin-right: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_48 : Css.Style
mx_48 =
    Css.batch
        [ Css.property "margin-left" "12rem"
        , Css.property "margin-right" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-5 {
    margin-left: 1.25rem;
    margin-right: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_5 : Css.Style
mx_5 =
    Css.batch
        [ Css.property "margin-left" "1.25rem"
        , Css.property "margin-right" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-52 {
    margin-left: 13rem;
    margin-right: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_52 : Css.Style
mx_52 =
    Css.batch
        [ Css.property "margin-left" "13rem"
        , Css.property "margin-right" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-56 {
    margin-left: 14rem;
    margin-right: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_56 : Css.Style
mx_56 =
    Css.batch
        [ Css.property "margin-left" "14rem"
        , Css.property "margin-right" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-6 {
    margin-left: 1.5rem;
    margin-right: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_6 : Css.Style
mx_6 =
    Css.batch
        [ Css.property "margin-left" "1.5rem"
        , Css.property "margin-right" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-60 {
    margin-left: 15rem;
    margin-right: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_60 : Css.Style
mx_60 =
    Css.batch
        [ Css.property "margin-left" "15rem"
        , Css.property "margin-right" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-64 {
    margin-left: 16rem;
    margin-right: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_64 : Css.Style
mx_64 =
    Css.batch
        [ Css.property "margin-left" "16rem"
        , Css.property "margin-right" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-7 {
    margin-left: 1.75rem;
    margin-right: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_7 : Css.Style
mx_7 =
    Css.batch
        [ Css.property "margin-left" "1.75rem"
        , Css.property "margin-right" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-72 {
    margin-left: 18rem;
    margin-right: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_72 : Css.Style
mx_72 =
    Css.batch
        [ Css.property "margin-left" "18rem"
        , Css.property "margin-right" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-8 {
    margin-left: 2rem;
    margin-right: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_8 : Css.Style
mx_8 =
    Css.batch
        [ Css.property "margin-left" "2rem"
        , Css.property "margin-right" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-80 {
    margin-left: 20rem;
    margin-right: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_80 : Css.Style
mx_80 =
    Css.batch
        [ Css.property "margin-left" "20rem"
        , Css.property "margin-right" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-9 {
    margin-left: 2.25rem;
    margin-right: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_9 : Css.Style
mx_9 =
    Css.batch
        [ Css.property "margin-left" "2.25rem"
        , Css.property "margin-right" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-96 {
    margin-left: 24rem;
    margin-right: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_96 : Css.Style
mx_96 =
    Css.batch
        [ Css.property "margin-left" "24rem"
        , Css.property "margin-right" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-auto {
    margin-left: auto;
    margin-right: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_auto : Css.Style
mx_auto =
    Css.batch
        [ Css.property "margin-left" "auto"
        , Css.property "margin-right" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.mx-px {
    margin-left: 1px;
    margin-right: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
mx_px : Css.Style
mx_px =
    Css.batch
        [ Css.property "margin-left" "1px"
        , Css.property "margin-right" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.my-0 {
    margin-top: 0px;
    margin-bottom: 0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_0 : Css.Style
my_0 =
    Css.batch
        [ Css.property "margin-top" "0px"
        , Css.property "margin-bottom" "0px"
        ]


{-| This class has the effect of following css declaration:

```css
.my-0\.5 {
    margin-top: 0.125rem;
    margin-bottom: 0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_0_dot_5 : Css.Style
my_0_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.125rem"
        , Css.property "margin-bottom" "0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-1 {
    margin-top: 0.25rem;
    margin-bottom: 0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_1 : Css.Style
my_1 =
    Css.batch
        [ Css.property "margin-top" "0.25rem"
        , Css.property "margin-bottom" "0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-10 {
    margin-top: 2.5rem;
    margin-bottom: 2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_10 : Css.Style
my_10 =
    Css.batch
        [ Css.property "margin-top" "2.5rem"
        , Css.property "margin-bottom" "2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-11 {
    margin-top: 2.75rem;
    margin-bottom: 2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_11 : Css.Style
my_11 =
    Css.batch
        [ Css.property "margin-top" "2.75rem"
        , Css.property "margin-bottom" "2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-12 {
    margin-top: 3rem;
    margin-bottom: 3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_12 : Css.Style
my_12 =
    Css.batch
        [ Css.property "margin-top" "3rem"
        , Css.property "margin-bottom" "3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-14 {
    margin-top: 3.5rem;
    margin-bottom: 3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_14 : Css.Style
my_14 =
    Css.batch
        [ Css.property "margin-top" "3.5rem"
        , Css.property "margin-bottom" "3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-16 {
    margin-top: 4rem;
    margin-bottom: 4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_16 : Css.Style
my_16 =
    Css.batch
        [ Css.property "margin-top" "4rem"
        , Css.property "margin-bottom" "4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-1\.5 {
    margin-top: 0.375rem;
    margin-bottom: 0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_1_dot_5 : Css.Style
my_1_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.375rem"
        , Css.property "margin-bottom" "0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-2 {
    margin-top: 0.5rem;
    margin-bottom: 0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_2 : Css.Style
my_2 =
    Css.batch
        [ Css.property "margin-top" "0.5rem"
        , Css.property "margin-bottom" "0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-20 {
    margin-top: 5rem;
    margin-bottom: 5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_20 : Css.Style
my_20 =
    Css.batch
        [ Css.property "margin-top" "5rem"
        , Css.property "margin-bottom" "5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-24 {
    margin-top: 6rem;
    margin-bottom: 6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_24 : Css.Style
my_24 =
    Css.batch
        [ Css.property "margin-top" "6rem"
        , Css.property "margin-bottom" "6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-28 {
    margin-top: 7rem;
    margin-bottom: 7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_28 : Css.Style
my_28 =
    Css.batch
        [ Css.property "margin-top" "7rem"
        , Css.property "margin-bottom" "7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-2\.5 {
    margin-top: 0.625rem;
    margin-bottom: 0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_2_dot_5 : Css.Style
my_2_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.625rem"
        , Css.property "margin-bottom" "0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-3 {
    margin-top: 0.75rem;
    margin-bottom: 0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_3 : Css.Style
my_3 =
    Css.batch
        [ Css.property "margin-top" "0.75rem"
        , Css.property "margin-bottom" "0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-32 {
    margin-top: 8rem;
    margin-bottom: 8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_32 : Css.Style
my_32 =
    Css.batch
        [ Css.property "margin-top" "8rem"
        , Css.property "margin-bottom" "8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-36 {
    margin-top: 9rem;
    margin-bottom: 9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_36 : Css.Style
my_36 =
    Css.batch
        [ Css.property "margin-top" "9rem"
        , Css.property "margin-bottom" "9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-3\.5 {
    margin-top: 0.875rem;
    margin-bottom: 0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_3_dot_5 : Css.Style
my_3_dot_5 =
    Css.batch
        [ Css.property "margin-top" "0.875rem"
        , Css.property "margin-bottom" "0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-4 {
    margin-top: 1rem;
    margin-bottom: 1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_4 : Css.Style
my_4 =
    Css.batch
        [ Css.property "margin-top" "1rem"
        , Css.property "margin-bottom" "1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-40 {
    margin-top: 10rem;
    margin-bottom: 10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_40 : Css.Style
my_40 =
    Css.batch
        [ Css.property "margin-top" "10rem"
        , Css.property "margin-bottom" "10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-44 {
    margin-top: 11rem;
    margin-bottom: 11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_44 : Css.Style
my_44 =
    Css.batch
        [ Css.property "margin-top" "11rem"
        , Css.property "margin-bottom" "11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-48 {
    margin-top: 12rem;
    margin-bottom: 12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_48 : Css.Style
my_48 =
    Css.batch
        [ Css.property "margin-top" "12rem"
        , Css.property "margin-bottom" "12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-5 {
    margin-top: 1.25rem;
    margin-bottom: 1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_5 : Css.Style
my_5 =
    Css.batch
        [ Css.property "margin-top" "1.25rem"
        , Css.property "margin-bottom" "1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-52 {
    margin-top: 13rem;
    margin-bottom: 13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_52 : Css.Style
my_52 =
    Css.batch
        [ Css.property "margin-top" "13rem"
        , Css.property "margin-bottom" "13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-56 {
    margin-top: 14rem;
    margin-bottom: 14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_56 : Css.Style
my_56 =
    Css.batch
        [ Css.property "margin-top" "14rem"
        , Css.property "margin-bottom" "14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-6 {
    margin-top: 1.5rem;
    margin-bottom: 1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_6 : Css.Style
my_6 =
    Css.batch
        [ Css.property "margin-top" "1.5rem"
        , Css.property "margin-bottom" "1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-60 {
    margin-top: 15rem;
    margin-bottom: 15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_60 : Css.Style
my_60 =
    Css.batch
        [ Css.property "margin-top" "15rem"
        , Css.property "margin-bottom" "15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-64 {
    margin-top: 16rem;
    margin-bottom: 16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_64 : Css.Style
my_64 =
    Css.batch
        [ Css.property "margin-top" "16rem"
        , Css.property "margin-bottom" "16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-7 {
    margin-top: 1.75rem;
    margin-bottom: 1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_7 : Css.Style
my_7 =
    Css.batch
        [ Css.property "margin-top" "1.75rem"
        , Css.property "margin-bottom" "1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-72 {
    margin-top: 18rem;
    margin-bottom: 18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_72 : Css.Style
my_72 =
    Css.batch
        [ Css.property "margin-top" "18rem"
        , Css.property "margin-bottom" "18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-8 {
    margin-top: 2rem;
    margin-bottom: 2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_8 : Css.Style
my_8 =
    Css.batch
        [ Css.property "margin-top" "2rem"
        , Css.property "margin-bottom" "2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-80 {
    margin-top: 20rem;
    margin-bottom: 20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_80 : Css.Style
my_80 =
    Css.batch
        [ Css.property "margin-top" "20rem"
        , Css.property "margin-bottom" "20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-9 {
    margin-top: 2.25rem;
    margin-bottom: 2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_9 : Css.Style
my_9 =
    Css.batch
        [ Css.property "margin-top" "2.25rem"
        , Css.property "margin-bottom" "2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-96 {
    margin-top: 24rem;
    margin-bottom: 24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_96 : Css.Style
my_96 =
    Css.batch
        [ Css.property "margin-top" "24rem"
        , Css.property "margin-bottom" "24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.my-auto {
    margin-top: auto;
    margin-bottom: auto
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_auto : Css.Style
my_auto =
    Css.batch
        [ Css.property "margin-top" "auto"
        , Css.property "margin-bottom" "auto"
        ]


{-| This class has the effect of following css declaration:

```css
.my-px {
    margin-top: 1px;
    margin-bottom: 1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
my_px : Css.Style
my_px =
    Css.batch
        [ Css.property "margin-top" "1px"
        , Css.property "margin-bottom" "1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-0 {
    --tw-backdrop-hue-rotate: hue-rotate(-0deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_0 : Css.Style
neg_backdrop_hue_rotate_0 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-0deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-15 {
    --tw-backdrop-hue-rotate: hue-rotate(-15deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_15 : Css.Style
neg_backdrop_hue_rotate_15 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-15deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-180 {
    --tw-backdrop-hue-rotate: hue-rotate(-180deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_180 : Css.Style
neg_backdrop_hue_rotate_180 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-180deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-30 {
    --tw-backdrop-hue-rotate: hue-rotate(-30deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_30 : Css.Style
neg_backdrop_hue_rotate_30 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-30deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-60 {
    --tw-backdrop-hue-rotate: hue-rotate(-60deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_60 : Css.Style
neg_backdrop_hue_rotate_60 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-60deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.-backdrop-hue-rotate-90 {
    --tw-backdrop-hue-rotate: hue-rotate(-90deg);
    backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_backdrop_hue_rotate_90 : Css.Style
neg_backdrop_hue_rotate_90 =
    Css.batch
        [ Css.property "--tw-backdrop-hue-rotate" "hue-rotate(-90deg)"
        , Css.property "backdrop-filter" "var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia)"
        ]


{-| This class has the effect of following css declaration:

```css
.-bottom-0 {
    bottom: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_0 : Css.Style
neg_bottom_0 =
    Css.property "bottom" "-0px"


{-| This class has the effect of following css declaration:

```css
.-bottom-0\.5 {
    bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_0_dot_5 : Css.Style
neg_bottom_0_dot_5 =
    Css.property "bottom" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-1 {
    bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1 : Css.Style
neg_bottom_1 =
    Css.property "bottom" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-10 {
    bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_10 : Css.Style
neg_bottom_10 =
    Css.property "bottom" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-11 {
    bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_11 : Css.Style
neg_bottom_11 =
    Css.property "bottom" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-12 {
    bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_12 : Css.Style
neg_bottom_12 =
    Css.property "bottom" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-14 {
    bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_14 : Css.Style
neg_bottom_14 =
    Css.property "bottom" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-16 {
    bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_16 : Css.Style
neg_bottom_16 =
    Css.property "bottom" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\.5 {
    bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1_dot_5 : Css.Style
neg_bottom_1_dot_5 =
    Css.property "bottom" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\/2 {
    bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1over2 : Css.Style
neg_bottom_1over2 =
    Css.property "bottom" "-50%"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\/3 {
    bottom: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1over3 : Css.Style
neg_bottom_1over3 =
    Css.property "bottom" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-bottom-1\/4 {
    bottom: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_1over4 : Css.Style
neg_bottom_1over4 =
    Css.property "bottom" "-25%"


{-| This class has the effect of following css declaration:

```css
.-bottom-2 {
    bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2 : Css.Style
neg_bottom_2 =
    Css.property "bottom" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-20 {
    bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_20 : Css.Style
neg_bottom_20 =
    Css.property "bottom" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-24 {
    bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_24 : Css.Style
neg_bottom_24 =
    Css.property "bottom" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-28 {
    bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_28 : Css.Style
neg_bottom_28 =
    Css.property "bottom" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-2\.5 {
    bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2_dot_5 : Css.Style
neg_bottom_2_dot_5 =
    Css.property "bottom" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-2\/3 {
    bottom: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2over3 : Css.Style
neg_bottom_2over3 =
    Css.property "bottom" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-bottom-2\/4 {
    bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_2over4 : Css.Style
neg_bottom_2over4 =
    Css.property "bottom" "-50%"


{-| This class has the effect of following css declaration:

```css
.-bottom-3 {
    bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_3 : Css.Style
neg_bottom_3 =
    Css.property "bottom" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-32 {
    bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_32 : Css.Style
neg_bottom_32 =
    Css.property "bottom" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-36 {
    bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_36 : Css.Style
neg_bottom_36 =
    Css.property "bottom" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-3\.5 {
    bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_3_dot_5 : Css.Style
neg_bottom_3_dot_5 =
    Css.property "bottom" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-3\/4 {
    bottom: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_3over4 : Css.Style
neg_bottom_3over4 =
    Css.property "bottom" "-75%"


{-| This class has the effect of following css declaration:

```css
.-bottom-4 {
    bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_4 : Css.Style
neg_bottom_4 =
    Css.property "bottom" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-40 {
    bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_40 : Css.Style
neg_bottom_40 =
    Css.property "bottom" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-44 {
    bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_44 : Css.Style
neg_bottom_44 =
    Css.property "bottom" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-48 {
    bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_48 : Css.Style
neg_bottom_48 =
    Css.property "bottom" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-5 {
    bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_5 : Css.Style
neg_bottom_5 =
    Css.property "bottom" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-52 {
    bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_52 : Css.Style
neg_bottom_52 =
    Css.property "bottom" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-56 {
    bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_56 : Css.Style
neg_bottom_56 =
    Css.property "bottom" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-6 {
    bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_6 : Css.Style
neg_bottom_6 =
    Css.property "bottom" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-60 {
    bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_60 : Css.Style
neg_bottom_60 =
    Css.property "bottom" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-64 {
    bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_64 : Css.Style
neg_bottom_64 =
    Css.property "bottom" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-7 {
    bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_7 : Css.Style
neg_bottom_7 =
    Css.property "bottom" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-72 {
    bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_72 : Css.Style
neg_bottom_72 =
    Css.property "bottom" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-8 {
    bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_8 : Css.Style
neg_bottom_8 =
    Css.property "bottom" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-80 {
    bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_80 : Css.Style
neg_bottom_80 =
    Css.property "bottom" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-9 {
    bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_9 : Css.Style
neg_bottom_9 =
    Css.property "bottom" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-96 {
    bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_96 : Css.Style
neg_bottom_96 =
    Css.property "bottom" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-bottom-full {
    bottom: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_full : Css.Style
neg_bottom_full =
    Css.property "bottom" "-100%"


{-| This class has the effect of following css declaration:

```css
.-bottom-px {
    bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_bottom_px : Css.Style
neg_bottom_px =
    Css.property "bottom" "-1px"


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-0 {
    --tw-hue-rotate: hue-rotate(-0deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_0 : Css.Style
neg_hue_rotate_0 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(-0deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-15 {
    --tw-hue-rotate: hue-rotate(-15deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_15 : Css.Style
neg_hue_rotate_15 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(-15deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-180 {
    --tw-hue-rotate: hue-rotate(-180deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_180 : Css.Style
neg_hue_rotate_180 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(-180deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-30 {
    --tw-hue-rotate: hue-rotate(-30deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_30 : Css.Style
neg_hue_rotate_30 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(-30deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-60 {
    --tw-hue-rotate: hue-rotate(-60deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_60 : Css.Style
neg_hue_rotate_60 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(-60deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.-hue-rotate-90 {
    --tw-hue-rotate: hue-rotate(-90deg);
    filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_hue_rotate_90 : Css.Style
neg_hue_rotate_90 =
    Css.batch
        [ Css.property "--tw-hue-rotate" "hue-rotate(-90deg)"
        , Css.property "filter" "var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow)"
        ]


{-| This class has the effect of following css declaration:

```css
.-indent-0 {
    text-indent: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_0 : Css.Style
neg_indent_0 =
    Css.property "text-indent" "-0px"


{-| This class has the effect of following css declaration:

```css
.-indent-0\.5 {
    text-indent: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_0_dot_5 : Css.Style
neg_indent_0_dot_5 =
    Css.property "text-indent" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-indent-1 {
    text-indent: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_1 : Css.Style
neg_indent_1 =
    Css.property "text-indent" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-indent-10 {
    text-indent: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_10 : Css.Style
neg_indent_10 =
    Css.property "text-indent" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-indent-11 {
    text-indent: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_11 : Css.Style
neg_indent_11 =
    Css.property "text-indent" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-indent-12 {
    text-indent: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_12 : Css.Style
neg_indent_12 =
    Css.property "text-indent" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-indent-14 {
    text-indent: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_14 : Css.Style
neg_indent_14 =
    Css.property "text-indent" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-indent-16 {
    text-indent: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_16 : Css.Style
neg_indent_16 =
    Css.property "text-indent" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-indent-1\.5 {
    text-indent: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_1_dot_5 : Css.Style
neg_indent_1_dot_5 =
    Css.property "text-indent" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-indent-2 {
    text-indent: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_2 : Css.Style
neg_indent_2 =
    Css.property "text-indent" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-indent-20 {
    text-indent: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_20 : Css.Style
neg_indent_20 =
    Css.property "text-indent" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-indent-24 {
    text-indent: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_24 : Css.Style
neg_indent_24 =
    Css.property "text-indent" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-indent-28 {
    text-indent: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_28 : Css.Style
neg_indent_28 =
    Css.property "text-indent" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-indent-2\.5 {
    text-indent: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_2_dot_5 : Css.Style
neg_indent_2_dot_5 =
    Css.property "text-indent" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-indent-3 {
    text-indent: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_3 : Css.Style
neg_indent_3 =
    Css.property "text-indent" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-indent-32 {
    text-indent: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_32 : Css.Style
neg_indent_32 =
    Css.property "text-indent" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-indent-36 {
    text-indent: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_36 : Css.Style
neg_indent_36 =
    Css.property "text-indent" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-indent-3\.5 {
    text-indent: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_3_dot_5 : Css.Style
neg_indent_3_dot_5 =
    Css.property "text-indent" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-indent-4 {
    text-indent: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_4 : Css.Style
neg_indent_4 =
    Css.property "text-indent" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-indent-40 {
    text-indent: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_40 : Css.Style
neg_indent_40 =
    Css.property "text-indent" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-indent-44 {
    text-indent: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_44 : Css.Style
neg_indent_44 =
    Css.property "text-indent" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-indent-48 {
    text-indent: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_48 : Css.Style
neg_indent_48 =
    Css.property "text-indent" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-indent-5 {
    text-indent: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_5 : Css.Style
neg_indent_5 =
    Css.property "text-indent" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-indent-52 {
    text-indent: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_52 : Css.Style
neg_indent_52 =
    Css.property "text-indent" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-indent-56 {
    text-indent: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_56 : Css.Style
neg_indent_56 =
    Css.property "text-indent" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-indent-6 {
    text-indent: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_6 : Css.Style
neg_indent_6 =
    Css.property "text-indent" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-indent-60 {
    text-indent: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_60 : Css.Style
neg_indent_60 =
    Css.property "text-indent" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-indent-64 {
    text-indent: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_64 : Css.Style
neg_indent_64 =
    Css.property "text-indent" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-indent-7 {
    text-indent: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_7 : Css.Style
neg_indent_7 =
    Css.property "text-indent" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-indent-72 {
    text-indent: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_72 : Css.Style
neg_indent_72 =
    Css.property "text-indent" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-indent-8 {
    text-indent: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_8 : Css.Style
neg_indent_8 =
    Css.property "text-indent" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-indent-80 {
    text-indent: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_80 : Css.Style
neg_indent_80 =
    Css.property "text-indent" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-indent-9 {
    text-indent: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_9 : Css.Style
neg_indent_9 =
    Css.property "text-indent" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-indent-96 {
    text-indent: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_96 : Css.Style
neg_indent_96 =
    Css.property "text-indent" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-indent-px {
    text-indent: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_indent_px : Css.Style
neg_indent_px =
    Css.property "text-indent" "-1px"


{-| This class has the effect of following css declaration:

```css
.-inset-0 {
    top: -0px;
    right: -0px;
    bottom: -0px;
    left: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_0 : Css.Style
neg_inset_0 =
    Css.batch
        [ Css.property "top" "-0px"
        , Css.property "right" "-0px"
        , Css.property "bottom" "-0px"
        , Css.property "left" "-0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-0\.5 {
    top: -0.125rem;
    right: -0.125rem;
    bottom: -0.125rem;
    left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_0_dot_5 : Css.Style
neg_inset_0_dot_5 =
    Css.batch
        [ Css.property "top" "-0.125rem"
        , Css.property "right" "-0.125rem"
        , Css.property "bottom" "-0.125rem"
        , Css.property "left" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1 {
    top: -0.25rem;
    right: -0.25rem;
    bottom: -0.25rem;
    left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1 : Css.Style
neg_inset_1 =
    Css.batch
        [ Css.property "top" "-0.25rem"
        , Css.property "right" "-0.25rem"
        , Css.property "bottom" "-0.25rem"
        , Css.property "left" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-10 {
    top: -2.5rem;
    right: -2.5rem;
    bottom: -2.5rem;
    left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_10 : Css.Style
neg_inset_10 =
    Css.batch
        [ Css.property "top" "-2.5rem"
        , Css.property "right" "-2.5rem"
        , Css.property "bottom" "-2.5rem"
        , Css.property "left" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-11 {
    top: -2.75rem;
    right: -2.75rem;
    bottom: -2.75rem;
    left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_11 : Css.Style
neg_inset_11 =
    Css.batch
        [ Css.property "top" "-2.75rem"
        , Css.property "right" "-2.75rem"
        , Css.property "bottom" "-2.75rem"
        , Css.property "left" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-12 {
    top: -3rem;
    right: -3rem;
    bottom: -3rem;
    left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_12 : Css.Style
neg_inset_12 =
    Css.batch
        [ Css.property "top" "-3rem"
        , Css.property "right" "-3rem"
        , Css.property "bottom" "-3rem"
        , Css.property "left" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-14 {
    top: -3.5rem;
    right: -3.5rem;
    bottom: -3.5rem;
    left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_14 : Css.Style
neg_inset_14 =
    Css.batch
        [ Css.property "top" "-3.5rem"
        , Css.property "right" "-3.5rem"
        , Css.property "bottom" "-3.5rem"
        , Css.property "left" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-16 {
    top: -4rem;
    right: -4rem;
    bottom: -4rem;
    left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_16 : Css.Style
neg_inset_16 =
    Css.batch
        [ Css.property "top" "-4rem"
        , Css.property "right" "-4rem"
        , Css.property "bottom" "-4rem"
        , Css.property "left" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\.5 {
    top: -0.375rem;
    right: -0.375rem;
    bottom: -0.375rem;
    left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1_dot_5 : Css.Style
neg_inset_1_dot_5 =
    Css.batch
        [ Css.property "top" "-0.375rem"
        , Css.property "right" "-0.375rem"
        , Css.property "bottom" "-0.375rem"
        , Css.property "left" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\/2 {
    top: -50%;
    right: -50%;
    bottom: -50%;
    left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1over2 : Css.Style
neg_inset_1over2 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "right" "-50%"
        , Css.property "bottom" "-50%"
        , Css.property "left" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\/3 {
    top: -33.333333%;
    right: -33.333333%;
    bottom: -33.333333%;
    left: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1over3 : Css.Style
neg_inset_1over3 =
    Css.batch
        [ Css.property "top" "-33.333333%"
        , Css.property "right" "-33.333333%"
        , Css.property "bottom" "-33.333333%"
        , Css.property "left" "-33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-1\/4 {
    top: -25%;
    right: -25%;
    bottom: -25%;
    left: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_1over4 : Css.Style
neg_inset_1over4 =
    Css.batch
        [ Css.property "top" "-25%"
        , Css.property "right" "-25%"
        , Css.property "bottom" "-25%"
        , Css.property "left" "-25%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2 {
    top: -0.5rem;
    right: -0.5rem;
    bottom: -0.5rem;
    left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2 : Css.Style
neg_inset_2 =
    Css.batch
        [ Css.property "top" "-0.5rem"
        , Css.property "right" "-0.5rem"
        , Css.property "bottom" "-0.5rem"
        , Css.property "left" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-20 {
    top: -5rem;
    right: -5rem;
    bottom: -5rem;
    left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_20 : Css.Style
neg_inset_20 =
    Css.batch
        [ Css.property "top" "-5rem"
        , Css.property "right" "-5rem"
        , Css.property "bottom" "-5rem"
        , Css.property "left" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-24 {
    top: -6rem;
    right: -6rem;
    bottom: -6rem;
    left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_24 : Css.Style
neg_inset_24 =
    Css.batch
        [ Css.property "top" "-6rem"
        , Css.property "right" "-6rem"
        , Css.property "bottom" "-6rem"
        , Css.property "left" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-28 {
    top: -7rem;
    right: -7rem;
    bottom: -7rem;
    left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_28 : Css.Style
neg_inset_28 =
    Css.batch
        [ Css.property "top" "-7rem"
        , Css.property "right" "-7rem"
        , Css.property "bottom" "-7rem"
        , Css.property "left" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2\.5 {
    top: -0.625rem;
    right: -0.625rem;
    bottom: -0.625rem;
    left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2_dot_5 : Css.Style
neg_inset_2_dot_5 =
    Css.batch
        [ Css.property "top" "-0.625rem"
        , Css.property "right" "-0.625rem"
        , Css.property "bottom" "-0.625rem"
        , Css.property "left" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2\/3 {
    top: -66.666667%;
    right: -66.666667%;
    bottom: -66.666667%;
    left: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2over3 : Css.Style
neg_inset_2over3 =
    Css.batch
        [ Css.property "top" "-66.666667%"
        , Css.property "right" "-66.666667%"
        , Css.property "bottom" "-66.666667%"
        , Css.property "left" "-66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-2\/4 {
    top: -50%;
    right: -50%;
    bottom: -50%;
    left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_2over4 : Css.Style
neg_inset_2over4 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "right" "-50%"
        , Css.property "bottom" "-50%"
        , Css.property "left" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-3 {
    top: -0.75rem;
    right: -0.75rem;
    bottom: -0.75rem;
    left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_3 : Css.Style
neg_inset_3 =
    Css.batch
        [ Css.property "top" "-0.75rem"
        , Css.property "right" "-0.75rem"
        , Css.property "bottom" "-0.75rem"
        , Css.property "left" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-32 {
    top: -8rem;
    right: -8rem;
    bottom: -8rem;
    left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_32 : Css.Style
neg_inset_32 =
    Css.batch
        [ Css.property "top" "-8rem"
        , Css.property "right" "-8rem"
        , Css.property "bottom" "-8rem"
        , Css.property "left" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-36 {
    top: -9rem;
    right: -9rem;
    bottom: -9rem;
    left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_36 : Css.Style
neg_inset_36 =
    Css.batch
        [ Css.property "top" "-9rem"
        , Css.property "right" "-9rem"
        , Css.property "bottom" "-9rem"
        , Css.property "left" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-3\.5 {
    top: -0.875rem;
    right: -0.875rem;
    bottom: -0.875rem;
    left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_3_dot_5 : Css.Style
neg_inset_3_dot_5 =
    Css.batch
        [ Css.property "top" "-0.875rem"
        , Css.property "right" "-0.875rem"
        , Css.property "bottom" "-0.875rem"
        , Css.property "left" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-3\/4 {
    top: -75%;
    right: -75%;
    bottom: -75%;
    left: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_3over4 : Css.Style
neg_inset_3over4 =
    Css.batch
        [ Css.property "top" "-75%"
        , Css.property "right" "-75%"
        , Css.property "bottom" "-75%"
        , Css.property "left" "-75%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-4 {
    top: -1rem;
    right: -1rem;
    bottom: -1rem;
    left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_4 : Css.Style
neg_inset_4 =
    Css.batch
        [ Css.property "top" "-1rem"
        , Css.property "right" "-1rem"
        , Css.property "bottom" "-1rem"
        , Css.property "left" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-40 {
    top: -10rem;
    right: -10rem;
    bottom: -10rem;
    left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_40 : Css.Style
neg_inset_40 =
    Css.batch
        [ Css.property "top" "-10rem"
        , Css.property "right" "-10rem"
        , Css.property "bottom" "-10rem"
        , Css.property "left" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-44 {
    top: -11rem;
    right: -11rem;
    bottom: -11rem;
    left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_44 : Css.Style
neg_inset_44 =
    Css.batch
        [ Css.property "top" "-11rem"
        , Css.property "right" "-11rem"
        , Css.property "bottom" "-11rem"
        , Css.property "left" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-48 {
    top: -12rem;
    right: -12rem;
    bottom: -12rem;
    left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_48 : Css.Style
neg_inset_48 =
    Css.batch
        [ Css.property "top" "-12rem"
        , Css.property "right" "-12rem"
        , Css.property "bottom" "-12rem"
        , Css.property "left" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-5 {
    top: -1.25rem;
    right: -1.25rem;
    bottom: -1.25rem;
    left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_5 : Css.Style
neg_inset_5 =
    Css.batch
        [ Css.property "top" "-1.25rem"
        , Css.property "right" "-1.25rem"
        , Css.property "bottom" "-1.25rem"
        , Css.property "left" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-52 {
    top: -13rem;
    right: -13rem;
    bottom: -13rem;
    left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_52 : Css.Style
neg_inset_52 =
    Css.batch
        [ Css.property "top" "-13rem"
        , Css.property "right" "-13rem"
        , Css.property "bottom" "-13rem"
        , Css.property "left" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-56 {
    top: -14rem;
    right: -14rem;
    bottom: -14rem;
    left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_56 : Css.Style
neg_inset_56 =
    Css.batch
        [ Css.property "top" "-14rem"
        , Css.property "right" "-14rem"
        , Css.property "bottom" "-14rem"
        , Css.property "left" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-6 {
    top: -1.5rem;
    right: -1.5rem;
    bottom: -1.5rem;
    left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_6 : Css.Style
neg_inset_6 =
    Css.batch
        [ Css.property "top" "-1.5rem"
        , Css.property "right" "-1.5rem"
        , Css.property "bottom" "-1.5rem"
        , Css.property "left" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-60 {
    top: -15rem;
    right: -15rem;
    bottom: -15rem;
    left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_60 : Css.Style
neg_inset_60 =
    Css.batch
        [ Css.property "top" "-15rem"
        , Css.property "right" "-15rem"
        , Css.property "bottom" "-15rem"
        , Css.property "left" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-64 {
    top: -16rem;
    right: -16rem;
    bottom: -16rem;
    left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_64 : Css.Style
neg_inset_64 =
    Css.batch
        [ Css.property "top" "-16rem"
        , Css.property "right" "-16rem"
        , Css.property "bottom" "-16rem"
        , Css.property "left" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-7 {
    top: -1.75rem;
    right: -1.75rem;
    bottom: -1.75rem;
    left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_7 : Css.Style
neg_inset_7 =
    Css.batch
        [ Css.property "top" "-1.75rem"
        , Css.property "right" "-1.75rem"
        , Css.property "bottom" "-1.75rem"
        , Css.property "left" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-72 {
    top: -18rem;
    right: -18rem;
    bottom: -18rem;
    left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_72 : Css.Style
neg_inset_72 =
    Css.batch
        [ Css.property "top" "-18rem"
        , Css.property "right" "-18rem"
        , Css.property "bottom" "-18rem"
        , Css.property "left" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-8 {
    top: -2rem;
    right: -2rem;
    bottom: -2rem;
    left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_8 : Css.Style
neg_inset_8 =
    Css.batch
        [ Css.property "top" "-2rem"
        , Css.property "right" "-2rem"
        , Css.property "bottom" "-2rem"
        , Css.property "left" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-80 {
    top: -20rem;
    right: -20rem;
    bottom: -20rem;
    left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_80 : Css.Style
neg_inset_80 =
    Css.batch
        [ Css.property "top" "-20rem"
        , Css.property "right" "-20rem"
        , Css.property "bottom" "-20rem"
        , Css.property "left" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-9 {
    top: -2.25rem;
    right: -2.25rem;
    bottom: -2.25rem;
    left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_9 : Css.Style
neg_inset_9 =
    Css.batch
        [ Css.property "top" "-2.25rem"
        , Css.property "right" "-2.25rem"
        , Css.property "bottom" "-2.25rem"
        , Css.property "left" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-96 {
    top: -24rem;
    right: -24rem;
    bottom: -24rem;
    left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_96 : Css.Style
neg_inset_96 =
    Css.batch
        [ Css.property "top" "-24rem"
        , Css.property "right" "-24rem"
        , Css.property "bottom" "-24rem"
        , Css.property "left" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-full {
    top: -100%;
    right: -100%;
    bottom: -100%;
    left: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_full : Css.Style
neg_inset_full =
    Css.batch
        [ Css.property "top" "-100%"
        , Css.property "right" "-100%"
        , Css.property "bottom" "-100%"
        , Css.property "left" "-100%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-px {
    top: -1px;
    right: -1px;
    bottom: -1px;
    left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_px : Css.Style
neg_inset_px =
    Css.batch
        [ Css.property "top" "-1px"
        , Css.property "right" "-1px"
        , Css.property "bottom" "-1px"
        , Css.property "left" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-0 {
    left: -0px;
    right: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_0 : Css.Style
neg_inset_x_0 =
    Css.batch
        [ Css.property "left" "-0px"
        , Css.property "right" "-0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-0\.5 {
    left: -0.125rem;
    right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_0_dot_5 : Css.Style
neg_inset_x_0_dot_5 =
    Css.batch
        [ Css.property "left" "-0.125rem"
        , Css.property "right" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1 {
    left: -0.25rem;
    right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1 : Css.Style
neg_inset_x_1 =
    Css.batch
        [ Css.property "left" "-0.25rem"
        , Css.property "right" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-10 {
    left: -2.5rem;
    right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_10 : Css.Style
neg_inset_x_10 =
    Css.batch
        [ Css.property "left" "-2.5rem"
        , Css.property "right" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-11 {
    left: -2.75rem;
    right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_11 : Css.Style
neg_inset_x_11 =
    Css.batch
        [ Css.property "left" "-2.75rem"
        , Css.property "right" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-12 {
    left: -3rem;
    right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_12 : Css.Style
neg_inset_x_12 =
    Css.batch
        [ Css.property "left" "-3rem"
        , Css.property "right" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-14 {
    left: -3.5rem;
    right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_14 : Css.Style
neg_inset_x_14 =
    Css.batch
        [ Css.property "left" "-3.5rem"
        , Css.property "right" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-16 {
    left: -4rem;
    right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_16 : Css.Style
neg_inset_x_16 =
    Css.batch
        [ Css.property "left" "-4rem"
        , Css.property "right" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\.5 {
    left: -0.375rem;
    right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1_dot_5 : Css.Style
neg_inset_x_1_dot_5 =
    Css.batch
        [ Css.property "left" "-0.375rem"
        , Css.property "right" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\/2 {
    left: -50%;
    right: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1over2 : Css.Style
neg_inset_x_1over2 =
    Css.batch
        [ Css.property "left" "-50%"
        , Css.property "right" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\/3 {
    left: -33.333333%;
    right: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1over3 : Css.Style
neg_inset_x_1over3 =
    Css.batch
        [ Css.property "left" "-33.333333%"
        , Css.property "right" "-33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-1\/4 {
    left: -25%;
    right: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_1over4 : Css.Style
neg_inset_x_1over4 =
    Css.batch
        [ Css.property "left" "-25%"
        , Css.property "right" "-25%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2 {
    left: -0.5rem;
    right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2 : Css.Style
neg_inset_x_2 =
    Css.batch
        [ Css.property "left" "-0.5rem"
        , Css.property "right" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-20 {
    left: -5rem;
    right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_20 : Css.Style
neg_inset_x_20 =
    Css.batch
        [ Css.property "left" "-5rem"
        , Css.property "right" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-24 {
    left: -6rem;
    right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_24 : Css.Style
neg_inset_x_24 =
    Css.batch
        [ Css.property "left" "-6rem"
        , Css.property "right" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-28 {
    left: -7rem;
    right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_28 : Css.Style
neg_inset_x_28 =
    Css.batch
        [ Css.property "left" "-7rem"
        , Css.property "right" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2\.5 {
    left: -0.625rem;
    right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2_dot_5 : Css.Style
neg_inset_x_2_dot_5 =
    Css.batch
        [ Css.property "left" "-0.625rem"
        , Css.property "right" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2\/3 {
    left: -66.666667%;
    right: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2over3 : Css.Style
neg_inset_x_2over3 =
    Css.batch
        [ Css.property "left" "-66.666667%"
        , Css.property "right" "-66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-2\/4 {
    left: -50%;
    right: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_2over4 : Css.Style
neg_inset_x_2over4 =
    Css.batch
        [ Css.property "left" "-50%"
        , Css.property "right" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-3 {
    left: -0.75rem;
    right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_3 : Css.Style
neg_inset_x_3 =
    Css.batch
        [ Css.property "left" "-0.75rem"
        , Css.property "right" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-32 {
    left: -8rem;
    right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_32 : Css.Style
neg_inset_x_32 =
    Css.batch
        [ Css.property "left" "-8rem"
        , Css.property "right" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-36 {
    left: -9rem;
    right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_36 : Css.Style
neg_inset_x_36 =
    Css.batch
        [ Css.property "left" "-9rem"
        , Css.property "right" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-3\.5 {
    left: -0.875rem;
    right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_3_dot_5 : Css.Style
neg_inset_x_3_dot_5 =
    Css.batch
        [ Css.property "left" "-0.875rem"
        , Css.property "right" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-3\/4 {
    left: -75%;
    right: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_3over4 : Css.Style
neg_inset_x_3over4 =
    Css.batch
        [ Css.property "left" "-75%"
        , Css.property "right" "-75%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-4 {
    left: -1rem;
    right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_4 : Css.Style
neg_inset_x_4 =
    Css.batch
        [ Css.property "left" "-1rem"
        , Css.property "right" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-40 {
    left: -10rem;
    right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_40 : Css.Style
neg_inset_x_40 =
    Css.batch
        [ Css.property "left" "-10rem"
        , Css.property "right" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-44 {
    left: -11rem;
    right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_44 : Css.Style
neg_inset_x_44 =
    Css.batch
        [ Css.property "left" "-11rem"
        , Css.property "right" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-48 {
    left: -12rem;
    right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_48 : Css.Style
neg_inset_x_48 =
    Css.batch
        [ Css.property "left" "-12rem"
        , Css.property "right" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-5 {
    left: -1.25rem;
    right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_5 : Css.Style
neg_inset_x_5 =
    Css.batch
        [ Css.property "left" "-1.25rem"
        , Css.property "right" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-52 {
    left: -13rem;
    right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_52 : Css.Style
neg_inset_x_52 =
    Css.batch
        [ Css.property "left" "-13rem"
        , Css.property "right" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-56 {
    left: -14rem;
    right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_56 : Css.Style
neg_inset_x_56 =
    Css.batch
        [ Css.property "left" "-14rem"
        , Css.property "right" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-6 {
    left: -1.5rem;
    right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_6 : Css.Style
neg_inset_x_6 =
    Css.batch
        [ Css.property "left" "-1.5rem"
        , Css.property "right" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-60 {
    left: -15rem;
    right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_60 : Css.Style
neg_inset_x_60 =
    Css.batch
        [ Css.property "left" "-15rem"
        , Css.property "right" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-64 {
    left: -16rem;
    right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_64 : Css.Style
neg_inset_x_64 =
    Css.batch
        [ Css.property "left" "-16rem"
        , Css.property "right" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-7 {
    left: -1.75rem;
    right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_7 : Css.Style
neg_inset_x_7 =
    Css.batch
        [ Css.property "left" "-1.75rem"
        , Css.property "right" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-72 {
    left: -18rem;
    right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_72 : Css.Style
neg_inset_x_72 =
    Css.batch
        [ Css.property "left" "-18rem"
        , Css.property "right" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-8 {
    left: -2rem;
    right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_8 : Css.Style
neg_inset_x_8 =
    Css.batch
        [ Css.property "left" "-2rem"
        , Css.property "right" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-80 {
    left: -20rem;
    right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_80 : Css.Style
neg_inset_x_80 =
    Css.batch
        [ Css.property "left" "-20rem"
        , Css.property "right" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-9 {
    left: -2.25rem;
    right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_9 : Css.Style
neg_inset_x_9 =
    Css.batch
        [ Css.property "left" "-2.25rem"
        , Css.property "right" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-96 {
    left: -24rem;
    right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_96 : Css.Style
neg_inset_x_96 =
    Css.batch
        [ Css.property "left" "-24rem"
        , Css.property "right" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-full {
    left: -100%;
    right: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_full : Css.Style
neg_inset_x_full =
    Css.batch
        [ Css.property "left" "-100%"
        , Css.property "right" "-100%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-x-px {
    left: -1px;
    right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_x_px : Css.Style
neg_inset_x_px =
    Css.batch
        [ Css.property "left" "-1px"
        , Css.property "right" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-0 {
    top: -0px;
    bottom: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_0 : Css.Style
neg_inset_y_0 =
    Css.batch
        [ Css.property "top" "-0px"
        , Css.property "bottom" "-0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-0\.5 {
    top: -0.125rem;
    bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_0_dot_5 : Css.Style
neg_inset_y_0_dot_5 =
    Css.batch
        [ Css.property "top" "-0.125rem"
        , Css.property "bottom" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1 {
    top: -0.25rem;
    bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1 : Css.Style
neg_inset_y_1 =
    Css.batch
        [ Css.property "top" "-0.25rem"
        , Css.property "bottom" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-10 {
    top: -2.5rem;
    bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_10 : Css.Style
neg_inset_y_10 =
    Css.batch
        [ Css.property "top" "-2.5rem"
        , Css.property "bottom" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-11 {
    top: -2.75rem;
    bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_11 : Css.Style
neg_inset_y_11 =
    Css.batch
        [ Css.property "top" "-2.75rem"
        , Css.property "bottom" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-12 {
    top: -3rem;
    bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_12 : Css.Style
neg_inset_y_12 =
    Css.batch
        [ Css.property "top" "-3rem"
        , Css.property "bottom" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-14 {
    top: -3.5rem;
    bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_14 : Css.Style
neg_inset_y_14 =
    Css.batch
        [ Css.property "top" "-3.5rem"
        , Css.property "bottom" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-16 {
    top: -4rem;
    bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_16 : Css.Style
neg_inset_y_16 =
    Css.batch
        [ Css.property "top" "-4rem"
        , Css.property "bottom" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\.5 {
    top: -0.375rem;
    bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1_dot_5 : Css.Style
neg_inset_y_1_dot_5 =
    Css.batch
        [ Css.property "top" "-0.375rem"
        , Css.property "bottom" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\/2 {
    top: -50%;
    bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1over2 : Css.Style
neg_inset_y_1over2 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "bottom" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\/3 {
    top: -33.333333%;
    bottom: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1over3 : Css.Style
neg_inset_y_1over3 =
    Css.batch
        [ Css.property "top" "-33.333333%"
        , Css.property "bottom" "-33.333333%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-1\/4 {
    top: -25%;
    bottom: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_1over4 : Css.Style
neg_inset_y_1over4 =
    Css.batch
        [ Css.property "top" "-25%"
        , Css.property "bottom" "-25%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2 {
    top: -0.5rem;
    bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2 : Css.Style
neg_inset_y_2 =
    Css.batch
        [ Css.property "top" "-0.5rem"
        , Css.property "bottom" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-20 {
    top: -5rem;
    bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_20 : Css.Style
neg_inset_y_20 =
    Css.batch
        [ Css.property "top" "-5rem"
        , Css.property "bottom" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-24 {
    top: -6rem;
    bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_24 : Css.Style
neg_inset_y_24 =
    Css.batch
        [ Css.property "top" "-6rem"
        , Css.property "bottom" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-28 {
    top: -7rem;
    bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_28 : Css.Style
neg_inset_y_28 =
    Css.batch
        [ Css.property "top" "-7rem"
        , Css.property "bottom" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2\.5 {
    top: -0.625rem;
    bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2_dot_5 : Css.Style
neg_inset_y_2_dot_5 =
    Css.batch
        [ Css.property "top" "-0.625rem"
        , Css.property "bottom" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2\/3 {
    top: -66.666667%;
    bottom: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2over3 : Css.Style
neg_inset_y_2over3 =
    Css.batch
        [ Css.property "top" "-66.666667%"
        , Css.property "bottom" "-66.666667%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-2\/4 {
    top: -50%;
    bottom: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_2over4 : Css.Style
neg_inset_y_2over4 =
    Css.batch
        [ Css.property "top" "-50%"
        , Css.property "bottom" "-50%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-3 {
    top: -0.75rem;
    bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_3 : Css.Style
neg_inset_y_3 =
    Css.batch
        [ Css.property "top" "-0.75rem"
        , Css.property "bottom" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-32 {
    top: -8rem;
    bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_32 : Css.Style
neg_inset_y_32 =
    Css.batch
        [ Css.property "top" "-8rem"
        , Css.property "bottom" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-36 {
    top: -9rem;
    bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_36 : Css.Style
neg_inset_y_36 =
    Css.batch
        [ Css.property "top" "-9rem"
        , Css.property "bottom" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-3\.5 {
    top: -0.875rem;
    bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_3_dot_5 : Css.Style
neg_inset_y_3_dot_5 =
    Css.batch
        [ Css.property "top" "-0.875rem"
        , Css.property "bottom" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-3\/4 {
    top: -75%;
    bottom: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_3over4 : Css.Style
neg_inset_y_3over4 =
    Css.batch
        [ Css.property "top" "-75%"
        , Css.property "bottom" "-75%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-4 {
    top: -1rem;
    bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_4 : Css.Style
neg_inset_y_4 =
    Css.batch
        [ Css.property "top" "-1rem"
        , Css.property "bottom" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-40 {
    top: -10rem;
    bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_40 : Css.Style
neg_inset_y_40 =
    Css.batch
        [ Css.property "top" "-10rem"
        , Css.property "bottom" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-44 {
    top: -11rem;
    bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_44 : Css.Style
neg_inset_y_44 =
    Css.batch
        [ Css.property "top" "-11rem"
        , Css.property "bottom" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-48 {
    top: -12rem;
    bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_48 : Css.Style
neg_inset_y_48 =
    Css.batch
        [ Css.property "top" "-12rem"
        , Css.property "bottom" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-5 {
    top: -1.25rem;
    bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_5 : Css.Style
neg_inset_y_5 =
    Css.batch
        [ Css.property "top" "-1.25rem"
        , Css.property "bottom" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-52 {
    top: -13rem;
    bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_52 : Css.Style
neg_inset_y_52 =
    Css.batch
        [ Css.property "top" "-13rem"
        , Css.property "bottom" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-56 {
    top: -14rem;
    bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_56 : Css.Style
neg_inset_y_56 =
    Css.batch
        [ Css.property "top" "-14rem"
        , Css.property "bottom" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-6 {
    top: -1.5rem;
    bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_6 : Css.Style
neg_inset_y_6 =
    Css.batch
        [ Css.property "top" "-1.5rem"
        , Css.property "bottom" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-60 {
    top: -15rem;
    bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_60 : Css.Style
neg_inset_y_60 =
    Css.batch
        [ Css.property "top" "-15rem"
        , Css.property "bottom" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-64 {
    top: -16rem;
    bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_64 : Css.Style
neg_inset_y_64 =
    Css.batch
        [ Css.property "top" "-16rem"
        , Css.property "bottom" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-7 {
    top: -1.75rem;
    bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_7 : Css.Style
neg_inset_y_7 =
    Css.batch
        [ Css.property "top" "-1.75rem"
        , Css.property "bottom" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-72 {
    top: -18rem;
    bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_72 : Css.Style
neg_inset_y_72 =
    Css.batch
        [ Css.property "top" "-18rem"
        , Css.property "bottom" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-8 {
    top: -2rem;
    bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_8 : Css.Style
neg_inset_y_8 =
    Css.batch
        [ Css.property "top" "-2rem"
        , Css.property "bottom" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-80 {
    top: -20rem;
    bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_80 : Css.Style
neg_inset_y_80 =
    Css.batch
        [ Css.property "top" "-20rem"
        , Css.property "bottom" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-9 {
    top: -2.25rem;
    bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_9 : Css.Style
neg_inset_y_9 =
    Css.batch
        [ Css.property "top" "-2.25rem"
        , Css.property "bottom" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-96 {
    top: -24rem;
    bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_96 : Css.Style
neg_inset_y_96 =
    Css.batch
        [ Css.property "top" "-24rem"
        , Css.property "bottom" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-full {
    top: -100%;
    bottom: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_full : Css.Style
neg_inset_y_full =
    Css.batch
        [ Css.property "top" "-100%"
        , Css.property "bottom" "-100%"
        ]


{-| This class has the effect of following css declaration:

```css
.-inset-y-px {
    top: -1px;
    bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_inset_y_px : Css.Style
neg_inset_y_px =
    Css.batch
        [ Css.property "top" "-1px"
        , Css.property "bottom" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-left-0 {
    left: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_0 : Css.Style
neg_left_0 =
    Css.property "left" "-0px"


{-| This class has the effect of following css declaration:

```css
.-left-0\.5 {
    left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_0_dot_5 : Css.Style
neg_left_0_dot_5 =
    Css.property "left" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-left-1 {
    left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1 : Css.Style
neg_left_1 =
    Css.property "left" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-left-10 {
    left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_10 : Css.Style
neg_left_10 =
    Css.property "left" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-11 {
    left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_11 : Css.Style
neg_left_11 =
    Css.property "left" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-left-12 {
    left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_12 : Css.Style
neg_left_12 =
    Css.property "left" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-left-14 {
    left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_14 : Css.Style
neg_left_14 =
    Css.property "left" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-16 {
    left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_16 : Css.Style
neg_left_16 =
    Css.property "left" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-left-1\.5 {
    left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1_dot_5 : Css.Style
neg_left_1_dot_5 =
    Css.property "left" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-left-1\/2 {
    left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1over2 : Css.Style
neg_left_1over2 =
    Css.property "left" "-50%"


{-| This class has the effect of following css declaration:

```css
.-left-1\/3 {
    left: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1over3 : Css.Style
neg_left_1over3 =
    Css.property "left" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-left-1\/4 {
    left: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_1over4 : Css.Style
neg_left_1over4 =
    Css.property "left" "-25%"


{-| This class has the effect of following css declaration:

```css
.-left-2 {
    left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2 : Css.Style
neg_left_2 =
    Css.property "left" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-20 {
    left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_20 : Css.Style
neg_left_20 =
    Css.property "left" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-left-24 {
    left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_24 : Css.Style
neg_left_24 =
    Css.property "left" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-left-28 {
    left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_28 : Css.Style
neg_left_28 =
    Css.property "left" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-left-2\.5 {
    left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2_dot_5 : Css.Style
neg_left_2_dot_5 =
    Css.property "left" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-left-2\/3 {
    left: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2over3 : Css.Style
neg_left_2over3 =
    Css.property "left" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-left-2\/4 {
    left: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_2over4 : Css.Style
neg_left_2over4 =
    Css.property "left" "-50%"


{-| This class has the effect of following css declaration:

```css
.-left-3 {
    left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_3 : Css.Style
neg_left_3 =
    Css.property "left" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-left-32 {
    left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_32 : Css.Style
neg_left_32 =
    Css.property "left" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-left-36 {
    left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_36 : Css.Style
neg_left_36 =
    Css.property "left" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-left-3\.5 {
    left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_3_dot_5 : Css.Style
neg_left_3_dot_5 =
    Css.property "left" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-left-3\/4 {
    left: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_3over4 : Css.Style
neg_left_3over4 =
    Css.property "left" "-75%"


{-| This class has the effect of following css declaration:

```css
.-left-4 {
    left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_4 : Css.Style
neg_left_4 =
    Css.property "left" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-left-40 {
    left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_40 : Css.Style
neg_left_40 =
    Css.property "left" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-left-44 {
    left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_44 : Css.Style
neg_left_44 =
    Css.property "left" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-left-48 {
    left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_48 : Css.Style
neg_left_48 =
    Css.property "left" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-left-5 {
    left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_5 : Css.Style
neg_left_5 =
    Css.property "left" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-left-52 {
    left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_52 : Css.Style
neg_left_52 =
    Css.property "left" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-left-56 {
    left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_56 : Css.Style
neg_left_56 =
    Css.property "left" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-left-6 {
    left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_6 : Css.Style
neg_left_6 =
    Css.property "left" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-left-60 {
    left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_60 : Css.Style
neg_left_60 =
    Css.property "left" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-left-64 {
    left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_64 : Css.Style
neg_left_64 =
    Css.property "left" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-left-7 {
    left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_7 : Css.Style
neg_left_7 =
    Css.property "left" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-left-72 {
    left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_72 : Css.Style
neg_left_72 =
    Css.property "left" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-left-8 {
    left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_8 : Css.Style
neg_left_8 =
    Css.property "left" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-left-80 {
    left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_80 : Css.Style
neg_left_80 =
    Css.property "left" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-left-9 {
    left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_9 : Css.Style
neg_left_9 =
    Css.property "left" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-left-96 {
    left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_96 : Css.Style
neg_left_96 =
    Css.property "left" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-left-full {
    left: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_full : Css.Style
neg_left_full =
    Css.property "left" "-100%"


{-| This class has the effect of following css declaration:

```css
.-left-px {
    left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_left_px : Css.Style
neg_left_px =
    Css.property "left" "-1px"


{-| This class has the effect of following css declaration:

```css
.-m-0 {
    margin: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_0 : Css.Style
neg_m_0 =
    Css.property "margin" "-0px"


{-| This class has the effect of following css declaration:

```css
.-m-0\.5 {
    margin: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_0_dot_5 : Css.Style
neg_m_0_dot_5 =
    Css.property "margin" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-m-1 {
    margin: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_1 : Css.Style
neg_m_1 =
    Css.property "margin" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-m-10 {
    margin: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_10 : Css.Style
neg_m_10 =
    Css.property "margin" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-11 {
    margin: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_11 : Css.Style
neg_m_11 =
    Css.property "margin" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-m-12 {
    margin: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_12 : Css.Style
neg_m_12 =
    Css.property "margin" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-m-14 {
    margin: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_14 : Css.Style
neg_m_14 =
    Css.property "margin" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-16 {
    margin: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_16 : Css.Style
neg_m_16 =
    Css.property "margin" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-m-1\.5 {
    margin: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_1_dot_5 : Css.Style
neg_m_1_dot_5 =
    Css.property "margin" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-m-2 {
    margin: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_2 : Css.Style
neg_m_2 =
    Css.property "margin" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-20 {
    margin: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_20 : Css.Style
neg_m_20 =
    Css.property "margin" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-m-24 {
    margin: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_24 : Css.Style
neg_m_24 =
    Css.property "margin" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-m-28 {
    margin: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_28 : Css.Style
neg_m_28 =
    Css.property "margin" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-m-2\.5 {
    margin: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_2_dot_5 : Css.Style
neg_m_2_dot_5 =
    Css.property "margin" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-m-3 {
    margin: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_3 : Css.Style
neg_m_3 =
    Css.property "margin" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-m-32 {
    margin: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_32 : Css.Style
neg_m_32 =
    Css.property "margin" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-m-36 {
    margin: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_36 : Css.Style
neg_m_36 =
    Css.property "margin" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-m-3\.5 {
    margin: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_3_dot_5 : Css.Style
neg_m_3_dot_5 =
    Css.property "margin" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-m-4 {
    margin: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_4 : Css.Style
neg_m_4 =
    Css.property "margin" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-m-40 {
    margin: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_40 : Css.Style
neg_m_40 =
    Css.property "margin" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-m-44 {
    margin: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_44 : Css.Style
neg_m_44 =
    Css.property "margin" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-m-48 {
    margin: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_48 : Css.Style
neg_m_48 =
    Css.property "margin" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-m-5 {
    margin: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_5 : Css.Style
neg_m_5 =
    Css.property "margin" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-m-52 {
    margin: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_52 : Css.Style
neg_m_52 =
    Css.property "margin" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-m-56 {
    margin: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_56 : Css.Style
neg_m_56 =
    Css.property "margin" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-m-6 {
    margin: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_6 : Css.Style
neg_m_6 =
    Css.property "margin" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-m-60 {
    margin: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_60 : Css.Style
neg_m_60 =
    Css.property "margin" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-m-64 {
    margin: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_64 : Css.Style
neg_m_64 =
    Css.property "margin" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-m-7 {
    margin: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_7 : Css.Style
neg_m_7 =
    Css.property "margin" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-m-72 {
    margin: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_72 : Css.Style
neg_m_72 =
    Css.property "margin" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-m-8 {
    margin: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_8 : Css.Style
neg_m_8 =
    Css.property "margin" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-m-80 {
    margin: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_80 : Css.Style
neg_m_80 =
    Css.property "margin" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-m-9 {
    margin: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_9 : Css.Style
neg_m_9 =
    Css.property "margin" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-m-96 {
    margin: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_96 : Css.Style
neg_m_96 =
    Css.property "margin" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-m-px {
    margin: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_m_px : Css.Style
neg_m_px =
    Css.property "margin" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mb-0 {
    margin-bottom: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_0 : Css.Style
neg_mb_0 =
    Css.property "margin-bottom" "-0px"


{-| This class has the effect of following css declaration:

```css
.-mb-0\.5 {
    margin-bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_0_dot_5 : Css.Style
neg_mb_0_dot_5 =
    Css.property "margin-bottom" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-mb-1 {
    margin-bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_1 : Css.Style
neg_mb_1 =
    Css.property "margin-bottom" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-mb-10 {
    margin-bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_10 : Css.Style
neg_mb_10 =
    Css.property "margin-bottom" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-11 {
    margin-bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_11 : Css.Style
neg_mb_11 =
    Css.property "margin-bottom" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-mb-12 {
    margin-bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_12 : Css.Style
neg_mb_12 =
    Css.property "margin-bottom" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-mb-14 {
    margin-bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_14 : Css.Style
neg_mb_14 =
    Css.property "margin-bottom" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-16 {
    margin-bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_16 : Css.Style
neg_mb_16 =
    Css.property "margin-bottom" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-mb-1\.5 {
    margin-bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_1_dot_5 : Css.Style
neg_mb_1_dot_5 =
    Css.property "margin-bottom" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-mb-2 {
    margin-bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_2 : Css.Style
neg_mb_2 =
    Css.property "margin-bottom" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-20 {
    margin-bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_20 : Css.Style
neg_mb_20 =
    Css.property "margin-bottom" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-24 {
    margin-bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_24 : Css.Style
neg_mb_24 =
    Css.property "margin-bottom" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-mb-28 {
    margin-bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_28 : Css.Style
neg_mb_28 =
    Css.property "margin-bottom" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-mb-2\.5 {
    margin-bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_2_dot_5 : Css.Style
neg_mb_2_dot_5 =
    Css.property "margin-bottom" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-mb-3 {
    margin-bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_3 : Css.Style
neg_mb_3 =
    Css.property "margin-bottom" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-mb-32 {
    margin-bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_32 : Css.Style
neg_mb_32 =
    Css.property "margin-bottom" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-mb-36 {
    margin-bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_36 : Css.Style
neg_mb_36 =
    Css.property "margin-bottom" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-mb-3\.5 {
    margin-bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_3_dot_5 : Css.Style
neg_mb_3_dot_5 =
    Css.property "margin-bottom" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-mb-4 {
    margin-bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_4 : Css.Style
neg_mb_4 =
    Css.property "margin-bottom" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-mb-40 {
    margin-bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_40 : Css.Style
neg_mb_40 =
    Css.property "margin-bottom" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-mb-44 {
    margin-bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_44 : Css.Style
neg_mb_44 =
    Css.property "margin-bottom" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-mb-48 {
    margin-bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_48 : Css.Style
neg_mb_48 =
    Css.property "margin-bottom" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-mb-5 {
    margin-bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_5 : Css.Style
neg_mb_5 =
    Css.property "margin-bottom" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-mb-52 {
    margin-bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_52 : Css.Style
neg_mb_52 =
    Css.property "margin-bottom" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-mb-56 {
    margin-bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_56 : Css.Style
neg_mb_56 =
    Css.property "margin-bottom" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-mb-6 {
    margin-bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_6 : Css.Style
neg_mb_6 =
    Css.property "margin-bottom" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-mb-60 {
    margin-bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_60 : Css.Style
neg_mb_60 =
    Css.property "margin-bottom" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-mb-64 {
    margin-bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_64 : Css.Style
neg_mb_64 =
    Css.property "margin-bottom" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-mb-7 {
    margin-bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_7 : Css.Style
neg_mb_7 =
    Css.property "margin-bottom" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-mb-72 {
    margin-bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_72 : Css.Style
neg_mb_72 =
    Css.property "margin-bottom" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-mb-8 {
    margin-bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_8 : Css.Style
neg_mb_8 =
    Css.property "margin-bottom" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-mb-80 {
    margin-bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_80 : Css.Style
neg_mb_80 =
    Css.property "margin-bottom" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-mb-9 {
    margin-bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_9 : Css.Style
neg_mb_9 =
    Css.property "margin-bottom" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-mb-96 {
    margin-bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_96 : Css.Style
neg_mb_96 =
    Css.property "margin-bottom" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-mb-px {
    margin-bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mb_px : Css.Style
neg_mb_px =
    Css.property "margin-bottom" "-1px"


{-| This class has the effect of following css declaration:

```css
.-ml-0 {
    margin-left: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_0 : Css.Style
neg_ml_0 =
    Css.property "margin-left" "-0px"


{-| This class has the effect of following css declaration:

```css
.-ml-0\.5 {
    margin-left: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_0_dot_5 : Css.Style
neg_ml_0_dot_5 =
    Css.property "margin-left" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-ml-1 {
    margin-left: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_1 : Css.Style
neg_ml_1 =
    Css.property "margin-left" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-ml-10 {
    margin-left: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_10 : Css.Style
neg_ml_10 =
    Css.property "margin-left" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-11 {
    margin-left: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_11 : Css.Style
neg_ml_11 =
    Css.property "margin-left" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-ml-12 {
    margin-left: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_12 : Css.Style
neg_ml_12 =
    Css.property "margin-left" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-ml-14 {
    margin-left: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_14 : Css.Style
neg_ml_14 =
    Css.property "margin-left" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-16 {
    margin-left: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_16 : Css.Style
neg_ml_16 =
    Css.property "margin-left" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-ml-1\.5 {
    margin-left: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_1_dot_5 : Css.Style
neg_ml_1_dot_5 =
    Css.property "margin-left" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-ml-2 {
    margin-left: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_2 : Css.Style
neg_ml_2 =
    Css.property "margin-left" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-20 {
    margin-left: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_20 : Css.Style
neg_ml_20 =
    Css.property "margin-left" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-24 {
    margin-left: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_24 : Css.Style
neg_ml_24 =
    Css.property "margin-left" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-ml-28 {
    margin-left: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_28 : Css.Style
neg_ml_28 =
    Css.property "margin-left" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-ml-2\.5 {
    margin-left: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_2_dot_5 : Css.Style
neg_ml_2_dot_5 =
    Css.property "margin-left" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-ml-3 {
    margin-left: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_3 : Css.Style
neg_ml_3 =
    Css.property "margin-left" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-ml-32 {
    margin-left: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_32 : Css.Style
neg_ml_32 =
    Css.property "margin-left" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-ml-36 {
    margin-left: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_36 : Css.Style
neg_ml_36 =
    Css.property "margin-left" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-ml-3\.5 {
    margin-left: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_3_dot_5 : Css.Style
neg_ml_3_dot_5 =
    Css.property "margin-left" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-ml-4 {
    margin-left: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_4 : Css.Style
neg_ml_4 =
    Css.property "margin-left" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-ml-40 {
    margin-left: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_40 : Css.Style
neg_ml_40 =
    Css.property "margin-left" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-ml-44 {
    margin-left: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_44 : Css.Style
neg_ml_44 =
    Css.property "margin-left" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-ml-48 {
    margin-left: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_48 : Css.Style
neg_ml_48 =
    Css.property "margin-left" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-ml-5 {
    margin-left: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_5 : Css.Style
neg_ml_5 =
    Css.property "margin-left" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-ml-52 {
    margin-left: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_52 : Css.Style
neg_ml_52 =
    Css.property "margin-left" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-ml-56 {
    margin-left: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_56 : Css.Style
neg_ml_56 =
    Css.property "margin-left" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-ml-6 {
    margin-left: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_6 : Css.Style
neg_ml_6 =
    Css.property "margin-left" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-ml-60 {
    margin-left: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_60 : Css.Style
neg_ml_60 =
    Css.property "margin-left" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-ml-64 {
    margin-left: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_64 : Css.Style
neg_ml_64 =
    Css.property "margin-left" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-ml-7 {
    margin-left: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_7 : Css.Style
neg_ml_7 =
    Css.property "margin-left" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-ml-72 {
    margin-left: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_72 : Css.Style
neg_ml_72 =
    Css.property "margin-left" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-ml-8 {
    margin-left: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_8 : Css.Style
neg_ml_8 =
    Css.property "margin-left" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-ml-80 {
    margin-left: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_80 : Css.Style
neg_ml_80 =
    Css.property "margin-left" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-ml-9 {
    margin-left: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_9 : Css.Style
neg_ml_9 =
    Css.property "margin-left" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-ml-96 {
    margin-left: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_96 : Css.Style
neg_ml_96 =
    Css.property "margin-left" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-ml-px {
    margin-left: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_ml_px : Css.Style
neg_ml_px =
    Css.property "margin-left" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mr-0 {
    margin-right: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_0 : Css.Style
neg_mr_0 =
    Css.property "margin-right" "-0px"


{-| This class has the effect of following css declaration:

```css
.-mr-0\.5 {
    margin-right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_0_dot_5 : Css.Style
neg_mr_0_dot_5 =
    Css.property "margin-right" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-mr-1 {
    margin-right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_1 : Css.Style
neg_mr_1 =
    Css.property "margin-right" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-mr-10 {
    margin-right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_10 : Css.Style
neg_mr_10 =
    Css.property "margin-right" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-11 {
    margin-right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_11 : Css.Style
neg_mr_11 =
    Css.property "margin-right" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-mr-12 {
    margin-right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_12 : Css.Style
neg_mr_12 =
    Css.property "margin-right" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-mr-14 {
    margin-right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_14 : Css.Style
neg_mr_14 =
    Css.property "margin-right" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-16 {
    margin-right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_16 : Css.Style
neg_mr_16 =
    Css.property "margin-right" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-mr-1\.5 {
    margin-right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_1_dot_5 : Css.Style
neg_mr_1_dot_5 =
    Css.property "margin-right" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-mr-2 {
    margin-right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_2 : Css.Style
neg_mr_2 =
    Css.property "margin-right" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-20 {
    margin-right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_20 : Css.Style
neg_mr_20 =
    Css.property "margin-right" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-24 {
    margin-right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_24 : Css.Style
neg_mr_24 =
    Css.property "margin-right" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-mr-28 {
    margin-right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_28 : Css.Style
neg_mr_28 =
    Css.property "margin-right" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-mr-2\.5 {
    margin-right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_2_dot_5 : Css.Style
neg_mr_2_dot_5 =
    Css.property "margin-right" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-mr-3 {
    margin-right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_3 : Css.Style
neg_mr_3 =
    Css.property "margin-right" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-mr-32 {
    margin-right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_32 : Css.Style
neg_mr_32 =
    Css.property "margin-right" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-mr-36 {
    margin-right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_36 : Css.Style
neg_mr_36 =
    Css.property "margin-right" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-mr-3\.5 {
    margin-right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_3_dot_5 : Css.Style
neg_mr_3_dot_5 =
    Css.property "margin-right" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-mr-4 {
    margin-right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_4 : Css.Style
neg_mr_4 =
    Css.property "margin-right" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-mr-40 {
    margin-right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_40 : Css.Style
neg_mr_40 =
    Css.property "margin-right" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-mr-44 {
    margin-right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_44 : Css.Style
neg_mr_44 =
    Css.property "margin-right" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-mr-48 {
    margin-right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_48 : Css.Style
neg_mr_48 =
    Css.property "margin-right" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-mr-5 {
    margin-right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_5 : Css.Style
neg_mr_5 =
    Css.property "margin-right" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-mr-52 {
    margin-right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_52 : Css.Style
neg_mr_52 =
    Css.property "margin-right" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-mr-56 {
    margin-right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_56 : Css.Style
neg_mr_56 =
    Css.property "margin-right" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-mr-6 {
    margin-right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_6 : Css.Style
neg_mr_6 =
    Css.property "margin-right" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-mr-60 {
    margin-right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_60 : Css.Style
neg_mr_60 =
    Css.property "margin-right" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-mr-64 {
    margin-right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_64 : Css.Style
neg_mr_64 =
    Css.property "margin-right" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-mr-7 {
    margin-right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_7 : Css.Style
neg_mr_7 =
    Css.property "margin-right" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-mr-72 {
    margin-right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_72 : Css.Style
neg_mr_72 =
    Css.property "margin-right" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-mr-8 {
    margin-right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_8 : Css.Style
neg_mr_8 =
    Css.property "margin-right" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-mr-80 {
    margin-right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_80 : Css.Style
neg_mr_80 =
    Css.property "margin-right" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-mr-9 {
    margin-right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_9 : Css.Style
neg_mr_9 =
    Css.property "margin-right" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-mr-96 {
    margin-right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_96 : Css.Style
neg_mr_96 =
    Css.property "margin-right" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-mr-px {
    margin-right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mr_px : Css.Style
neg_mr_px =
    Css.property "margin-right" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mt-0 {
    margin-top: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_0 : Css.Style
neg_mt_0 =
    Css.property "margin-top" "-0px"


{-| This class has the effect of following css declaration:

```css
.-mt-0\.5 {
    margin-top: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_0_dot_5 : Css.Style
neg_mt_0_dot_5 =
    Css.property "margin-top" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-mt-1 {
    margin-top: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_1 : Css.Style
neg_mt_1 =
    Css.property "margin-top" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-mt-10 {
    margin-top: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_10 : Css.Style
neg_mt_10 =
    Css.property "margin-top" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-11 {
    margin-top: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_11 : Css.Style
neg_mt_11 =
    Css.property "margin-top" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-mt-12 {
    margin-top: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_12 : Css.Style
neg_mt_12 =
    Css.property "margin-top" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-mt-14 {
    margin-top: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_14 : Css.Style
neg_mt_14 =
    Css.property "margin-top" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-16 {
    margin-top: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_16 : Css.Style
neg_mt_16 =
    Css.property "margin-top" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-mt-1\.5 {
    margin-top: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_1_dot_5 : Css.Style
neg_mt_1_dot_5 =
    Css.property "margin-top" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-mt-2 {
    margin-top: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_2 : Css.Style
neg_mt_2 =
    Css.property "margin-top" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-20 {
    margin-top: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_20 : Css.Style
neg_mt_20 =
    Css.property "margin-top" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-24 {
    margin-top: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_24 : Css.Style
neg_mt_24 =
    Css.property "margin-top" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-mt-28 {
    margin-top: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_28 : Css.Style
neg_mt_28 =
    Css.property "margin-top" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-mt-2\.5 {
    margin-top: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_2_dot_5 : Css.Style
neg_mt_2_dot_5 =
    Css.property "margin-top" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-mt-3 {
    margin-top: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_3 : Css.Style
neg_mt_3 =
    Css.property "margin-top" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-mt-32 {
    margin-top: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_32 : Css.Style
neg_mt_32 =
    Css.property "margin-top" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-mt-36 {
    margin-top: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_36 : Css.Style
neg_mt_36 =
    Css.property "margin-top" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-mt-3\.5 {
    margin-top: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_3_dot_5 : Css.Style
neg_mt_3_dot_5 =
    Css.property "margin-top" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-mt-4 {
    margin-top: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_4 : Css.Style
neg_mt_4 =
    Css.property "margin-top" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-mt-40 {
    margin-top: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_40 : Css.Style
neg_mt_40 =
    Css.property "margin-top" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-mt-44 {
    margin-top: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_44 : Css.Style
neg_mt_44 =
    Css.property "margin-top" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-mt-48 {
    margin-top: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_48 : Css.Style
neg_mt_48 =
    Css.property "margin-top" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-mt-5 {
    margin-top: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_5 : Css.Style
neg_mt_5 =
    Css.property "margin-top" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-mt-52 {
    margin-top: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_52 : Css.Style
neg_mt_52 =
    Css.property "margin-top" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-mt-56 {
    margin-top: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_56 : Css.Style
neg_mt_56 =
    Css.property "margin-top" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-mt-6 {
    margin-top: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_6 : Css.Style
neg_mt_6 =
    Css.property "margin-top" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-mt-60 {
    margin-top: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_60 : Css.Style
neg_mt_60 =
    Css.property "margin-top" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-mt-64 {
    margin-top: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_64 : Css.Style
neg_mt_64 =
    Css.property "margin-top" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-mt-7 {
    margin-top: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_7 : Css.Style
neg_mt_7 =
    Css.property "margin-top" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-mt-72 {
    margin-top: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_72 : Css.Style
neg_mt_72 =
    Css.property "margin-top" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-mt-8 {
    margin-top: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_8 : Css.Style
neg_mt_8 =
    Css.property "margin-top" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-mt-80 {
    margin-top: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_80 : Css.Style
neg_mt_80 =
    Css.property "margin-top" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-mt-9 {
    margin-top: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_9 : Css.Style
neg_mt_9 =
    Css.property "margin-top" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-mt-96 {
    margin-top: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_96 : Css.Style
neg_mt_96 =
    Css.property "margin-top" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-mt-px {
    margin-top: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mt_px : Css.Style
neg_mt_px =
    Css.property "margin-top" "-1px"


{-| This class has the effect of following css declaration:

```css
.-mx-0 {
    margin-left: -0px;
    margin-right: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_0 : Css.Style
neg_mx_0 =
    Css.batch
        [ Css.property "margin-left" "-0px"
        , Css.property "margin-right" "-0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-0\.5 {
    margin-left: -0.125rem;
    margin-right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_0_dot_5 : Css.Style
neg_mx_0_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.125rem"
        , Css.property "margin-right" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-1 {
    margin-left: -0.25rem;
    margin-right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_1 : Css.Style
neg_mx_1 =
    Css.batch
        [ Css.property "margin-left" "-0.25rem"
        , Css.property "margin-right" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-10 {
    margin-left: -2.5rem;
    margin-right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_10 : Css.Style
neg_mx_10 =
    Css.batch
        [ Css.property "margin-left" "-2.5rem"
        , Css.property "margin-right" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-11 {
    margin-left: -2.75rem;
    margin-right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_11 : Css.Style
neg_mx_11 =
    Css.batch
        [ Css.property "margin-left" "-2.75rem"
        , Css.property "margin-right" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-12 {
    margin-left: -3rem;
    margin-right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_12 : Css.Style
neg_mx_12 =
    Css.batch
        [ Css.property "margin-left" "-3rem"
        , Css.property "margin-right" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-14 {
    margin-left: -3.5rem;
    margin-right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_14 : Css.Style
neg_mx_14 =
    Css.batch
        [ Css.property "margin-left" "-3.5rem"
        , Css.property "margin-right" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-16 {
    margin-left: -4rem;
    margin-right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_16 : Css.Style
neg_mx_16 =
    Css.batch
        [ Css.property "margin-left" "-4rem"
        , Css.property "margin-right" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-1\.5 {
    margin-left: -0.375rem;
    margin-right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_1_dot_5 : Css.Style
neg_mx_1_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.375rem"
        , Css.property "margin-right" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-2 {
    margin-left: -0.5rem;
    margin-right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_2 : Css.Style
neg_mx_2 =
    Css.batch
        [ Css.property "margin-left" "-0.5rem"
        , Css.property "margin-right" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-20 {
    margin-left: -5rem;
    margin-right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_20 : Css.Style
neg_mx_20 =
    Css.batch
        [ Css.property "margin-left" "-5rem"
        , Css.property "margin-right" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-24 {
    margin-left: -6rem;
    margin-right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_24 : Css.Style
neg_mx_24 =
    Css.batch
        [ Css.property "margin-left" "-6rem"
        , Css.property "margin-right" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-28 {
    margin-left: -7rem;
    margin-right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_28 : Css.Style
neg_mx_28 =
    Css.batch
        [ Css.property "margin-left" "-7rem"
        , Css.property "margin-right" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-2\.5 {
    margin-left: -0.625rem;
    margin-right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_2_dot_5 : Css.Style
neg_mx_2_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.625rem"
        , Css.property "margin-right" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-3 {
    margin-left: -0.75rem;
    margin-right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_3 : Css.Style
neg_mx_3 =
    Css.batch
        [ Css.property "margin-left" "-0.75rem"
        , Css.property "margin-right" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-32 {
    margin-left: -8rem;
    margin-right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_32 : Css.Style
neg_mx_32 =
    Css.batch
        [ Css.property "margin-left" "-8rem"
        , Css.property "margin-right" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-36 {
    margin-left: -9rem;
    margin-right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_36 : Css.Style
neg_mx_36 =
    Css.batch
        [ Css.property "margin-left" "-9rem"
        , Css.property "margin-right" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-3\.5 {
    margin-left: -0.875rem;
    margin-right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_3_dot_5 : Css.Style
neg_mx_3_dot_5 =
    Css.batch
        [ Css.property "margin-left" "-0.875rem"
        , Css.property "margin-right" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-4 {
    margin-left: -1rem;
    margin-right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_4 : Css.Style
neg_mx_4 =
    Css.batch
        [ Css.property "margin-left" "-1rem"
        , Css.property "margin-right" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-40 {
    margin-left: -10rem;
    margin-right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_40 : Css.Style
neg_mx_40 =
    Css.batch
        [ Css.property "margin-left" "-10rem"
        , Css.property "margin-right" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-44 {
    margin-left: -11rem;
    margin-right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_44 : Css.Style
neg_mx_44 =
    Css.batch
        [ Css.property "margin-left" "-11rem"
        , Css.property "margin-right" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-48 {
    margin-left: -12rem;
    margin-right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_48 : Css.Style
neg_mx_48 =
    Css.batch
        [ Css.property "margin-left" "-12rem"
        , Css.property "margin-right" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-5 {
    margin-left: -1.25rem;
    margin-right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_5 : Css.Style
neg_mx_5 =
    Css.batch
        [ Css.property "margin-left" "-1.25rem"
        , Css.property "margin-right" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-52 {
    margin-left: -13rem;
    margin-right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_52 : Css.Style
neg_mx_52 =
    Css.batch
        [ Css.property "margin-left" "-13rem"
        , Css.property "margin-right" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-56 {
    margin-left: -14rem;
    margin-right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_56 : Css.Style
neg_mx_56 =
    Css.batch
        [ Css.property "margin-left" "-14rem"
        , Css.property "margin-right" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-6 {
    margin-left: -1.5rem;
    margin-right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_6 : Css.Style
neg_mx_6 =
    Css.batch
        [ Css.property "margin-left" "-1.5rem"
        , Css.property "margin-right" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-60 {
    margin-left: -15rem;
    margin-right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_60 : Css.Style
neg_mx_60 =
    Css.batch
        [ Css.property "margin-left" "-15rem"
        , Css.property "margin-right" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-64 {
    margin-left: -16rem;
    margin-right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_64 : Css.Style
neg_mx_64 =
    Css.batch
        [ Css.property "margin-left" "-16rem"
        , Css.property "margin-right" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-7 {
    margin-left: -1.75rem;
    margin-right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_7 : Css.Style
neg_mx_7 =
    Css.batch
        [ Css.property "margin-left" "-1.75rem"
        , Css.property "margin-right" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-72 {
    margin-left: -18rem;
    margin-right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_72 : Css.Style
neg_mx_72 =
    Css.batch
        [ Css.property "margin-left" "-18rem"
        , Css.property "margin-right" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-8 {
    margin-left: -2rem;
    margin-right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_8 : Css.Style
neg_mx_8 =
    Css.batch
        [ Css.property "margin-left" "-2rem"
        , Css.property "margin-right" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-80 {
    margin-left: -20rem;
    margin-right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_80 : Css.Style
neg_mx_80 =
    Css.batch
        [ Css.property "margin-left" "-20rem"
        , Css.property "margin-right" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-9 {
    margin-left: -2.25rem;
    margin-right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_9 : Css.Style
neg_mx_9 =
    Css.batch
        [ Css.property "margin-left" "-2.25rem"
        , Css.property "margin-right" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-96 {
    margin-left: -24rem;
    margin-right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_96 : Css.Style
neg_mx_96 =
    Css.batch
        [ Css.property "margin-left" "-24rem"
        , Css.property "margin-right" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-mx-px {
    margin-left: -1px;
    margin-right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_mx_px : Css.Style
neg_mx_px =
    Css.batch
        [ Css.property "margin-left" "-1px"
        , Css.property "margin-right" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-0 {
    margin-top: -0px;
    margin-bottom: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_0 : Css.Style
neg_my_0 =
    Css.batch
        [ Css.property "margin-top" "-0px"
        , Css.property "margin-bottom" "-0px"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-0\.5 {
    margin-top: -0.125rem;
    margin-bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_0_dot_5 : Css.Style
neg_my_0_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.125rem"
        , Css.property "margin-bottom" "-0.125rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-1 {
    margin-top: -0.25rem;
    margin-bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_1 : Css.Style
neg_my_1 =
    Css.batch
        [ Css.property "margin-top" "-0.25rem"
        , Css.property "margin-bottom" "-0.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-10 {
    margin-top: -2.5rem;
    margin-bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_10 : Css.Style
neg_my_10 =
    Css.batch
        [ Css.property "margin-top" "-2.5rem"
        , Css.property "margin-bottom" "-2.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-11 {
    margin-top: -2.75rem;
    margin-bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_11 : Css.Style
neg_my_11 =
    Css.batch
        [ Css.property "margin-top" "-2.75rem"
        , Css.property "margin-bottom" "-2.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-12 {
    margin-top: -3rem;
    margin-bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_12 : Css.Style
neg_my_12 =
    Css.batch
        [ Css.property "margin-top" "-3rem"
        , Css.property "margin-bottom" "-3rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-14 {
    margin-top: -3.5rem;
    margin-bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_14 : Css.Style
neg_my_14 =
    Css.batch
        [ Css.property "margin-top" "-3.5rem"
        , Css.property "margin-bottom" "-3.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-16 {
    margin-top: -4rem;
    margin-bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_16 : Css.Style
neg_my_16 =
    Css.batch
        [ Css.property "margin-top" "-4rem"
        , Css.property "margin-bottom" "-4rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-1\.5 {
    margin-top: -0.375rem;
    margin-bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_1_dot_5 : Css.Style
neg_my_1_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.375rem"
        , Css.property "margin-bottom" "-0.375rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-2 {
    margin-top: -0.5rem;
    margin-bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_2 : Css.Style
neg_my_2 =
    Css.batch
        [ Css.property "margin-top" "-0.5rem"
        , Css.property "margin-bottom" "-0.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-20 {
    margin-top: -5rem;
    margin-bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_20 : Css.Style
neg_my_20 =
    Css.batch
        [ Css.property "margin-top" "-5rem"
        , Css.property "margin-bottom" "-5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-24 {
    margin-top: -6rem;
    margin-bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_24 : Css.Style
neg_my_24 =
    Css.batch
        [ Css.property "margin-top" "-6rem"
        , Css.property "margin-bottom" "-6rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-28 {
    margin-top: -7rem;
    margin-bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_28 : Css.Style
neg_my_28 =
    Css.batch
        [ Css.property "margin-top" "-7rem"
        , Css.property "margin-bottom" "-7rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-2\.5 {
    margin-top: -0.625rem;
    margin-bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_2_dot_5 : Css.Style
neg_my_2_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.625rem"
        , Css.property "margin-bottom" "-0.625rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-3 {
    margin-top: -0.75rem;
    margin-bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_3 : Css.Style
neg_my_3 =
    Css.batch
        [ Css.property "margin-top" "-0.75rem"
        , Css.property "margin-bottom" "-0.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-32 {
    margin-top: -8rem;
    margin-bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_32 : Css.Style
neg_my_32 =
    Css.batch
        [ Css.property "margin-top" "-8rem"
        , Css.property "margin-bottom" "-8rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-36 {
    margin-top: -9rem;
    margin-bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_36 : Css.Style
neg_my_36 =
    Css.batch
        [ Css.property "margin-top" "-9rem"
        , Css.property "margin-bottom" "-9rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-3\.5 {
    margin-top: -0.875rem;
    margin-bottom: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_3_dot_5 : Css.Style
neg_my_3_dot_5 =
    Css.batch
        [ Css.property "margin-top" "-0.875rem"
        , Css.property "margin-bottom" "-0.875rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-4 {
    margin-top: -1rem;
    margin-bottom: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_4 : Css.Style
neg_my_4 =
    Css.batch
        [ Css.property "margin-top" "-1rem"
        , Css.property "margin-bottom" "-1rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-40 {
    margin-top: -10rem;
    margin-bottom: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_40 : Css.Style
neg_my_40 =
    Css.batch
        [ Css.property "margin-top" "-10rem"
        , Css.property "margin-bottom" "-10rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-44 {
    margin-top: -11rem;
    margin-bottom: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_44 : Css.Style
neg_my_44 =
    Css.batch
        [ Css.property "margin-top" "-11rem"
        , Css.property "margin-bottom" "-11rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-48 {
    margin-top: -12rem;
    margin-bottom: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_48 : Css.Style
neg_my_48 =
    Css.batch
        [ Css.property "margin-top" "-12rem"
        , Css.property "margin-bottom" "-12rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-5 {
    margin-top: -1.25rem;
    margin-bottom: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_5 : Css.Style
neg_my_5 =
    Css.batch
        [ Css.property "margin-top" "-1.25rem"
        , Css.property "margin-bottom" "-1.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-52 {
    margin-top: -13rem;
    margin-bottom: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_52 : Css.Style
neg_my_52 =
    Css.batch
        [ Css.property "margin-top" "-13rem"
        , Css.property "margin-bottom" "-13rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-56 {
    margin-top: -14rem;
    margin-bottom: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_56 : Css.Style
neg_my_56 =
    Css.batch
        [ Css.property "margin-top" "-14rem"
        , Css.property "margin-bottom" "-14rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-6 {
    margin-top: -1.5rem;
    margin-bottom: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_6 : Css.Style
neg_my_6 =
    Css.batch
        [ Css.property "margin-top" "-1.5rem"
        , Css.property "margin-bottom" "-1.5rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-60 {
    margin-top: -15rem;
    margin-bottom: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_60 : Css.Style
neg_my_60 =
    Css.batch
        [ Css.property "margin-top" "-15rem"
        , Css.property "margin-bottom" "-15rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-64 {
    margin-top: -16rem;
    margin-bottom: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_64 : Css.Style
neg_my_64 =
    Css.batch
        [ Css.property "margin-top" "-16rem"
        , Css.property "margin-bottom" "-16rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-7 {
    margin-top: -1.75rem;
    margin-bottom: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_7 : Css.Style
neg_my_7 =
    Css.batch
        [ Css.property "margin-top" "-1.75rem"
        , Css.property "margin-bottom" "-1.75rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-72 {
    margin-top: -18rem;
    margin-bottom: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_72 : Css.Style
neg_my_72 =
    Css.batch
        [ Css.property "margin-top" "-18rem"
        , Css.property "margin-bottom" "-18rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-8 {
    margin-top: -2rem;
    margin-bottom: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_8 : Css.Style
neg_my_8 =
    Css.batch
        [ Css.property "margin-top" "-2rem"
        , Css.property "margin-bottom" "-2rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-80 {
    margin-top: -20rem;
    margin-bottom: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_80 : Css.Style
neg_my_80 =
    Css.batch
        [ Css.property "margin-top" "-20rem"
        , Css.property "margin-bottom" "-20rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-9 {
    margin-top: -2.25rem;
    margin-bottom: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_9 : Css.Style
neg_my_9 =
    Css.batch
        [ Css.property "margin-top" "-2.25rem"
        , Css.property "margin-bottom" "-2.25rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-96 {
    margin-top: -24rem;
    margin-bottom: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_96 : Css.Style
neg_my_96 =
    Css.batch
        [ Css.property "margin-top" "-24rem"
        , Css.property "margin-bottom" "-24rem"
        ]


{-| This class has the effect of following css declaration:

```css
.-my-px {
    margin-top: -1px;
    margin-bottom: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_my_px : Css.Style
neg_my_px =
    Css.batch
        [ Css.property "margin-top" "-1px"
        , Css.property "margin-bottom" "-1px"
        ]


{-| This class has the effect of following css declaration:

```css
.-order-1 {
    order: -1
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_1 : Css.Style
neg_order_1 =
    Css.property "order" "-1"


{-| This class has the effect of following css declaration:

```css
.-order-10 {
    order: -10
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_10 : Css.Style
neg_order_10 =
    Css.property "order" "-10"


{-| This class has the effect of following css declaration:

```css
.-order-11 {
    order: -11
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_11 : Css.Style
neg_order_11 =
    Css.property "order" "-11"


{-| This class has the effect of following css declaration:

```css
.-order-12 {
    order: -12
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_12 : Css.Style
neg_order_12 =
    Css.property "order" "-12"


{-| This class has the effect of following css declaration:

```css
.-order-2 {
    order: -2
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_2 : Css.Style
neg_order_2 =
    Css.property "order" "-2"


{-| This class has the effect of following css declaration:

```css
.-order-3 {
    order: -3
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_3 : Css.Style
neg_order_3 =
    Css.property "order" "-3"


{-| This class has the effect of following css declaration:

```css
.-order-4 {
    order: -4
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_4 : Css.Style
neg_order_4 =
    Css.property "order" "-4"


{-| This class has the effect of following css declaration:

```css
.-order-5 {
    order: -5
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_5 : Css.Style
neg_order_5 =
    Css.property "order" "-5"


{-| This class has the effect of following css declaration:

```css
.-order-6 {
    order: -6
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_6 : Css.Style
neg_order_6 =
    Css.property "order" "-6"


{-| This class has the effect of following css declaration:

```css
.-order-7 {
    order: -7
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_7 : Css.Style
neg_order_7 =
    Css.property "order" "-7"


{-| This class has the effect of following css declaration:

```css
.-order-8 {
    order: -8
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_8 : Css.Style
neg_order_8 =
    Css.property "order" "-8"


{-| This class has the effect of following css declaration:

```css
.-order-9 {
    order: -9
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_9 : Css.Style
neg_order_9 =
    Css.property "order" "-9"


{-| This class has the effect of following css declaration:

```css
.-order-first {
    order: 9999
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_first : Css.Style
neg_order_first =
    Css.property "order" "9999"


{-| This class has the effect of following css declaration:

```css
.-order-last {
    order: -9999
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_last : Css.Style
neg_order_last =
    Css.property "order" "-9999"


{-| This class has the effect of following css declaration:

```css
.-order-none {
    order: 0
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_order_none : Css.Style
neg_order_none =
    Css.property "order" "0"


{-| This class has the effect of following css declaration:

```css
.-right-0 {
    right: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_0 : Css.Style
neg_right_0 =
    Css.property "right" "-0px"


{-| This class has the effect of following css declaration:

```css
.-right-0\.5 {
    right: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_0_dot_5 : Css.Style
neg_right_0_dot_5 =
    Css.property "right" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-right-1 {
    right: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1 : Css.Style
neg_right_1 =
    Css.property "right" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-right-10 {
    right: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_10 : Css.Style
neg_right_10 =
    Css.property "right" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-11 {
    right: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_11 : Css.Style
neg_right_11 =
    Css.property "right" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-right-12 {
    right: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_12 : Css.Style
neg_right_12 =
    Css.property "right" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-right-14 {
    right: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_14 : Css.Style
neg_right_14 =
    Css.property "right" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-16 {
    right: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_16 : Css.Style
neg_right_16 =
    Css.property "right" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-right-1\.5 {
    right: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1_dot_5 : Css.Style
neg_right_1_dot_5 =
    Css.property "right" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-right-1\/2 {
    right: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1over2 : Css.Style
neg_right_1over2 =
    Css.property "right" "-50%"


{-| This class has the effect of following css declaration:

```css
.-right-1\/3 {
    right: -33.333333%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1over3 : Css.Style
neg_right_1over3 =
    Css.property "right" "-33.333333%"


{-| This class has the effect of following css declaration:

```css
.-right-1\/4 {
    right: -25%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_1over4 : Css.Style
neg_right_1over4 =
    Css.property "right" "-25%"


{-| This class has the effect of following css declaration:

```css
.-right-2 {
    right: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2 : Css.Style
neg_right_2 =
    Css.property "right" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-20 {
    right: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_20 : Css.Style
neg_right_20 =
    Css.property "right" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-right-24 {
    right: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_24 : Css.Style
neg_right_24 =
    Css.property "right" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-right-28 {
    right: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_28 : Css.Style
neg_right_28 =
    Css.property "right" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-right-2\.5 {
    right: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2_dot_5 : Css.Style
neg_right_2_dot_5 =
    Css.property "right" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-right-2\/3 {
    right: -66.666667%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2over3 : Css.Style
neg_right_2over3 =
    Css.property "right" "-66.666667%"


{-| This class has the effect of following css declaration:

```css
.-right-2\/4 {
    right: -50%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_2over4 : Css.Style
neg_right_2over4 =
    Css.property "right" "-50%"


{-| This class has the effect of following css declaration:

```css
.-right-3 {
    right: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_3 : Css.Style
neg_right_3 =
    Css.property "right" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-right-32 {
    right: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_32 : Css.Style
neg_right_32 =
    Css.property "right" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-right-36 {
    right: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_36 : Css.Style
neg_right_36 =
    Css.property "right" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-right-3\.5 {
    right: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_3_dot_5 : Css.Style
neg_right_3_dot_5 =
    Css.property "right" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-right-3\/4 {
    right: -75%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_3over4 : Css.Style
neg_right_3over4 =
    Css.property "right" "-75%"


{-| This class has the effect of following css declaration:

```css
.-right-4 {
    right: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_4 : Css.Style
neg_right_4 =
    Css.property "right" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-right-40 {
    right: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_40 : Css.Style
neg_right_40 =
    Css.property "right" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-right-44 {
    right: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_44 : Css.Style
neg_right_44 =
    Css.property "right" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-right-48 {
    right: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_48 : Css.Style
neg_right_48 =
    Css.property "right" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-right-5 {
    right: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_5 : Css.Style
neg_right_5 =
    Css.property "right" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-right-52 {
    right: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_52 : Css.Style
neg_right_52 =
    Css.property "right" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-right-56 {
    right: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_56 : Css.Style
neg_right_56 =
    Css.property "right" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-right-6 {
    right: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_6 : Css.Style
neg_right_6 =
    Css.property "right" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-right-60 {
    right: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_60 : Css.Style
neg_right_60 =
    Css.property "right" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-right-64 {
    right: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_64 : Css.Style
neg_right_64 =
    Css.property "right" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-right-7 {
    right: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_7 : Css.Style
neg_right_7 =
    Css.property "right" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-right-72 {
    right: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_72 : Css.Style
neg_right_72 =
    Css.property "right" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-right-8 {
    right: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_8 : Css.Style
neg_right_8 =
    Css.property "right" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-right-80 {
    right: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_80 : Css.Style
neg_right_80 =
    Css.property "right" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-right-9 {
    right: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_9 : Css.Style
neg_right_9 =
    Css.property "right" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-right-96 {
    right: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_96 : Css.Style
neg_right_96 =
    Css.property "right" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-right-full {
    right: -100%
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_full : Css.Style
neg_right_full =
    Css.property "right" "-100%"


{-| This class has the effect of following css declaration:

```css
.-right-px {
    right: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_right_px : Css.Style
neg_right_px =
    Css.property "right" "-1px"


{-| This class has the effect of following css declaration:

```css
.-rotate-0 {
    --tw-rotate: -0deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_0 : Css.Style
neg_rotate_0 =
    Css.batch
        [ Css.property "--tw-rotate" "-0deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-1 {
    --tw-rotate: -1deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_1 : Css.Style
neg_rotate_1 =
    Css.batch
        [ Css.property "--tw-rotate" "-1deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-12 {
    --tw-rotate: -12deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_12 : Css.Style
neg_rotate_12 =
    Css.batch
        [ Css.property "--tw-rotate" "-12deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-180 {
    --tw-rotate: -180deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_180 : Css.Style
neg_rotate_180 =
    Css.batch
        [ Css.property "--tw-rotate" "-180deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-2 {
    --tw-rotate: -2deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_2 : Css.Style
neg_rotate_2 =
    Css.batch
        [ Css.property "--tw-rotate" "-2deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-3 {
    --tw-rotate: -3deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_3 : Css.Style
neg_rotate_3 =
    Css.batch
        [ Css.property "--tw-rotate" "-3deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-45 {
    --tw-rotate: -45deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_45 : Css.Style
neg_rotate_45 =
    Css.batch
        [ Css.property "--tw-rotate" "-45deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-6 {
    --tw-rotate: -6deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_6 : Css.Style
neg_rotate_6 =
    Css.batch
        [ Css.property "--tw-rotate" "-6deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-rotate-90 {
    --tw-rotate: -90deg;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_rotate_90 : Css.Style
neg_rotate_90 =
    Css.batch
        [ Css.property "--tw-rotate" "-90deg"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-0 {
    --tw-scale-x: 0;
    --tw-scale-y: 0;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_0 : Css.Style
neg_scale_0 =
    Css.batch
        [ Css.property "--tw-scale-x" "0"
        , Css.property "--tw-scale-y" "0"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-100 {
    --tw-scale-x: -1;
    --tw-scale-y: -1;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_100 : Css.Style
neg_scale_100 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1"
        , Css.property "--tw-scale-y" "-1"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-105 {
    --tw-scale-x: -1.05;
    --tw-scale-y: -1.05;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_105 : Css.Style
neg_scale_105 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.05"
        , Css.property "--tw-scale-y" "-1.05"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-110 {
    --tw-scale-x: -1.1;
    --tw-scale-y: -1.1;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_110 : Css.Style
neg_scale_110 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.1"
        , Css.property "--tw-scale-y" "-1.1"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-125 {
    --tw-scale-x: -1.25;
    --tw-scale-y: -1.25;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_125 : Css.Style
neg_scale_125 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.25"
        , Css.property "--tw-scale-y" "-1.25"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-150 {
    --tw-scale-x: -1.5;
    --tw-scale-y: -1.5;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_150 : Css.Style
neg_scale_150 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.5"
        , Css.property "--tw-scale-y" "-1.5"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-50 {
    --tw-scale-x: -.5;
    --tw-scale-y: -.5;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_50 : Css.Style
neg_scale_50 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.5"
        , Css.property "--tw-scale-y" "-.5"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-75 {
    --tw-scale-x: -.75;
    --tw-scale-y: -.75;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_75 : Css.Style
neg_scale_75 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.75"
        , Css.property "--tw-scale-y" "-.75"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-90 {
    --tw-scale-x: -.9;
    --tw-scale-y: -.9;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_90 : Css.Style
neg_scale_90 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.9"
        , Css.property "--tw-scale-y" "-.9"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-95 {
    --tw-scale-x: -.95;
    --tw-scale-y: -.95;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_95 : Css.Style
neg_scale_95 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.95"
        , Css.property "--tw-scale-y" "-.95"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-0 {
    --tw-scale-x: 0;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_0 : Css.Style
neg_scale_x_0 =
    Css.batch
        [ Css.property "--tw-scale-x" "0"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-100 {
    --tw-scale-x: -1;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_100 : Css.Style
neg_scale_x_100 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-105 {
    --tw-scale-x: -1.05;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_105 : Css.Style
neg_scale_x_105 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.05"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-110 {
    --tw-scale-x: -1.1;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_110 : Css.Style
neg_scale_x_110 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.1"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-125 {
    --tw-scale-x: -1.25;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_125 : Css.Style
neg_scale_x_125 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.25"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-150 {
    --tw-scale-x: -1.5;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_150 : Css.Style
neg_scale_x_150 =
    Css.batch
        [ Css.property "--tw-scale-x" "-1.5"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-50 {
    --tw-scale-x: -.5;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_50 : Css.Style
neg_scale_x_50 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.5"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-75 {
    --tw-scale-x: -.75;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_75 : Css.Style
neg_scale_x_75 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.75"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-90 {
    --tw-scale-x: -.9;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_90 : Css.Style
neg_scale_x_90 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.9"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-x-95 {
    --tw-scale-x: -.95;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_x_95 : Css.Style
neg_scale_x_95 =
    Css.batch
        [ Css.property "--tw-scale-x" "-.95"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-0 {
    --tw-scale-y: 0;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_0 : Css.Style
neg_scale_y_0 =
    Css.batch
        [ Css.property "--tw-scale-y" "0"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-100 {
    --tw-scale-y: -1;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_100 : Css.Style
neg_scale_y_100 =
    Css.batch
        [ Css.property "--tw-scale-y" "-1"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-105 {
    --tw-scale-y: -1.05;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_105 : Css.Style
neg_scale_y_105 =
    Css.batch
        [ Css.property "--tw-scale-y" "-1.05"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-110 {
    --tw-scale-y: -1.1;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_110 : Css.Style
neg_scale_y_110 =
    Css.batch
        [ Css.property "--tw-scale-y" "-1.1"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-125 {
    --tw-scale-y: -1.25;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_125 : Css.Style
neg_scale_y_125 =
    Css.batch
        [ Css.property "--tw-scale-y" "-1.25"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-150 {
    --tw-scale-y: -1.5;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_150 : Css.Style
neg_scale_y_150 =
    Css.batch
        [ Css.property "--tw-scale-y" "-1.5"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-50 {
    --tw-scale-y: -.5;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_50 : Css.Style
neg_scale_y_50 =
    Css.batch
        [ Css.property "--tw-scale-y" "-.5"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-75 {
    --tw-scale-y: -.75;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_75 : Css.Style
neg_scale_y_75 =
    Css.batch
        [ Css.property "--tw-scale-y" "-.75"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-90 {
    --tw-scale-y: -.9;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_90 : Css.Style
neg_scale_y_90 =
    Css.batch
        [ Css.property "--tw-scale-y" "-.9"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scale-y-95 {
    --tw-scale-y: -.95;
    transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scale_y_95 : Css.Style
neg_scale_y_95 =
    Css.batch
        [ Css.property "--tw-scale-y" "-.95"
        , Css.property "transform" "translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y))"
        ]


{-| This class has the effect of following css declaration:

```css
.-scroll-m-0 {
    scroll-margin: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_0 : Css.Style
neg_scroll_m_0 =
    Css.property "scroll-margin" "-0px"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-0\.5 {
    scroll-margin: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_0_dot_5 : Css.Style
neg_scroll_m_0_dot_5 =
    Css.property "scroll-margin" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-1 {
    scroll-margin: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_1 : Css.Style
neg_scroll_m_1 =
    Css.property "scroll-margin" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-10 {
    scroll-margin: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_10 : Css.Style
neg_scroll_m_10 =
    Css.property "scroll-margin" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-11 {
    scroll-margin: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_11 : Css.Style
neg_scroll_m_11 =
    Css.property "scroll-margin" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-12 {
    scroll-margin: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_12 : Css.Style
neg_scroll_m_12 =
    Css.property "scroll-margin" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-14 {
    scroll-margin: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_14 : Css.Style
neg_scroll_m_14 =
    Css.property "scroll-margin" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-16 {
    scroll-margin: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_16 : Css.Style
neg_scroll_m_16 =
    Css.property "scroll-margin" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-1\.5 {
    scroll-margin: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_1_dot_5 : Css.Style
neg_scroll_m_1_dot_5 =
    Css.property "scroll-margin" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-2 {
    scroll-margin: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_2 : Css.Style
neg_scroll_m_2 =
    Css.property "scroll-margin" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-20 {
    scroll-margin: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_20 : Css.Style
neg_scroll_m_20 =
    Css.property "scroll-margin" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-24 {
    scroll-margin: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_24 : Css.Style
neg_scroll_m_24 =
    Css.property "scroll-margin" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-28 {
    scroll-margin: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_28 : Css.Style
neg_scroll_m_28 =
    Css.property "scroll-margin" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-2\.5 {
    scroll-margin: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_2_dot_5 : Css.Style
neg_scroll_m_2_dot_5 =
    Css.property "scroll-margin" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-3 {
    scroll-margin: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_3 : Css.Style
neg_scroll_m_3 =
    Css.property "scroll-margin" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-32 {
    scroll-margin: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_32 : Css.Style
neg_scroll_m_32 =
    Css.property "scroll-margin" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-36 {
    scroll-margin: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_36 : Css.Style
neg_scroll_m_36 =
    Css.property "scroll-margin" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-3\.5 {
    scroll-margin: -0.875rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_3_dot_5 : Css.Style
neg_scroll_m_3_dot_5 =
    Css.property "scroll-margin" "-0.875rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-4 {
    scroll-margin: -1rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_4 : Css.Style
neg_scroll_m_4 =
    Css.property "scroll-margin" "-1rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-40 {
    scroll-margin: -10rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_40 : Css.Style
neg_scroll_m_40 =
    Css.property "scroll-margin" "-10rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-44 {
    scroll-margin: -11rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_44 : Css.Style
neg_scroll_m_44 =
    Css.property "scroll-margin" "-11rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-48 {
    scroll-margin: -12rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_48 : Css.Style
neg_scroll_m_48 =
    Css.property "scroll-margin" "-12rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-5 {
    scroll-margin: -1.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_5 : Css.Style
neg_scroll_m_5 =
    Css.property "scroll-margin" "-1.25rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-52 {
    scroll-margin: -13rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_52 : Css.Style
neg_scroll_m_52 =
    Css.property "scroll-margin" "-13rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-56 {
    scroll-margin: -14rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_56 : Css.Style
neg_scroll_m_56 =
    Css.property "scroll-margin" "-14rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-6 {
    scroll-margin: -1.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_6 : Css.Style
neg_scroll_m_6 =
    Css.property "scroll-margin" "-1.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-60 {
    scroll-margin: -15rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_60 : Css.Style
neg_scroll_m_60 =
    Css.property "scroll-margin" "-15rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-64 {
    scroll-margin: -16rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_64 : Css.Style
neg_scroll_m_64 =
    Css.property "scroll-margin" "-16rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-7 {
    scroll-margin: -1.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_7 : Css.Style
neg_scroll_m_7 =
    Css.property "scroll-margin" "-1.75rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-72 {
    scroll-margin: -18rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_72 : Css.Style
neg_scroll_m_72 =
    Css.property "scroll-margin" "-18rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-8 {
    scroll-margin: -2rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_8 : Css.Style
neg_scroll_m_8 =
    Css.property "scroll-margin" "-2rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-80 {
    scroll-margin: -20rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_80 : Css.Style
neg_scroll_m_80 =
    Css.property "scroll-margin" "-20rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-9 {
    scroll-margin: -2.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_9 : Css.Style
neg_scroll_m_9 =
    Css.property "scroll-margin" "-2.25rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-96 {
    scroll-margin: -24rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_96 : Css.Style
neg_scroll_m_96 =
    Css.property "scroll-margin" "-24rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-m-px {
    scroll-margin: -1px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_m_px : Css.Style
neg_scroll_m_px =
    Css.property "scroll-margin" "-1px"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-0 {
    scroll-margin-bottom: -0px
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_0 : Css.Style
neg_scroll_mb_0 =
    Css.property "scroll-margin-bottom" "-0px"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-0\.5 {
    scroll-margin-bottom: -0.125rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_0_dot_5 : Css.Style
neg_scroll_mb_0_dot_5 =
    Css.property "scroll-margin-bottom" "-0.125rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-1 {
    scroll-margin-bottom: -0.25rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_1 : Css.Style
neg_scroll_mb_1 =
    Css.property "scroll-margin-bottom" "-0.25rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-10 {
    scroll-margin-bottom: -2.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_10 : Css.Style
neg_scroll_mb_10 =
    Css.property "scroll-margin-bottom" "-2.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-11 {
    scroll-margin-bottom: -2.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_11 : Css.Style
neg_scroll_mb_11 =
    Css.property "scroll-margin-bottom" "-2.75rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-12 {
    scroll-margin-bottom: -3rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_12 : Css.Style
neg_scroll_mb_12 =
    Css.property "scroll-margin-bottom" "-3rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-14 {
    scroll-margin-bottom: -3.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_14 : Css.Style
neg_scroll_mb_14 =
    Css.property "scroll-margin-bottom" "-3.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-16 {
    scroll-margin-bottom: -4rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_16 : Css.Style
neg_scroll_mb_16 =
    Css.property "scroll-margin-bottom" "-4rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-1\.5 {
    scroll-margin-bottom: -0.375rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_1_dot_5 : Css.Style
neg_scroll_mb_1_dot_5 =
    Css.property "scroll-margin-bottom" "-0.375rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-2 {
    scroll-margin-bottom: -0.5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_2 : Css.Style
neg_scroll_mb_2 =
    Css.property "scroll-margin-bottom" "-0.5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-20 {
    scroll-margin-bottom: -5rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_20 : Css.Style
neg_scroll_mb_20 =
    Css.property "scroll-margin-bottom" "-5rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-24 {
    scroll-margin-bottom: -6rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_24 : Css.Style
neg_scroll_mb_24 =
    Css.property "scroll-margin-bottom" "-6rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-28 {
    scroll-margin-bottom: -7rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_28 : Css.Style
neg_scroll_mb_28 =
    Css.property "scroll-margin-bottom" "-7rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-2\.5 {
    scroll-margin-bottom: -0.625rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_2_dot_5 : Css.Style
neg_scroll_mb_2_dot_5 =
    Css.property "scroll-margin-bottom" "-0.625rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-3 {
    scroll-margin-bottom: -0.75rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_3 : Css.Style
neg_scroll_mb_3 =
    Css.property "scroll-margin-bottom" "-0.75rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-32 {
    scroll-margin-bottom: -8rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_32 : Css.Style
neg_scroll_mb_32 =
    Css.property "scroll-margin-bottom" "-8rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-36 {
    scroll-margin-bottom: -9rem
}
```

Make sure to check out the [tailwind documentation](https://tailwindcss.com/docs)!

-}
neg_scroll_mb_36 : Css.Style
neg_scroll_mb_36 =
    Css.property "scroll-margin-bottom" "-9rem"


{-| This class has the effect of following css declaration:

```css
.-scroll-mb-3\.5 {
    scroll-margin-bottom: -0.875rem
}
```


-}
neg_scroll_mb_3_dot_5 =
