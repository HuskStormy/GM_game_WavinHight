Vspeed = global.velocity;

vida = (live==0) ? 1 : live;


vblop = 0.0;



color_me = 0;
var _color = bool_special==false ? global_color(): color_me mod 255
_color_i = make_color_hsv(_color,255/2,100);

ps = pointer_null;
ptype1 = pointer_null;
ptype2 = pointer_null;
pemit1 = pointer_null;
pemit2 = pointer_null;

function particulas(){
	ps = part_system_create();
	part_system_draw_order(ps, true);

	ptype1 = part_type_create();
		part_type_shape		(ptype1, pt_shape_sphere);
		part_type_size		(ptype1, 0.1, 0.5, 0, 0);
		part_type_scale		(ptype1, 1, 1);
		part_type_speed		(ptype1, 1, 3, 0, 0);
		part_type_direction	(ptype1, 270, 270, 0, 0);
		part_type_gravity	(ptype1, 0, 270);
		part_type_orientation(ptype1, 0, 0, 0, 0, false);
		part_type_colour2	(ptype1, _color_i, _color_i);
		part_type_alpha3	(ptype1, .5, 0.2, 0);
		part_type_blend		(ptype1, true);
		part_type_life		(ptype1, 30, 60);
	ptype2 = part_type_create();
		part_type_shape		(ptype2, pt_shape_sphere);
		part_type_size		(ptype2, .03, 0.15, 0, 0);
		part_type_scale		(ptype2, 1, 1);
		part_type_speed		(ptype2, 3, 4, 0, 0);
		part_type_direction	(ptype2, 270, 270, 0, 0);
		part_type_gravity	(ptype2, 0, 270);
		part_type_orientation(ptype2, 0, 0, 0, 0, false);
		part_type_colour2	(ptype2, #FFFFFF, _color_i);
		part_type_alpha3	(ptype2, 1, 0.122, 0);
		part_type_blend		(ptype2, true);
		part_type_life		(ptype2, 30, 60);
		
	pemit1 = part_emitter_create(ps);
		part_emitter_region(ps, pemit1, -48, 48, -48, 48, ps_shape_rectangle, ps_distr_invgaussian);
		part_emitter_burst (ps, pemit1, ptype1, 5);
	pemit2 = part_emitter_create(ps);
		part_emitter_region(ps, pemit2, -32, 32, -32, 32, ps_shape_rectangle, ps_distr_invgaussian);
		part_emitter_burst (ps, pemit2, ptype2, 15);

	part_system_position(ps, x, y);

	part_emitter_destroy( ps, pemit1);
	part_emitter_destroy( ps, pemit2);
	ps		= pointer_null;
	ptype1	= pointer_null;
	ptype2	= pointer_null;
	pemit1	= pointer_null;
	pemit2	= pointer_null;
}