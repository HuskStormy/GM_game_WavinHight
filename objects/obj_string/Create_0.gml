alarm[0] = 60*0.4;

Vspeed = global.velocity;


/*
var _color = true==false ? global_color(): global_color_i();
_color_i = make_color_hsv(_color,255/2,100);
_color_f = make_color_hsv(_color,255/2,100);

ps = part_system_create();
part_system_draw_order(ps, true);

//Emitter
var _ptype1 = part_type_create();
	part_type_shape(_ptype1, pt_shape_sphere);
	part_type_size(_ptype1, 0.1, 0.5, 0, 0);
	part_type_scale(_ptype1, 1, 1);
	part_type_speed(_ptype1, 1, 3, 0, 0);
	part_type_direction(_ptype1, 270, 270, 0, 0);
	part_type_gravity(_ptype1, 0, 270);
	part_type_orientation(_ptype1, 0, 0, 0, 0, false);
	part_type_colour2(_ptype1, _color_i, _color_i);
	part_type_alpha3(_ptype1, .5, 0.2, 0);
	part_type_blend(_ptype1, true);
	part_type_life(_ptype1, 30, 60);

	var _pemit1 = part_emitter_create(ps);
		part_emitter_region(ps, _pemit1, -48, 48, -48, 48, ps_shape_rectangle, ps_distr_invgaussian);
		part_emitter_burst(ps, _pemit1, _ptype1, 5);

//Emitter
var _ptype2 = part_type_create();
	part_type_shape(_ptype2, pt_shape_sphere);
	part_type_size(_ptype2, 0.03, 0.15, 0, 0);
	part_type_scale(_ptype2, 1, 1);
	part_type_speed(_ptype2, 3, 4, 0, 0);
	part_type_direction(_ptype2, 270, 270, 0, 0);
	part_type_gravity(_ptype2, 0, 270);
	part_type_orientation(_ptype2, 0, 0, 0, 0, false);
	part_type_colour2(_ptype2, #FFFFFF, _color_i);
	part_type_alpha3(_ptype2, 1, 0.122, 0);
	part_type_blend(_ptype2, true);
	part_type_life(_ptype2, 30, 60);

	var _pemit2 = part_emitter_create(ps);
		part_emitter_region(ps, _pemit2, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_invgaussian);
		part_emitter_burst(ps, _pemit2, _ptype2, 15);



part_system_position(ps, x, y);

part_emitter_destroy( ps, _pemit1);
part_emitter_destroy( ps, _pemit2);