instance_destroy();

var _timer = room_speed * 10;
var _part = pointer_null;
switch (type) {
    case PU_SPEED_NXT:
			var _spd_nxt = global.velocity+1;
			if (global.velocity < _spd_nxt) _part = part_velocity;
        global.velocity = clamp(global.velocity+1,3,7);
        break;
    case PU_SPEED_BCK:
			var _spd_bck = global.velocity+1;
			if (global.velocity < _spd_bck) _part = part_velocity_des;
        global.velocity = clamp(global.velocity-1,3,7);
		
        break;
    case PU_SPEED_x1:		
			if (global.velocity < 3) _part = part_velocity;
			else if (global.velocity > 3) _part = part_velocity_des;
        global.velocity = 3;
        break;
    case PU_SPEED_x2:
			if (global.velocity < 4) _part = part_velocity;
			else if (global.velocity > 4) _part = part_velocity_des;
        global.velocity = 4;
        break;
    case PU_SPEED_x3:
			if (global.velocity < 5) _part = part_velocity;
			else if (global.velocity > 5) _part = part_velocity_des;
        global.velocity = 5;
        break;
    case PU_SPEED_x4:
			if (global.velocity < 6) _part = part_velocity;
			else if (global.velocity > 6) _part = part_velocity_des;
        global.velocity = 6;
        break;
    case PU_SPEED_x5:
			if (global.velocity < 7) _part = part_velocity;
			else if (global.velocity > 7) _part = part_velocity_des;
        global.velocity = 7;
        break;
    case PU_BULLT_DUA:
			obj_player.myPowerUp_buttler_Cant = PU_BULLT_DUA;
			obj_player.myPowerUp_buttler_Cant_timer = _timer;
        break;
    case PU_BULLT_TRI:
			obj_player.myPowerUp_buttler_Cant = PU_BULLT_TRI;
			obj_player.myPowerUp_buttler_Cant_timer = _timer;
        break;
    case PU_BULLT_x2:
			obj_player.myPowerUp_buttler_Forc = PU_BULLT_x2;
			obj_player.myPowerUp_buttler_Forc_timer = _timer;
        break;
    case PU_BULLT_x3:
			obj_player.myPowerUp_buttler_Forc = PU_BULLT_x3;
			obj_player.myPowerUp_buttler_Forc_timer = _timer;
        break;
	default: _part = pointer_null;
        break;
}

if (_part != pointer_null)
	part_index(_part, room_width/2,camera_get_view_y(0) - 64)