global.ipad_effect = 1
global.w_alpha = 1


if (global.t_selected_difficulty == 0)
{
	for(var i = 0; i <= 5; i++)
	{
		show_debug_message("created")
		create_cylinder(global.c_x+i*68,global.c_h-8*abs(22)*(1+abs(i)),depth+15,0.5,1,64,270,0,false);
		
		create_cylinder(global.c_w-i*68,global.c_h-8*abs(22)*(1+abs(i)),depth+15,0.5,1,64,270,0,false);
	}
	
	repeat(irandom_range(8,12))
	{
		var attack_ef = instance_create_depth(global.c_w,global.c_h+irandom_range(-64,64),obj_player.depth+15,hitbox_2);
		attack_ef.sprite_index = spr_circle;
		attack_ef.keep_spin_angle = irandom_range(-2,2);
		attack_ef.image_xscale = 0.04;
		attack_ef.image_yscale = 0.04;
		attack_ef.w_alpha = 10;
		attack_ef.gravity = 1;
		attack_ef.vspeed = -8+irandom_range(-5,5);
		attack_ef.hspeed = irandom_range(-25,25)/2;
	}
	
	repeat(irandom_range(8,12))
	{
		var attack_ef = instance_create_depth(global.c_x,global.c_h+irandom_range(-64,64),obj_player.depth+15,hitbox_2);
		attack_ef.sprite_index = spr_circle;
		attack_ef.keep_spin_angle = irandom_range(-2,2);
		attack_ef.image_xscale = 0.04;
		attack_ef.image_yscale = 0.04;
		attack_ef.w_alpha = 10;
		attack_ef.gravity = 1;
		attack_ef.vspeed = -8+irandom_range(-5,5);
		attack_ef.hspeed = irandom_range(-25,25)/2;
	}
}