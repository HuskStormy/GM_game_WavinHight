application_surface_draw_enable(false)


global.score = 0;
global.bestscore = 0;



global.color_val = 252//random_range(1,254);



global.cortina = 0;
valcortina = 0;

view_visible[0] = true;




cam_blop = 0;
if (os_type = os_android){
	var _disp_w = display_get_width()
	var _disp_h = display_get_height()
	var _disp_P = _disp_h/_disp_w
	cam_wid = 432;
	cam_hed = cam_wid*_disp_P;
	
	//display_set_gui_size(_disp_w,_disp_h)
}else{
	cam_wid = 432;
	cam_hed = 768;
	window_set_size(cam_wid,cam_hed)
	//display_set_gui_size(window_get_width(),window_get_height())
}
display_set_gui_size(cam_wid,cam_hed)

