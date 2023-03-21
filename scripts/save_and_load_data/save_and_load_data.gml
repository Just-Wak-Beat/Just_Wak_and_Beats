// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param save/load
///@param quicksave
function save_and_load_data(argument0,argument1)
{
ini_open_protect("JWAB_Beta.ini")

	if argument0 = 0
	{
		for(var i = 0; i < global.total_map; i++)
		{
		//인게임 정보 (맵)
		ini_write_string("n_rank",string(i),global.real_n_rank[i]);
		ini_write_string("n_rank_hardcore",string(i),global.real_n_rank_hardcore[i]);
		ini_write_string("n_artifact",string(i),global.real_n_artifact[i]);
		ini_write_real("n_favorite",string(i),global.real_n_favorite[i]);
		ini_write_real("fav_map_id",string(i),global.fav_map_id[i]);
		ini_write_real("unlocked_map_id",string(i),global.unlocked_map_id[i]);
		}
		
		for(var i = 0; i <= 7; i++)
		{
		//아티팩트 보유 갯수
		ini_write_real("artifact_owned",string(i),global.artifact_owned[i]);
		}
	
	//환경설정
	ini_write_real("master_volume","none",global.master_volume);
	ini_write_real("bgm_volume","none",global.bgm_volume);
	ini_write_real("sfx_volume","none",global.sfx_volume);
	ini_write_real("music_sync_offset","none",global.music_sync_offset);
	ini_write_real("window_width","none",global.window_width);
	ini_write_real("window_height","none",global.window_height);
	ini_write_real("window_fullscreen","none",global.window_fullscreen);
	}
	else
	{
		for(var i = 0; i < global.total_map; i++)
		{
		//인게임 정보 (맵)
		global.real_n_rank[i] = ini_read_string("n_rank",string(i),"--");
		global.real_n_rank_hardcore[i] = ini_read_string("n_rank_hardcore",string(i),"--");
		global.real_n_artifact[i] = ini_read_string("n_artifact",string(i),"X");
		global.real_n_favorite[i] = ini_read_real("n_favorite",string(i),-1);
		global.fav_map_id[i] = ini_read_real("fav_map_id",string(i),-4);
		global.unlocked_map_id[i] = ini_read_real("unlocked_map_id",string(i),-4);
		}
		
		for(var i = 0; i <= 7; i++)
		{
		//아티팩트 보유 갯수
		global.artifact_owned[i] = ini_read_real("artifact_owned",string(i),0);
		}

		
	//환경설정
	global.master_volume = ini_read_real("master_volume","none",1);
	global.bgm_volume = ini_read_real("bgm_volume","none",0.5);
	global.sfx_volume = ini_read_real("sfx_volume","none",1);
	global.music_sync_offset = ini_read_real("music_sync_offset","none",0);
	global.window_width = ini_read_real("window_width","none",1920);
	global.window_height = ini_read_real("window_height","none",1080);
	global.window_fullscreen = ini_read_real("window_fullscreen","none",true);
	
	window_set_fullscreen(global.window_fullscreen)
	window_set_size(global.window_width,global.window_height)
	window_set_fullscreen(global.window_fullscreen)
	window_set_size(global.window_width,global.window_height)
	window_set_max_width(global.window_width)
	window_set_max_height(global.window_height)
	surface_resize(application_surface, display_get_width (), display_get_height ());
	}

ini_close_protect()
}