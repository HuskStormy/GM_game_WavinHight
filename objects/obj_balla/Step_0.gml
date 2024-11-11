y -= (Velocidad*2) - (val_dist_x*0.1);

x += (sign(val_dist_x)*4*val_dirt_x) + (0.5*val_dirt_x) ;
val_dist_x = clamp( val_dist_x - 6, 0, 64*3);



var pocr = alarm[0] / val_live;


image_xscale = animcurve(anc_Bala,"Cur_x",pocr) * min(force,1 + force*.05);
image_yscale = animcurve(anc_Bala,"Cur_y",pocr) * min(force,1 + force*.05);
//if (y < _ply.y-(32*100)) instance_destroy();