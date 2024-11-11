#region draw FPS
	var _color_fps = c_white;
	if (fps < 30)						_color_fps = #ff0000;
	else if (fps >= 30 and fps < 40)	_color_fps = #ffb600;
	else if (fps >= 40 and fps < 55)	_color_fps = #fff600;
	else if (fps >= 55 and fps < 60)	_color_fps = #0dff00;
	else if (fps = 60)	_color_fps = #089f00;
	else if (fps > 60)	_color_fps = #0086ff;
	else _color_fps = c_black;

	draw_text_color(0,0,"fps: " + string(fps),_color_fps,_color_fps,_color_fps,_color_fps,1)
	draw_rectangle_color(0,0,100*(fps/60),1,_color_fps,_color_fps,_color_fps,_color_fps,false)
	draw_line(100,0,100,2);
#endregion

parmt = 
[
	"blk_numb: " + string( instance_number(parent_block) ),
	"blk_cant: " + string( global.SpawnCant ),
	"nlv_Estd: " + string( global.nivel ),
	"nlv_Prog: " + string( global.nivelprogres ),
	"nlv_porc: " + string( global.nivelporcent*100 ) + "%",
	"Speed_gl: " + string( global.velocity  )
]

var _y = 12;
var _d = 14;
for (var i = 0; i < array_length(parmt); ++i) {
    draw_text(0,_y+(_d*i), parmt[i]);
}