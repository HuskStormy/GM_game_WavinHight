if (inst_btts_y != inst_btts_y_val) inst_btts_y += (inst_btts_y_val - inst_btts_y) *.05;

inst_Botton_Logros.y = inst_btts_y;
inst_Botton_Tienda.y = inst_btts_y;



with (obj_player) {
	var _grd = 40;
	var _cbox = point_in_rectangle(mouse_x,mouse_y,x-_grd,y-_grd,x+_grd,y+_grd)
	
    if (_cbox and mouse_check_button_pressed(mb_left) && other.status==STT_MENU){
		act_leve_start();
	}
	if (other.status==STT_MENU){
		val_postx = xstart;
	}
}

show_debug_message(status);