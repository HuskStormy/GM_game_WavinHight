if (global.nivelprogres >= nivelprogres_limt[nivel_num+1]){
	global.nivelprogres = 0;
	nivel_num = clamp(nivel_num+1,0,3);
	//global.velocity = clamp(global.velocity+1,3,6);
	part_index(part_velocity, room_width/2,camera_get_view_y(0) - 64)

	switch (nivel_num) {
    case 0:	
		global.nivel = NVL_EASY
		global.velocity = 4;
		
		global.SpawnCant = 2;
		global.Bk_porb_data = [obj_block_broken,obj_block_solid, obj_block_hard];
		global.bk_prob_PROB = [18,3,1];
		
		global.UP_prob_data = [PU_SPEED_NXT, PU_SPEED_BCK, PU_SPEED_x1, PU_SPEED_x2, PU_SPEED_x3, PU_BULLT_DUA];
		global.UP_prob_PROB = [4, 6, 1, 1, 2, 3];
		break;
	case 1:
		global.nivel = NVL_NORM
		global.velocity = 5;
		
		global.SpawnCant = 3;
		global.Bk_porb_data = [obj_block_broken,obj_block_solid, obj_block_hard];
		global.bk_prob_PROB = [18,4,1];
		
		global.UP_prob_data = [PU_SPEED_NXT, PU_SPEED_BCK, PU_SPEED_x1, PU_SPEED_x2, PU_SPEED_x3, PU_BULLT_x2, PU_BULLT_DUA, PU_BULLT_TRI];
		global.UP_prob_PROB = [5, 3, 2, 1, 3, 4, 5, 3];
		break;
	case 2:	
		global.nivel = NVL_DIFI
		global.velocity = 6;
		
		global.SpawnCant = 4;
		global.Bk_porb_data = [obj_block_broken,obj_block_solid, obj_block_hard];
		global.bk_prob_PROB = [18,6,2];
		
		global.UP_prob_data = [PU_SPEED_NXT, PU_SPEED_BCK, PU_SPEED_x1, PU_SPEED_x2, PU_SPEED_x3, PU_BULLT_x2, PU_BULLT_x3, PU_BULLT_DUA, PU_BULLT_TRI];
		global.UP_prob_PROB = [10, 4, 2, 3, 7, 7, 8, 8, 5];
		break;
	case 3:	
		global.nivel = NVL_EXTR
		global.velocity = 7;
		
		global.SpawnCant = 5;
		global.Bk_porb_data = [obj_block_broken,obj_block_solid, obj_block_hard];
		global.bk_prob_PROB = [18,6,2];
		
		global.UP_prob_data = [PU_SPEED_NXT, PU_SPEED_BCK, PU_SPEED_x1, PU_SPEED_x2, PU_SPEED_x3, PU_BULLT_x2, PU_BULLT_x3, PU_BULLT_DUA, PU_BULLT_TRI, PU_PROTECCIT];
		global.UP_prob_PROB = [15, 8, 4, 6, 9, 10, 8, 10, 7, 3];
		break;
    default:
		global.nivel = NVL_UNDI
		global.Bk_porb_data = [obj_block_hard];
		global.bk_prob_PROB = [3];
		global.UP_prob_data = [PU_SPEED_NXT, PU_SPEED_BCK];
		global.UP_prob_PROB = [2, 3];
		break;
	}
	val_velocity_default = global.velocity;
}

var _nvl_n = nivelprogres_limt[nivel_num+1];
global.nivelporcent = (global.nivelprogres) / (_nvl_n);






if ((val_velocity_default > global.velocity || val_velocity_default < global.velocity+1) and val_velocity_comprty = false and !obj_player.death){
	val_velocity_comprty = true;
	alarm[0] = room_speed * 8;
}