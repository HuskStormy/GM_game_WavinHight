//var _color = make_color_hsv(global.color_val,255/2,255)
var _color = bool_special==false ?
		make_color_hsv(global.color_val,255/2,255):
		make_color_hsv(color_me mod 255,255/2,255)

//back
draw_sprite_ext(sprite_index,2,x,y,image_xscale+vblop,image_yscale+vblop,0,_color,1);





gpu_set_blendmode(bm_add)
draw_set_alpha(0.4+vblop)
//glow
draw_sprite_ext(sprite_index,1,x,y,image_xscale+vblop, image_yscale+vblop, 0, _color, 1);

if (vblop != 0){
	draw_set_alpha(0.01+(vblop*2))
	draw_circle_color(x,y,96*2,_color, c_black,false)

	draw_set_alpha(0.1+vblop)
	draw_circle_color(x,y,96,_color,c_black,0);
}




draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
//base
draw_sprite_ext(sprite_index,0,x,y,image_xscale+vblop,image_yscale+vblop,0,-1,1);

gpu_set_blendmode(bm_normal);
