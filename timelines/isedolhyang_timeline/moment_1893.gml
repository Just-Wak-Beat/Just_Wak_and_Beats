create_laser(irandom_range(global.c_x,global.c_w),global.c_y,60,10,1,2,1,180)

for(var i = 0; i < 360; i += 15)
{
var attack_ef = instance_create_depth(room_width*0.5,room_height*0.5,depth+1,hitbox_2)
attack_ef.direction = i
attack_ef.speed = 32
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10
}

