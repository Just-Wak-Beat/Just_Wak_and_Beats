for(var i = 0; i < 360; i += 16)
{
	var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2)
	attack_ef.direction = i
	attack_ef.speed = 20
	attack_ef.keep_spin_angle = 2
	attack_ef.image_xscale = 0.4
	attack_ef.image_yscale = 0.4
	attack_ef.w_alpha = 10
}


heart_hitbox = instance_create_depth(room_width*0.5,room_height*0.5,obj_player.depth-1,hitbox_11)
heart_hitbox.sprite_index = spr_W
heart_hitbox.t_scale = 1
heart_hitbox.shake_scale = 0
heart_hitbox.shake_dir = 0
heart_hitbox.t_angle = 0
heart_hitbox.image_angle = 180
heart_hitbox.image_index = 2
set_hitbox_color(#b8cba7,1,room_width*0.5,room_height*0.5);


