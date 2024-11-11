/// @description


/// @function					spawn_block_random(_cant)
/// @param {real}	_cant		numero de bloques que van a aparecer en cada interacion
/// @description				crea un "mapa" o array que indicara el la posicion de los bloques
function spawn_block_random(_cant){
	//mapa vacio
	var _post = 
		[
			[0,0,0,0,0],		//primera fila
			 [0,0,0,0]			//segunda fila
		];		
	var _c = array_length(_post[0]);	//el maximo de cada fila
	
	
	// _cant = numero de bloques, en cada interacion.
	for (var i = 0; i < _cant; ++i) {
		//escojer alearotio la fila 1° o 2°
		var _fila = choose(0,1);		
		//for para ajustar el numero de elementos en la fila, (0 = "5") o (1 = "4")
		var _colu = (_fila=0) ? irandom_range(0,_c) : irandom_range(0,_c-1);
		// colorar el 1 el un lugar del mapa vacio,
		// indicando que abra un bloque 
		_post[_fila][_colu] = 1;
	}
	//returnar el mapa
	return _post;	
}

/// @function						spawn_block_objeto(_spawn_post)
/// @param {Array.Real}	_spawn_post	toma el "mapa" o array previamente creado
/// @description					spawnuea el bloque segun el "mapa"
function spawn_block_objeto(_spawn_post){
	// for de dos filas
	for (var j = 0; j < 2; ++j) {
		//escoje una fila
		var _post = _spawn_post[j];
		//for segun el tamaño del la fila (0 = "5") o (1 = "4")
		for (var i = 0; i < array_length(_post); ++i) {
			//amenos que el elemento de la fila no sea 0, se van a spawn el bloque (choose_obj = bloque aleatorio con probabilidad)
			if (_post[i] != 0){
				var _pU = false;
				if (Spawn_powerUp)
					_pU = choose(false,false,true);
					var _rand = irandom_range(0,100);
			    instance_create_layer(128+64+(64*i) + (j*32), -64-(j*64), "objjetivos_Solidos", choose_Prob(global.Bk_porb_data, global.bk_prob_PROB, _rand),{bool_special : _pU})
				Spawn_powerUp = false;
			}
		}
	}
}


//VARIABLES
Spawn_speed = global.velocity
Spawn_dista = 128
Spawn_post	= spawn_block_random(0);


prob_rand = pointer_null;

//VARIABLES COMPLEJAS
tiempo = max(5,Spawn_dista / Spawn_speed);
cantdiad = global.SpawnCant;






//INICIAR EL CONTADOR
alarm[0]= tiempo;







Spawn_powerUp = false;
alarm[1]= irandom_range(room_speed * 3,room_speed * 9);