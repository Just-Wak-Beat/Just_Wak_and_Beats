spike_ef.t_y = room_height*0.5
spike_ef.t_scale = 1.4
global.lockdown_effect1 = 0
instance_destroy(hitbox_2)
global.w_alpha = 1
pipe_ef = instance_create_depth(room_width*0.5,room_height*0.5,spike_ef.depth+1,hitbox_8)
pipe_ef.t_x = -4;
pipe_ef.t_y = spike_ef;
pipe_ef.image_xscale = 0;
pipe_ef.image_yscale = 0;
pipe_ef.sprite_index = spr_empty;
global.t_bg_color = -10
set_hitbox_color(#df1a62,1,room_width*0.5,room_height*0.5);

var _ef = instance_create_depth(spike_ef.x,spike_ef.y,depth+1,explosion_effect);
_ef.image_xscale = 1;
_ef.image_yscale = 1;
_ef.t_scale = 2;
_ef.image_blend = global.map_color;
