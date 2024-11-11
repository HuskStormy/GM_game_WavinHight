instance_deactivate_object(cntrl_spawn);
instance_deactivate_object(cntrl_GamePlay);
instance_deactivate_layer("objetivos")
instance_deactivate_layer("objjetivos_Solidos")
instance_activate_object(control);
instance_activate_object(cntrl_menu);


b = false;
alarm[0] = 60*0.25;




screen_save("pause");
sprite = sprite_add("pause",0,0,0,0,0);


var _brd = 32;
var _ibrd = _brd*2;
var _x = _brd;
var _y = display_get_gui_height()/4;
var _w = display_get_gui_width() - _ibrd;
var _h = _w;



var _cr = 96;
var _c = _x + _cr;
var _c2= (_x + _w) - _cr;


botton_restart	= botton_gui_create(_c , _y+_w, _cr, spr_Botton_Restart);
botton_menu		= botton_gui_create(_c2, _y+_w, _cr, spr_Botton_Menu);