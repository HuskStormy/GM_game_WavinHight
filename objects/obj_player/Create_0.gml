// MOVIMIENTO
function Fgrid(_post,_grd = 32,_mid = false){
	return ((_post+((_grd/2)*_mid)) div _grd) * _grd;
}

vy = 0;				//X
vx = 0;				//Y
bol_move = false;		//MOVE BOOLEAN
val_postx = Fgrid(x);	//DONDE ESTA EL MOUSE APUNTANDO


///DISPAROS
var _v = global.velocity	//VELOCIDAD
var _d = 80					//DISTANCIA
tiempo = _d / _v;			//TIEMPO
timer_shot = tiempo;
alarm[0] = tiempo;

solidos = [obj_block, parent_block];


death = false;




myPowerUp_buttler_Cant = pointer_null;
myPowerUp_buttler_Cant_timer = -1;

myPowerUp_buttler_Forc = pointer_null;
myPowerUp_buttler_Forc_timer = -1;