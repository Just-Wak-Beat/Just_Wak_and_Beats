
var attack_ef = instance_create_depth(global.c_w,irandom_range(global.c_y,global.c_h),depth+1,hitbox_2)
attack_ef.direction = 180
attack_ef.speed = 20
attack_ef.keep_spin_angle = 2
attack_ef.image_xscale = 0.4
attack_ef.image_yscale = 0.4
attack_ef.w_alpha = 10



var random_y = irandom_range(global.c_y+128,global.c_h-128)
var scale = 1
var _misile_ = create_square_misile(global.c_w+160,random_y,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5

var random_y = irandom_range(global.c_y+128,global.c_h-128)
var scale = 0.7
var _misile_ = create_square_misile(global.c_w+160,random_y,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5

var random_y = irandom_range(global.c_y+128,global.c_h-128)
var scale = 0.96
var _misile_ = create_square_misile(global.c_w+160,random_y,5,20/scale,0,0,scale)
_misile_.direction = 180
_misile_.image_angle = 180
_misile_.speed = (64+4)*scale/5



var random_x = global.c_w-640
create_spike_circle(random_x,global.c_y+256,global.c_w,global.c_y+256,180,0,0,0.2)

