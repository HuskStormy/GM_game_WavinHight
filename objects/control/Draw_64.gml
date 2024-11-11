


var _cam = view_get_camera(0);
/*
draw_text(0,16,
	"w= "+string(_disp_w)+"\n"+
	"h= "+string(_disp_h)+"\n"+
	"%= "+string((_disp_h/_disp_w))+"\n"+
	"vw "+string(camera_get_view_width(_cam))+"\n"+
	"vh "+string(camera_get_view_height(_cam))+"\n"+
	"gw "+string(display_get_gui_width())+"\n"+
	"gh "+string(display_get_gui_height())+"\n"+
	"blc "+string(instance_number(parent_block))+"\n"+
	"c  "+string(global.color_val)
	);
*/




draw_set_alpha(valcortina);
draw_set_color(c_black);
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false)
draw_set_alpha(1);

draw_set_color(c_white);



var _x = display_get_gui_width() - 32
var _dis = point_in_circle(mouse_gui_x(),mouse_gui_y(),_x, 32,32);

	draw_sprite_ext(spr_Botton_Menu,0,_x, 32,.5,.5,0,-1,1);

if (_dis && mouse_check_button_pressed(mb_left)){
	if (!instance_exists(cntrl_pausa))
		instance_create_layer(0,0,layer,cntrl_pausa);
	else
		instance_destroy(cntrl_pausa);
}