/// @description Insert description here
// You can write your code in this editor
if gamestart >= 2 && global.sync_setting_alpha >= 0.01 && global.n_progress > 1
{
	var yy = camera_get_view_y(view_camera[0])
	var yy_h = camera_get_view_height(view_camera[0])

	if (global.n_setting_button = 9999 || global.n_setting_button = -4) && (mouse_y < yy+yy_h-520)
	{
		global.n_setting_button = 9999;
		if (global.tutorial_played > 0)
		{
			global.back_to_game++
		}
		else
		{
			global.sync_setting = 0
			global.cannot_control = 0
			instance_destroy(obj_button)
			save_and_load_data(0,0)
			global.n_setting_button = -4
			
			//일시정지 효과 해제
			if (global.paused == 1)
			{
				global.paused = -1
			}
			global.back_to_game = 0
			global.n_setting_button = -4
		}
	}
}

if (instance_exists(obj_album_ui) && obj_album_ui.holding_now != -1 && global.notice_title == "게임을 시작하기 전...")
{
	if (string_length(global.nickname) <= 15 && string_length(global.nickname) >= 3)
	{
		if (global.show_new_songs > 0 && (gamestart == 0 || gamestart >= 4))
		{
			obj_album_ui.holding_now++;
		}
	}
}