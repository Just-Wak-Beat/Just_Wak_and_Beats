/// @description Reset discord presence
// You can write your code in this editor

camera_focus_on(-4,-4,1)
var tmp_str = "모든 곡";
if (global.n_map_list == 1)
{
	tmp_str = "좋아요 한 곡";
}
else if (global.n_map_list == 2)
{
	tmp_str = "유저 제작 커스텀 곡";
}
else if (global.n_map_list == 3)
{
	tmp_str = "해금 된 곡";
}
else if (global.n_map_list == 4)
{
	tmp_str = "[곡 필터링] 우왁굳";
}
else if (global.n_map_list == 5)
{
	tmp_str = "[곡 필터링] 이세계아이돌";
}


np_setpresence_more("", "메인 매뉴", false);
np_setpresence(string(tmp_str), "메인 매뉴", "type0", "");
automatic_loading_cancel = 0
window_set_cursor(cr_default)
instance_destroy(map_edior_ui);
instance_destroy(obj_button);
global.check_died = 0
global.tutorial_now = 0
global.timeline_stop = -1;
global.show_rank = 0;
custom_map_loading = 0;
global.random_seed = -4
global.map_editor = 0;
global.rewind = 0;
global.play_custom_map = 0;
global.n_camera_zoom = 1;
global.camera_slow_zoom = 0;
global.camera_target_x = room_width*0.5;
global.camera_target_y = room_height*0.5;
global.show_progress_bar = 0;
global.n_progress = 0;
global.show_music_title = 0;
global.automatic_camera_movement = 0;
global.blackout_effect = 0;
global.paused = 0;
global.total_damaged = 0;
instance_activate_all()
randomize()
event_user(12);
event_user(8)

music_title_alpha = 0
progress_icon_alpha = 0
progress_alpha = 0
discord_presence_update = 0
global.highlight_time = 0
global.scroll_n_m_xx = -4
global.joystick_xx = -4
global.scroll_n_m_yy = -4
global.joystick_yy = -4
load_musicList(global.n_map_list);
instance_destroy(hitbox_parents);





//load_none_cleared_list();
load_unlocked_list();

if (saved_n_stage >= 0)
{
	global.t_select_map = saved_n_stage
	global.select_map = saved_n_stage
	n_stage = saved_n_stage-2
}

event_user(6)
alarm[10] = 2


//디스플레이 랭크 초기화
global.b_hp = -4;
global.b_crossed_obstacle_num = -4;