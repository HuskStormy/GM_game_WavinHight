/// @function						MEOW
/// @description					NO DEBERIA FUNCIONAR
function var_obj(_obj){
	if (instance_exists(_obj))
		return _obj;
}

/// @function						mouse_gui_x()
/// @description					el X GUI ya sea de windown o andorid
function mouse_gui_x(){
	if (os_type == os_windows)
		return window_mouse_get_x();
	else
		return (window_mouse_get_x()/display_get_width()) * display_get_gui_width();
}

/// @function						mouse_gui_y()
/// @description					el Y GUI ya sea de windown o andorid
function mouse_gui_y(){
	if (os_type == os_windows)
		return window_mouse_get_y();
	else
	return (window_mouse_get_y()/display_get_width()) * display_get_gui_width();
}

/// @function						timeline(_index,_position,_running,_loop)
/// @param {Timeline}	_index		El timeLine
/// @param {real}		_position	posicion = 0
/// @param {bool}		_running	para iniciar 
/// @param {bool}		_loop		Una funcion
/// @description					inicia un timeline
function timeline(_index,_position=0,_running=true, _loop=false){
	timeline_index		= _index;
	timeline_position	= _position;
    timeline_running	= _running;
	timeline_loop		= _loop;
}

/// @function						global_color()
/// @description					Getter del color en general
function global_color(){
	return global.color_val;
}

/// @function						global_color_i()
/// @description					Getter del color en general pero inverso
function global_color_i(){
	var _color_i = floor(global.color_val+(255/2))
	if (_color_i > 255) _color_i = _color_i-255;
	return _color_i;
}


function choose_Prob(_dato, _array_prob, _ind){
	var _suma = 0;
	for (var i = 0; i < array_length(_array_prob); ++i) {
		_suma += _array_prob[i];
	}
	var _colec;
	var _num = 0;
	for (var i = 0; i < array_length(_array_prob); ++i) {
		var _stnum = _num;
		for (var j = _stnum; j < (_stnum + _array_prob[i]); ++j) {
			_colec[j] = i;
			_num++;
		}
	}
	var _rand = irandom_range(0,_suma-1);
	return _dato[_colec[floor((_suma-1)*(_ind/100))]];
}

#macro PU_SPEED_NXT 0
#macro PU_SPEED_BCK 1
#macro PU_SPEED_x1	2
#macro PU_SPEED_x2	3
#macro PU_SPEED_x3	4
#macro PU_SPEED_x4	5
#macro PU_SPEED_x5	6
#macro PU_BULLT_x2	7
#macro PU_BULLT_x3	8
#macro PU_BULLT_DUA	9
#macro PU_BULLT_TRI	10
#macro PU_PROTECCIT	11



function animcurve(CurveAn, Channel, val){
	var curve = animcurve_get_channel(CurveAn, Channel)
	return animcurve_channel_evaluate(curve,val)
}