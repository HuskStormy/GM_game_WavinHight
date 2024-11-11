var _disp_w = (os_type == os_windows) ? window_get_width()  : display_get_gui_width()
var _disp_h = (os_type == os_windows) ? window_get_height() : display_get_gui_height()

//if (surface_exists(view_surface_id[0]))


	draw_surface_stretched(application_surface,0,0,_disp_w,_disp_h)
