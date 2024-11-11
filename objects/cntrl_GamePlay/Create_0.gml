global.velocity = 4;
global.SpawnCant = 2;

#macro NVL_EASY "FACIL"
#macro NVL_NORM "NORMAL"
#macro NVL_DIFI "DIFICIL"
#macro NVL_EXTR "EXTREMO"
#macro NVL_UNDI "QUE???????????????"
global.nivel = NVL_EASY
nivel_num = 0;
global.nivelprogres = 0;
	nivelprogres_limt = [0,50,500,3000,8000,140000];

global.nivelporcent = 0;


global.UP_prob_data = [PU_SPEED_NXT, PU_SPEED_BCK]
global.UP_prob_PROB = [2, 3];
global.Bk_porb_data = [obj_block_broken,obj_block_solid, obj_block_hard];
global.bk_prob_PROB = [18,3,1];

val_velocity_default = global.velocity;
val_velocity_comprty = false;