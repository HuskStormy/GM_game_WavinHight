function part_acelerate(){
	var _p = part_system_create(part_velocity);
	part_system_position(_p,room_width/2,camera_get_view_y(0) - 64);
}
function part_desacelerate(){
	var _p = part_system_create(part_velocity_des);
	part_system_position(_p,room_width/2,camera_get_view_y(0) - 64)
	part_system_destroy(_p);
}
function part_index(_particule, _x, _y){
	var _p = part_system_create(_particule);
	part_system_position(_p,_x,_y);
}


