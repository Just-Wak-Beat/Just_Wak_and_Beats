clock_hitbox_2.t_scale = 4.25
clock_hitbox.t_scale = 2.8

if (global.t_selected_difficulty == 0)
{
	clock_hitbox_3.t_scale = clock_hitbox.t_scale*1.01
}

global.map_color = $FFDB83BF
global.w_alpha = 1