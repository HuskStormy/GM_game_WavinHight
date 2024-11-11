inst_btts_y_A = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 96;
inst_btts_y_B = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) + 32;
inst_btts_y_val = inst_btts_y_A
inst_btts_y		= inst_btts_y_A;
alarm[0] = 2;

#macro	STT_MENU "status_Menu"
#macro	STT_LVL  "status_Level"
#macro	STT_SHOP "status_Shop"
status = STT_MENU;


game_level_start=function(){
	inst_btts_y_val = inst_btts_y_B;
	with (obj_player) {
	    player_start();
	}
	status = STT_LVL;
}

game_level_quit = function(){
	inst_btts_y_val = inst_btts_y_A;
	with (obj_player) {
	    player_quit();
	}
	status = STT_MENU;
}

game_shop_start = function(){
	inst_btts_y_val = inst_btts_y_B;
	status = STT_SHOP;
}