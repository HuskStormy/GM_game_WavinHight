/// @function					act_leve_restart()
/// @description				reinicia el nivel
function act_leve_restart(){
	instance_destroy(parent_block);		//Eliminar todos los bloques
	instance_destroy(obj_balla);		//Eliminar todas las balas
	instance_destroy(parent_PowerUp);	//Eliminar todos los PowerUP
	
	///llamado al player
	with (obj_player) {
	    death = false;			//quitar la muerte
		image_xscale = 1;		//volver la xscala normal
		image_yscale = 1;		//volver la yscala normal
		x = xstart;				//volver x en su lugar
		y = ystart;				//volver y en su lugar
		bol_move = false;		//no se movera
		val_postx = Fgrid(x);	//el valor del apuntador volver al x
		alarm[0] = tiempo;		//llamar otra vez para disparar
	}
	
	global.velocity = 4;		//velocidad normal
	global.score	= 0;		//puntaje reiniciar
	global.nivelprogres = 0		//
	global.nivel = NVL_EASY		//
	cntrl_GamePlay.nivel_num = 0
	
	
	//abrir el archivo .ini
	ini_open("example.ini");	
		global.bestscore = ini_read_real("save", "score", 0);
	ini_close();
	
}

/// @function					act_leve_end()
/// @description				termina el nivel
function act_leve_end(){
	cntrl_menu.game_level_quit();
	instance_destroy(cntrl_pausa);
}

/// @function					act_leve_start()
/// @description				inicia el nivel
function act_leve_start(){
	cntrl_menu.game_level_start();
}

/// @function					act_game_end()
/// @description				quita el juego
function act_game_end(){
	game_end();
}