
var random_xx = room_width*0.5
var attack_ef = instance_create_depth(random_xx,global.c_y+16,depth+1,hitbox_10)
attack_ef.gravity = 1
attack_ef.gravity_direction = 90
var speed__y = 50
attack_ef.vspeed = speed__y
var speed__ = -5
attack_ef.hspeed = speed__
attack_ef.keep_spin_angle = speed__/2
attack_ef.image_xscale = 0.35
attack_ef.image_yscale = 0.35
attack_ef.w_alpha = 10
attack_ef.sprite_index = spr_cross