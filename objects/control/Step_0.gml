global.color_val+=0.1;
if (global.color_val >= 255) global.color_val = 0;

if (valcortina != global.cortina) valcortina += (global.cortina - valcortina)*0.1; 


var _color = make_color_hsv(global.color_val,190,20)
var lay_id = layer_get_id("Background");
var back_id = layer_background_get_id(lay_id);
layer_background_blend(back_id, _color);



cam_blop = clamp(cam_blop-0.001,0,1);
var _zoom = 1.00+cam_blop;
var _cam_w = cam_wid * _zoom;
var _cam_h = cam_hed * _zoom;
var  _camera = camera_create_view(0,0,_cam_w,_cam_h,0,obj_camera,-1,-1,_cam_w/2, _cam_h/2);
view_camera[0] = _camera;



