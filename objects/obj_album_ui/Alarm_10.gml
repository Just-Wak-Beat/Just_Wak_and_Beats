/// @description 처음 알림 메시지
// You can write your code in this editor
if (global.dev_mode == 1)
{
	global.artifact_owned[11] = 99999
}


global.title_menu_animation1++

window_set_cursor(cr_default)

if (global.title_menu_animation1 >= 3)
{
	global.title_menu_animation1 = -1;
	
	if (global.tutorial_played > 0)
	{
		show_guide("조작법 가이드");
	}
	else
	{
		code.gamestart = 1;
		window_set_cursor(cr_none)
		global.t_selected_difficulty = 1;
	}
	
	global.nickname = string_replace_all(global.nickname," ","");
	global.nickname = string_lettersdigits(global.nickname);
	/*LootLockerSetPlayerName(string(temp_nickname));
	LootLockerTurnOnAutoRefresh();*/
}
else
{
	if (global.tutorial_played <= 0 && global.title_menu_animation1 == 1)
	{
		alarm[10] = 30
	}
	else
	{
		alarm[10] = 75
	}
}

if (global.title_menu_animation1 == 1)
{
	audio_play_sound(show_rank_sfx,0,false,global.sfx_volume*global.master_volume,0.23)
}

if (global.title_menu_animation1 == 2)
{
	bpm_timer += 10
	angle_moving_timer = 0
}

alarm[1] = 90;
