/// @description Insert description here
// You can write your code in this editor
if (global.n_setting_button = -4 || global.n_setting_button = button_id) && global.sync_setting = 1 && sprite_index != spr_square
{
image_xscale = 0.15
image_yscale = 0.15
audio_play_sound(favorite_sfx,0,false,global.master_volume*global.sfx_volume*2)

	if button_id = 0
	{
		if global.mobile_mode == 1
		{
			with(code)
			{
				if object_index = code
				{
				event_user(2)
				}
			}
		}
		else
		{
		n_screen_width = window_get_width()
		n_screen_height = window_get_height()
		n_full_screen = window_get_fullscreen()
		window_set_fullscreen(!n_full_screen)
		window_set_size(window_get_width(),window_get_height())
		alarm[0] = 30
		}
	}
	else if button_id = 1
	{
		if global.mobile_mode == 0
		{
			if window_get_width() = 1920
			{
				if window_get_fullscreen() = false
				{
				window_set_fullscreen(true)
				}
				else
				{
				window_set_fullscreen(false)
				window_set_size(1280,720)
				}
			}
			else if window_get_width() = 1280
			{
			window_set_size(1600,900)
			}
			else if window_get_width() = 1600
			{
			window_set_size(1760,1020)
			}
			else
			{
			window_set_size(1920,1080)
			}
		}
		else
		{
		save_and_load_data(0,0)
		alarm[10] = 30
		}
	}
}