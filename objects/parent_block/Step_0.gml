y += Vspeed;

vblop = clamp(vblop-0.01,0,0.3);
if (vida = 0){
	particulas();
	instance_destroy();
	global.score += valor;
	instance_create_layer(x,y,layer,obj_string,{text: other.valor})
	global.nivelprogres += valor/2;
	
	if (bool_special){
		var _r = irandom(100)
		instance_create_layer(x,y,layer,parent_PowerUp, {type: choose_Prob(global.UP_prob_data,global.UP_prob_PROB,_r)})
		show_debug_message(_r)
	}
	
}


if (y>(room_height+96)) instance_destroy()



if (bool_special)
	color_me += 30;