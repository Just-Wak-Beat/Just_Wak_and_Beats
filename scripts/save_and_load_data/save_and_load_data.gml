// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param save/load
///@param quicksave
function save_and_load_data(argument0,argument1)
{
	var file_name = (global.dev_mode == 1) ? "PWB_Beta.ini" : "PWB_OpenBeta.ini"
	ini_open_protect(file_name)
	clean_message_log();

	if (argument0 == 0 && global.show_credit <= 0)
	{
		show_message_log("유저 데이터 저장 중...");
		//플레이어 스킨
		ini_write_real("n_player_skin","none",global.n_player_skin);
		for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
		{
			ini_write_real("unlocked_player_skin",string(i),global.unlocked_player_skin[i]);
		}
		

		for(var i = 0; i < global.total_map; i++)
		{
			//인게임 정보 (맵)
			ini_write_string("real_n_score",string(i),global.real_n_score[i]);
			ini_write_string("real_n_score_hardcore",string(i),global.real_n_score_hardcore[i]);
			ini_write_string("n_artifact",string(i),global.real_n_artifact[i]);
			
			ini_write_string("unlocked_music_name",string(i),global.unlocked_music_name[i]);
			ini_write_string("b_unlocked_music_name",string(i),global.b_unlocked_music_name[i]);

			ini_write_real("n_favorite",string(i),global.real_n_favorite[i]);
			ini_write_real("fav_map_id",string(i),global.fav_map_id[i]);
			ini_write_real("unlocked_map_id",string(i),global.map_id_origin[i]);
			
			ini_write_real("real_stage_playtime",string(i),global.real_stage_playtime[i]);
		}
		
		for(var i = 0; i <= 11; i++)
		{
			//아티팩트 보유 갯수
			ini_write_real("artifact_owned",string(i),global.artifact_owned[i]);
			ini_write_real("guide_showed",string(i),global.guide_showed[i]);
		}
		
	
		//환경설정
		ini_write_real("master_volume","none",(code.outside_of_window == -4) ? global.master_volume : code.outside_of_window);
		ini_write_real("bgm_volume","none",global.bgm_volume);
		ini_write_real("sfx_volume","none",global.sfx_volume);
		ini_write_real("music_sync_offset","none",global.music_sync_offset);
		ini_write_real("flash_effect_setting","none",global.flash_effect_setting);


		ini_write_real("window_width","none",window_get_width());
		ini_write_real("window_height","none",window_get_height());
		ini_write_real("window_fullscreen","none",window_get_fullscreen());
		
		//레벨
		ini_write_real("level","none",global.level);
		ini_write_real("exp","none",global.exp);
		ini_write_real("max_exp","none",global.max_exp);
		
		//명예의 전당 스코어
		ini_write_real("total_score_normal","none",global.total_score_normal);
		ini_write_real("total_score_hardcore","none",global.total_score_hardcore);
		
		//닉네임
		ini_write_string("nickname","none",global.nickname);
		//베타테스터
		ini_write_real("beta_tester","none",global.beta_tester);
		ini_write_real("force_wipe_nickname","none",global.force_wipe_nickname);
		ini_write_real("tutorial_played","none",global.tutorial_played);
	}
	else
	{
		show_message_log("유저 데이터 불러오는 중...");
		//플레이어 스킨
		global.n_player_skin = ini_read_real("n_player_skin","none",-4);
		global.player_skin = (global.n_player_skin >= 0) ? floor(global.n_player_skin/4) : 0;
		global.player_skin = floor(global.player_skin);
		for(var i = 0; i < sprite_get_number(spr_illustrationCG); i++)
		{
			global.unlocked_player_skin[i] = ini_read_real("unlocked_player_skin",string(i),0);
		}
		
		
		if (argument1 >= 1)
		{
			for(var i = 0; i < global.origin_total_map; i++)
			{
				//인게임 정보 (맵)
				global.real_n_score[i] = ini_read_string("real_n_score",string(i),"--");
				global.real_n_score_hardcore[i] = ini_read_string("real_n_score_hardcore",string(i),"--");
				global.real_n_artifact[i] = ini_read_string("n_artifact",string(i),"X");
				global.real_n_favorite[i] = ini_read_real("n_favorite",string(i),-1);
				global.fav_map_id[i] = ini_read_real("fav_map_id",string(i),-4);
				global.map_id_origin[i] = ini_read_real("unlocked_map_id",string(i),-4);
			
				global.unlocked_music_name[i] = ini_read_string("unlocked_music_name",string(i),"");
				global.b_unlocked_music_name[i] = ini_read_string("b_unlocked_music_name",string(i),"");
				
				global.real_stage_playtime[i] = ini_read_real("real_stage_playtime",string(i),0);
			}
		
			for(var i = 0; i <= 11; i++)
			{
				//아티팩트 보유 갯수
				global.artifact_owned[i] = ini_read_real("artifact_owned",string(i),0);
				global.guide_showed[i] = ini_read_real("guide_showed",string(i),0);
			}
		}

		
		//환경설정
		global.master_volume = ini_read_real("master_volume","none",1);
		global.bgm_volume = ini_read_real("bgm_volume","none",0.5);
		global.sfx_volume = ini_read_real("sfx_volume","none",1);
		global.music_sync_offset = ini_read_real("music_sync_offset","none",0);
		global.window_width = ini_read_real("window_width","none",1920);
		global.window_height = ini_read_real("window_height","none",1080);
		global.window_fullscreen = ini_read_real("window_fullscreen","none",true);
		global.flash_effect_setting = ini_read_real("flash_effect_setting","none",-1);
	

		
		
		//레벨
		global.level = ini_read_real("level","none",0);
		global.exp = ini_read_real("exp","none",0);
		global.max_exp = ini_read_real("max_exp","none",1000);
		
		//명예의 전당 스코어
		global.total_score_normal = ini_read_real("total_score_normal","none",0);
		global.total_score_hardcore = ini_read_real("total_score_hardcore","none",0);
		
		//닉네임
		if (global.streamer != 0)
		{
			if (global.streamer == 1)
			{
				global.nickname = "Wakgood";
			}
			else if (global.streamer == 2)
			{
				global.nickname = "Jururu";
			}
			else if (global.streamer == 3)
			{
				global.nickname = "JINGBURGER";
			}
			else if (global.streamer == 4)
			{
				global.nickname = "VIichan";
			}
			else if (global.streamer == 5)
			{
				global.nickname = "INE";
			}
			else if (global.streamer == 6)
			{
				global.nickname = "Gosegu";
			}
			else if (global.streamer == 7)
			{
				global.nickname = "Lilpa";
			}
		}
		else
		{
			global.nickname = ini_read_string("nickname","none","");
		}
		decode_nametag(global.nickname);
		//베타테스터
		if (global.beta_tester != 1)
		{
			global.beta_tester = ini_read_real("beta_tester","none",0);
		}
		//스트리머
		if (global.streamer == 0)
		{
			global.streamer = ini_read_real("streamer","none",0);
		}
		//맵 에디터
		if (global.custom_mapper != 1)
		{
			global.custom_mapper = ini_read_real("custom_mapper","none",0);
		}
		global.force_wipe_nickname = ini_read_real("force_wipe_nickname","none",1);
		global.tutorial_played = ini_read_real("tutorial_played","none",0);
	}

	ini_close_protect()
}