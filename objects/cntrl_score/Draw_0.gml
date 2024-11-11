var _color = make_color_hsv(global_color(),190,60)
var _color_i = make_color_hsv(global_color_i(),200,160)

var _size_num = 1;
var _size_tex = .3;


draw_set_color(_color);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_generico);
gpu_set_blendmode(bm_add);

	draw_text_transformed(x,y	,global.score,_size_num,_size_num,0);
	draw_text_transformed(x,y+55,"score",_size_tex,_size_tex,0);
	var _bestscore = (global.score > global.bestscore)? global.score: global.bestscore;
	draw_text_transformed(x,y+55+32,_bestscore,_size_tex,_size_tex,0);
	draw_roundrect(x-((1-global.nivelporcent)*128),y+(55+64),x+((1-global.nivelporcent)*128),y+(55+64+32),false)
	draw_text_transformed(x,y+(55+64+19),global.nivel,_size_tex,_size_tex,0);

draw_set_font(fnt);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);
gpu_set_blendmode(bm_normal);


gpu_set_blendmode(bm_add)
	draw_rectangle_color(0, 0, room_width, 800,_color_i,_color_i,c_black,c_black, 0);
	draw_rectangle_color(0, 0, room_width, 200,_color_i,_color_i,c_black,c_black, 0);
gpu_set_blendmode(bm_normal)