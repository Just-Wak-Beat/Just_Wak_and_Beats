if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 3299
	global.savepoint_color[0] = #dfdfdf
	
	global.savepoint_position[1] = 4945
	global.savepoint_color[1] = #292131
}
global.artifact_type = 3
set_hitbox_color(c_gray,0,room_width*0.5,room_height*0.5);
global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.camera_slow_zoom = 0.00025;
global.n_camera_zoom = 0.7;
global.automatic_camera_movement = 2;
global.master_remix_effect = 0
global.background_color = #52bcfe;
global.t_bg_color = 0
global.t_bg_color_alpha = 0
global.t_map_speed = 0
global.t_map_speed_y = 0
global.happysegu_effect1 = 0
global.happysegu_effect2 = 0
global.happysegu_effect3 = 0
master_bpm_timer = 0


create_laser(global.c_x+223,room_height*0.5-2016*0.5,10,15,4,2,1,180)