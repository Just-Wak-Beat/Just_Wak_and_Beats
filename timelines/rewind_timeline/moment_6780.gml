for(var i = 1; i <= 13; i++)
{
var ins = variable_instance_get(id,"gear_hitbox"+string(i))

	if instance_exists(ins)
	{
	ins.w_alpha = 1
		if i%2 = 0
		{
		ins.t_angle += 90
		}
		else
		{
		ins.t_angle -= 90
		}
	}
}

clock_hitbox.automatic_angle = 2 if(global.t_selected_difficulty == 0){clock_hitbox_3.automatic_angle = 0.2}
clock_hitbox.w_alpha = 1
global.background_color = clock_hitbox.saved_color
global.map_color = clock_hitbox.saved_color_2

clock_hitbox.t_angle += 30
clock_hitbox.image_xscale += 0.5 clock_hitbox.image_yscale += 0.5 clock_hitbox_2.image_xscale += 0.5 clock_hitbox_2.image_yscale += 0.5
if(global.t_selected_difficulty == 0)
{
clock_hitbox_3.image_xscale += 0.5 
clock_hitbox_3.image_yscale += 0.5
clock_hitbox_3.t_angle += 10
clock_hitbox_3.w_alpha = 1
}
clock_hitbox.w_alpha = 1
view_shake(0.1,3,0,0)