
global.blackout_effect = 1;
global.t_bg_color = 0.03
global.t_bg_color_alpha = 0
global.background_color = #a594e4
set_hitbox_color(#dcd8fb,0,room_width*0.5,room_height*0.5);
global.artifact_type = irandom_range(1,6)
global.fukurou_snow_effect = 1
global.map_speed = 0
global.t_map_speed = 0
global.automatic_camera_movement = 3;



if global.low_graphics = false
{
	for(var i = 0; i <= 64; i++)
	{
	var _shaking_circle = create_explo_circle(global.c_x+i*80,global.c_y+48,1+i*2,7200,0,0,0.4,2,0,0)
	_shaking_circle.direction = 90
	}
}


for(var i = 0; i <= 64; i++)
{
var _shaking_circle = create_explo_circle(global.c_w-i*80,global.c_y+16,1+i*3,7200,0,0,0.4,2,0,0)
_shaking_circle.direction = 90
}



