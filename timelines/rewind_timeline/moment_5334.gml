global.w_alpha = 0.1
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

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 0+45
_misile_.image_angle = 90+45
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 90+45
_misile_.image_angle = 180+45
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 180+45
_misile_.image_angle = 270+45
_misile_.speed = (64+4)*scale/5

var scale = 0.5
var _misile_ = create_square_misile(room_width*0.5,room_height*0.5,5,20/scale,0,0,scale)
_misile_.direction = 270+45
_misile_.image_angle = 360+45
_misile_.speed = (64+4)*scale/5