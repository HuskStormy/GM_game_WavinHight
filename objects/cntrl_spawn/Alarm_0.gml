/// @description spawn
/*
	primero actializar despues de que el ciclo se haya terminado
*/
Spawn_speed = global.velocity
Spawn_dista = 128

with (parent_block) {
    Vspeed = global.velocity;
}


//VARIABLES COMPLEJAS
tiempo = max(5,Spawn_dista / Spawn_speed);
cantdiad = global.SpawnCant;


//hacer la estrutura
Spawn_post	= spawn_block_random(global.SpawnCant);

//espanuera el bloque
spawn_block_objeto(Spawn_post);



//reiniciar el tiempo
alarm[0] = tiempo;