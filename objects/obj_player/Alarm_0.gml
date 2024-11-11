var verifi_move = bol_move + (vx != val_postx)
if (bol_move && !death){
	
	var verifi_move = bol_move + (vx != val_postx);
	if (sign(verifi_move) and !death)
	
	
	var _force = 1;
	switch (myPowerUp_buttler_Forc) {
	    case PU_BULLT_x2:
	        _force = 2;
	        break;
	    case PU_BULLT_x3:
	        _force = 3;
	        break;
	    default:
	        _force = 1;
	        break;
	}
	
	switch (myPowerUp_buttler_Cant) {
	    case PU_BULLT_DUA:
			instance_create_layer(x,y,layer,obj_balla,{val_dist_x: 32,val_dirt_x:-1,force:_force});
			instance_create_layer(x,y,layer,obj_balla,{val_dist_x: 32,val_dirt_x:1 ,force:_force});
	    break;
	    case PU_BULLT_TRI:
			instance_create_layer(x,y,layer,obj_balla,{val_dist_x: 0, val_dirt_x:0,force:_force});
			instance_create_layer(x,y,layer,obj_balla,{val_dist_x: 64,val_dirt_x:-1,force:_force});
			instance_create_layer(x,y,layer,obj_balla,{val_dist_x: 64,val_dirt_x:1 ,force:_force});
	    break;
	    default:
			instance_create_layer(x,y,layer,obj_balla,{val_dist_x: 0, val_dirt_x:0,force:_force});
	    break;
	}

	
}
alarm[0] = tiempo