if (global.t_selected_difficulty = 1 && global.boss_battle == 0)
{
	global.savepoint_position[0] = 1976
	global.savepoint_color[0] = #00111b

	global.savepoint_position[1] = 2875
	global.savepoint_color[1] = $FF263302
}
set_hitbox_color(#415c84,0,room_width*0.5,room_height*0.5);
global.background_color = c_black
global.artifact_type = 0

global.t_bg_color = 1
global.t_bg_color_alpha = 0
global.wakrio_effect = 0
global.automatic_camera_movement = 2;


create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,26,4,2,2,180)

var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y+32,global.c_h-32),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 20
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10