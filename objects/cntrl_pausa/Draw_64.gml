draw_sprite_stretched(sprite,0,0,0,display_get_gui_width(), display_get_gui_height());




var _brd = 32;
var _ibrd = _brd*2;
var _x = _brd;
var _y = display_get_gui_height()/4;
var _w = display_get_gui_width() - _ibrd;
var _h = _w;

draw_sprite_stretched(spr_panel,0,_x,_y,_w, _h);


botton_gui_draw(botton_restart);
botton_gui_draw(botton_menu);