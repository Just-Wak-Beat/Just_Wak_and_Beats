
if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 2300
	global.savepoint_color[0] = #344a87
}


global.artifact_type = 4
set_hitbox_color(#1f1f1f,1,global.c_w,room_height*0.5);
global.background_color = #344a87
global.t_bg_color_alpha = 0
global.t_bg_color = 0
global.t_map_speed = 0
global.map_speed = 0
global.master_remix_effect = 1
global.automatic_camera_movement = 3


var random_y = irandom_range(global.c_y+128,global.c_h-128)
var scale = irandom_range(100,50)/100
var _misile_ = create_square_misile(global.c_w+160,random_y,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5
camera_focus_on(-4,-4,0.8)