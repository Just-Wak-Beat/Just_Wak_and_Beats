
/// @description Insert description here
// You can write your code in this editor
image_speed = 0
global.hp = 5
global.b_hp = 0
global.b_crossed_obstacle_num = 0
t_xscale = 1
t_yscale = 1

hurt = -4
hurt_hspeed = 0
hurt_vspeed = 0
hurt_coolitme = 0
show_invincibility = 0
kirakira_alpha = -1
kirakira_effect = 0
invincibility_cooltime = 0
n_max_map_speed = 0
tutorial_mes = 0
show_player_pos = 0
player_pos_alpha = 0
player_pos_w_alpha = 0

global.hmove = 0
global.vmove = 0

global.hmove_speed = 0
global.vmove_speed = 0
check_stop = 0
saved_ef_ins_id = -4




global.dash_cooltime = 0
global.dashing = 0
global.in_safe_zone = -4;

w_alpha = 0

died_xx = 0
died_yy = 0



crossed_obstacle_cooldown = 0

var tmp_ins_head = -4;
for(var i = 0; i < 5; i++)
{
	if (i == 0)
	{
		tmp_ins_head = instance_create_depth(x,y,depth+1,obj_player_left_hp_effect);
		tmp_ins_head.my_id = i;
		tmp_ins_head.parent_id = -4;
		for(var ii = 0; ii < 5; ii++)
		{
			tmp_ins_head.id_num[ii] = tmp_ins_head;
		}
	}
	else
	{
		var tmp_ins = instance_create_depth(x,y,depth+1,obj_player_left_hp_effect);
		tmp_ins.my_id = i;
		tmp_ins.parent_id = tmp_ins_head;
		tmp_ins_head.id_num[i] = tmp_ins;
	}
}
