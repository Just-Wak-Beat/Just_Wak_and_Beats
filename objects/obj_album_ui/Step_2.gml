/// @description Insert description here
// You can write your code in this editor

if (global.select_difficulty == 0 && global.show_new_songs <= 0 && global.unlock_partner_animation_queue == 0)
{
	if (((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+400) < 80 || keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace))))
	{
		with(code)
		{
			if object_index = code
			{
				if (global.character_setting <= 0)
				{
					event_user(2)
				}
				else
				{
					event_user(3)
				}
			}
		}
	}
	else if (global.sync_setting <= 0 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+660) < 80) || keyboard_check_pressed(ord("W"))))
	{
		with(code)
		{
			if object_index = code
			{
				event_user(3)
			}
		}
	}
	else if (global.n_map_list != 2)
	{
		if (global.show_new_songs <= 0 && mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1430) < 80)
		{
			if (global.level >= global.requirement_level[code.n_stage])
			{
				if (global.sync_setting == 0 && global.character_setting == 0 && code.gamestart == 0)
				{
					clicked_ = 1
					heart_alpha = 10
					w_alpha = 1
					w_alpha_bg = 1
				}
			}
		}
		else if (global.total_map > 0 && global.n_map_id >= 0 && global.real_stage_map_difficulty[global.n_map_id] != "Tutorial" && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1170) < 80) || keyboard_check_pressed(vk_tab)))
		{
			if (global.nickname == "")
			{
				show_nickname_setting();
			}
			else
			{
				if (global.cannot_connect >= 10)
				{
					show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
				}
				else
				{
					code.automatic_reload_leaderboard = 1;
				}
			}
		}
		else if (global.n_map_id >= 0 && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+910) < 80) || keyboard_check_pressed(ord("Q"))))
		{
			if (global.nickname == "")
			{
				show_nickname_setting();
			}
			else
			{
				if (global.cannot_connect >= 10)
				{
					show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
				}
				else
				{
					global.automatic_load_ranking = 0;
					code.automatic_reload_player_leaderboard = 1;
				}
			}
		}
	}
	else
	{
		if (global.n_map_id >= 0 && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+1430) < 80) || keyboard_check_pressed(ord("M"))))
		{
			window_set_cursor(cr_none);
			audio_play_sound(ding_dong,0,false,global.master_volume*global.sfx_volume*2);
			global.map_editor = 1;
			code.gamestart = 1;
		}
		else if (global.n_map_id >= 0 && global.show_new_songs <= 0 && global.sync_setting != 1 && global.character_setting != 1 && ((mouse_check_button_released(mb_left) && point_distance(mouse_x,mouse_y,global.c_x+104,global.c_y+910) < 80) || keyboard_check_pressed(ord("Q"))))
		{
			if (global.nickname == "")
			{
				show_nickname_setting();
			}
			else
			{
				if (global.cannot_connect >= 10)
				{
					show_message_log("온라인 서버에 연결할 수 없습니다. 잠시 후 다시 시도 해주세요. ("+string(round(1+(global.cannot_connect-10)/3))+"s)");
				}
				else
				{
					global.automatic_load_ranking = 0;
					code.automatic_reload_player_leaderboard = 1;
				}
			}
		}
	}
}
