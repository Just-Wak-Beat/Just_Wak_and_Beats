global.t_bg_color = 0.5
global.t_bg_color_alpha = 0.5

for(var i = 0; i < 360; i += 15)
{
	var attack_ef = instance_create_depth(heart_hitbox.x,heart_hitbox.y,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 15
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}

global.w_alpha = 1
set_hitbox_color(#107c67,1,room_width*0.5,room_height*0.5);


heart_hitbox.t_scale = 1


heart_hitbox.w_alpha = 1
heart_hitbox.image_xscale *= 0.8
heart_hitbox.image_yscale *= 0.8



square_outline_hitbox1.automatic_angle = 1
square_outline_hitbox1.w_alpha = 1

square_outline_hitbox2.automatic_angle = 1
square_outline_hitbox2.w_alpha = 1

square_outline_hitbox3.automatic_angle = 1
square_outline_hitbox3.w_alpha = 1

square_outline_hitbox4.automatic_angle = 1
square_outline_hitbox4.w_alpha = 1