
var _color = make_color_hsv(global.color_val+(255/2),255/2,255)
gpu_set_blendmode(bm_add)
draw_set_alpha(0.5)
//glow
if (bol_move && !death)
	draw_sprite_ext(sprite_index,1,x,y,image_xscale, image_yscale, 0, _color, 1);
draw_sprite_ext(sprite_index,1,x,y,image_xscale+.2, image_yscale+.2, 0, _color, 0.5);

draw_set_alpha(0.09 * !death)
draw_circle_color(x,y,96,_color,c_black,0);




draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
//base
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,-1,1);


