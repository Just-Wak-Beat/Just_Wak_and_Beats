clock_hitbox.w_alpha = 1
clock_hitbox.t_scale = 3.3

clock_hitbox_2.w_alpha = 1
clock_hitbox_2.t_scale = 4.5
clock_hitbox_2.image_index = 2

heart_hitbox.t_scale = 0
heart_hitbox.w_alpha = 1

if (global.t_selected_difficulty == 0)
{
	clock_hitbox_3.t_scale = clock_hitbox.t_scale*1.01
	clock_hitbox_3.w_alpha = 1
}

set_hitbox_color(#b8cba7,1,room_width*0.5,room_height*0.5);
global.w_alpha = 1