y = ystart;
#region movimiento lateral

	var _grd = 64;
	var _cbox = point_in_rectangle(mouse_x,mouse_y,x-_grd,y-_grd,x+_grd,y+128)

	// ver si estas tocando
	// el player con el mouse.
	if (mouse_check_button_pressed(mb_left)  and _cbox)	bol_move = true;
	if (mouse_check_button_released(mb_left))			bol_move = false;

	// hacer el donde este apuntando "x"
	// se mueva aunque no tenga el mouse tocando.
	if (mouse_check_button(mb_left) and bol_move) val_postx = Fgrid(mouse_x,,1);


	// darle el valor de la velocidad
	// horizontal.
	var verifi_move = bol_move + (vx != val_postx);
	if (sign(verifi_move) and !death)
		if (x != val_postx)	vx = (val_postx - x)*.2;

	//funcion final
	move_and_collide(vx,vy,solidos);
	
#endregion

#region disparo
	if (mouse_check_button(mb_left))
		timer_shot = (timer_shot<=0) ? tiempo : (timer_shot-1);

#endregion





var coll = instance_place(x,y-global.velocity,solidos);
if (coll and !death){
	if (instance_place(x,y-global.velocity,solidos) and !instance_place(x,y+1,solidos)){
		alarm[1] = 60*3;
		instance_create_layer(x,y,layer,obj_particula);
		control.cam_blop = 0.02;
	
		timeline(Tline_death);
	
		global.velocity = -0.2;
		with (parent_block) {
	    Vspeed = global.velocity;
		}
	
		if (global.score > global.bestscore){
			ini_open("example.ini");
				ini_write_real("save", "score", global.score);
			ini_close();
		}
			death = true;
	}
}


if (death){
	vx = 0;
	vy = 0;
	var _scl = 0.1;
	image_xscale = clamp(image_xscale-_scl,0,1);
	image_yscale = clamp(image_yscale-_scl,0,1);
}


myPowerUp_buttler_Cant_timer = clamp(myPowerUp_buttler_Cant_timer-1,-1,60*20);
if (myPowerUp_buttler_Cant_timer = 0){
	myPowerUp_buttler_Cant = pointer_null;
}

myPowerUp_buttler_Forc_timer = clamp(myPowerUp_buttler_Forc_timer-1,-1,60*20);
if (myPowerUp_buttler_Forc_timer = 0){
	myPowerUp_buttler_Forc = pointer_null;
}