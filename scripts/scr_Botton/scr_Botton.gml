#macro BTT_X 0		//botton, la x
#macro BTT_Y 1		//botton, la y
#macro BTT_R 2		//botton, el radio
#macro BTT_SPR 3	//botton, el sprite


/// @function					botton_gui_create(x, y, radio, sprite);
/// @param {real}	_x			Posicion x
/// @param {real}	_y			Posicion y
/// @param {real}	_r			El radio del botton
/// @param {sprite} _spr		El sprite del botton
/// @description				crea un botton
function botton_gui_create(_x, _y, _r, _spr = spr_Botton){
	return [_x, _y, _r, _spr]
}

/// @function					botton_gui_funct(id, function)
/// @param {Botton}  _id		El id del botton
/// @param {function}  _func	Una funcion 
/// @description				Al darle Click en el botton Dara una accion atravez de una function.
function botton_gui_funct(_id, _func){
	
	var _dis = point_in_circle(mouse_gui_x(), mouse_gui_y(), _id[BTT_X], _id[BTT_Y], _id[BTT_R]);
	
	if( _dis && mouse_check_button_released(mb_left) ){
		script_execute(_func);
	}
}
/// @function					botton_gui_draw(id);
/// @param {Botton}  _id		El id del botton
/// @description				Dibujara el Botton
function botton_gui_draw(_id){
	draw_sprite(_id[BTT_SPR],0,_id[BTT_X], _id[BTT_Y]);
}