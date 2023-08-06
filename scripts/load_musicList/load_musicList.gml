// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


///@param all/fav
function load_musicList(argument0)
{
	//load_none_cleared_list();
	//load_unlocked_list();
	global.custom_map_volume_control = (global.n_map_list == 2) ? 0.5 : 1
	
	if argument0 = 0
	{
		global.total_map = global.origin_total_map
	
		for(var i = 0; i < global.total_map; i++)
		{
			//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
			global.stage_map_name[i] = global.real_stage_map_name[i];
			global.stage_map_artist[i] = global.real_stage_map_artist[i];
			global.stage_map_difficulty[i] = global.real_stage_map_difficulty[i];
			global.stage_map_color[i] = global.real_stage_map_color[i];
			global.stage_map_duration[i] = global.real_stage_map_duration[i];
			global.stage_map_audio_name[i] = global.real_stage_map_audio_name[i];
			global.stage_bpm[i] = global.real_stage_bpm[i];
			global.stage_map_highlight_part[i] = global.real_stage_map_highlight_part[i];
			global.n_rank[i] = global.real_n_rank[i];
			global.n_rank_hardcore[i] = global.real_n_rank_hardcore[i];
			global.n_score[i] = global.real_n_score[i];
			global.n_score_hardcore[i] = global.real_n_score_hardcore[i];
			global.n_favorite[i] = global.real_n_favorite[i];
			global.n_artifact[i] = global.real_n_artifact[i];
			global.detailed_difficulty[i] = global.real_detailed_difficulty[i];
			global.obtainable_type[i] = global.real_obtainable_type[i];
			global.requirement_level[i] = global.real_requirement_level[i];
		}
	}
	else if argument0 = 1
	{
		global.total_map = get_fav_list_num();
	
		for(var i = 0; i < global.total_map; i++)
		{
			var ii = global.fav_map_id[i]
			if ii = -4
			{
				break;
			}
			//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
			global.stage_map_name[i] = global.real_stage_map_name[ii];
			global.stage_map_artist[i] = global.real_stage_map_artist[ii];
			global.stage_map_difficulty[i] = global.real_stage_map_difficulty[ii];
			global.stage_map_color[i] = global.real_stage_map_color[ii];
			global.stage_map_duration[i] = global.real_stage_map_duration[ii];
			global.stage_map_audio_name[i] = global.real_stage_map_audio_name[ii];
			global.stage_bpm[i] = global.real_stage_bpm[ii];
			global.stage_map_highlight_part[i] = global.real_stage_map_highlight_part[ii];
			global.n_rank[i] = global.real_n_rank[ii];
			global.n_rank_hardcore[i] = global.real_n_rank_hardcore[ii];
			global.n_score[i] = global.real_n_score[ii];
			global.n_score_hardcore[i] = global.real_n_score_hardcore[ii];
			global.n_favorite[i] = global.real_n_favorite[ii];
			global.n_artifact[i] = global.real_n_artifact[ii];
			global.detailed_difficulty[i] = global.real_detailed_difficulty[ii];
			global.obtainable_type[i] = global.real_obtainable_type[ii];
			global.requirement_level[i] = global.real_requirement_level[ii];
		}
	}
	else if argument0 = 2
	{
		global.total_map = load_custom_map_num();//"custom_map_file_"+string(i)의 파일 갯수로 확인 
	
		for(var i = 0; i < global.total_map; i++)
		{
			//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
			global.stage_map_name[i] = global.custom_stage_map_name[i]; //곡 제목 (문자열)
			global.stage_map_artist[i] = global.custom_stage_map_artist[i];
			global.stage_map_difficulty[i] = global.custom_stage_map_difficulty[i];
			global.stage_map_color[i] = global.custom_stage_map_color[i];
			global.stage_map_duration[i] = global.custom_map_duration[i];
			global.stage_map_audio_name[i] = global.custom_stage_map_audio_name[i]; //곡 파일명 (확장자 제외)
			global.stage_bpm[i] = global.custom_stage_bpm[i];
			global.stage_map_highlight_part[i] = global.custom_stage_map_highlight_part[i];
			global.n_rank[i] = global.custom_n_rank[i];
			global.n_rank_hardcore[i] = global.custom_n_rank_hardcore[i];
			global.n_score[i] = global.custom_n_score[i];
			global.n_score_hardcore[i] = global.custom_n_score_hardcore[i];
			global.n_favorite[i] = -1;
			global.n_artifact[i] = global.custom_n_artifact[i];
			global.detailed_difficulty[i] = global.custom_detailed_difficulty[i];
			global.obtainable_type[i] = global.custom_obtainable_type[i];
			global.requirement_level[i] = global.custom_requirement_level[i];
		}
	}
	else if (argument0 == 3)
	{
		var correction = 0, total_num = 0;
	
	
		for(var k = 0; k < global.origin_total_map; k++)
		{
			var __type = global.real_obtainable_type[k]
			if (global.artifact_owned[__type] >= global.real_requirement_level[k])
			{
				var kk = k-correction;
				global.unlocked_map_id[kk] = k
				//기존 모든 곡 항목에서 좋아하는 곡 목록으로 데이터 복사
				global.stage_map_name[kk] = global.real_stage_map_name[k];
				global.stage_map_artist[kk] = global.real_stage_map_artist[k];
				global.stage_map_difficulty[kk] = global.real_stage_map_difficulty[k];
				global.stage_map_color[kk] = global.real_stage_map_color[k];
				global.stage_map_duration[kk] = global.real_stage_map_duration[k];
				global.stage_map_audio_name[kk] = global.real_stage_map_audio_name[k];
				global.stage_bpm[kk] = global.real_stage_bpm[k];
				global.stage_map_highlight_part[kk] = global.real_stage_map_highlight_part[k];
				global.n_rank[kk] = global.real_n_rank[k];
				global.n_rank_hardcore[kk] = global.real_n_rank_hardcore[k];
				global.n_score[kk] = global.real_n_score[k];
				global.n_score_hardcore[kk] = global.real_n_score_hardcore[k];
				global.n_favorite[kk] = global.real_n_favorite[k];
				global.n_artifact[kk] = global.real_n_artifact[k];
				global.detailed_difficulty[kk] = global.real_detailed_difficulty[k];
				global.obtainable_type[kk] = global.real_obtainable_type[k];
				global.requirement_level[kk] = global.real_requirement_level[k];

				total_num++;
			}
			else
			{
				correction++;
			}
		}
		global.total_map = total_num
	}
	
	
	if global.b_map_list != global.n_map_list
	{
		
		n_stage = 0
		saved_n_stage = 2
		global.n_map_id = 0
		global.t_select_map = 2
		global.select_map = 2
		global.map_list_ui_position = global.n_map_list - global.b_map_list
		with(code)
		{
			if (object_index == code)
			{
				event_user(6)
			}
		}
		global.t_select_map = 2
		global.b_map_list = global.n_map_list
		audio_play_sound(common_sfx1,0,false,0.2*global.master_volume*global.sfx_volume)
		load_stage(global.stage_map_name[0],global.stage_map_artist[0],global.stage_map_audio_name[0],global.stage_map_color[0],global.stage_map_duration[0],global.stage_bpm[0])
	}
	

	if (global.title_menu_animation1 == -1)
	{
		//결과창 출력
		var check_new_song = 0;
		if (global.result_score != 0)
		{
			global.notice_title = "Result";
			var temp_highscore = (global.t_selected_difficulty == 1) ? global.real_n_score[global.n_map_id] : global.real_n_score_hardcore[global.n_map_id];
			global.unlocked_music_name_new_list[check_new_song] = "Rank";
			global.unlocked_music_name_new_list_color[check_new_song] = #ff1f77;
			global.unlocked_music_name_new_list_rightside[check_new_song] = string(global.result_rank);
			global.unlocked_music_name_new_list_color_rightside[check_new_song] = c_white
			check_new_song++;
		
			global.unlocked_music_name_new_list[check_new_song] = "Score";
			global.unlocked_music_name_new_list_color[check_new_song] = #fced00;
			global.unlocked_music_name_new_list_rightside[check_new_song] = string(global.result_score);
			global.unlocked_music_name_new_list_color_rightside[check_new_song] = c_white
			check_new_song++;
			
			global.unlocked_music_name_new_list[check_new_song] = "Hi-Score";
			global.unlocked_music_name_new_list_color[check_new_song] = #76bc00;
			global.unlocked_music_name_new_list_rightside[check_new_song] = string(temp_highscore);
			global.unlocked_music_name_new_list_color_rightside[check_new_song] = c_white
			check_new_song++;
		
		
			global.unlocked_music_name_new_list[check_new_song] = "[랭크("+string(global.result_rank)+") + 대쉬로 피한 탄막(x"+string(global.result_obstacle)+")에 의한 점수]";
			global.unlocked_music_name_new_list_color[check_new_song] = merge_color(c_white,c_black,0.2);
			check_new_song++;
		
			global.unlocked_music_name_new_list[check_new_song] = "___________________";
			global.unlocked_music_name_new_list_rightside[check_new_song] = "";
			global.unlocked_music_name_new_list_color[check_new_song] = c_white;
			check_new_song++;
			global.result_score = 0;
			global.show_new_songs = 1;
			global.t_b_alpha = -0.01;
			global.t_new_song_scroll = 0
			global.new_song_scroll = 0
		}
		
		
		for(var i = 0; i < global.origin_total_map; i++)
		{
			if (global.level >= global.real_requirement_level[i])
			{
				global.unlocked_music_name[i] = global.real_stage_map_name[i];
				if (global.unlocked_music_name[i] != global.b_unlocked_music_name[i])
				{
					global.b_unlocked_music_name[i] = global.unlocked_music_name[i];
					global.unlocked_music_name_new_list[check_new_song] = global.real_stage_map_name[i];
					global.unlocked_music_name_new_list_color[check_new_song] = merge_color(global.real_stage_map_color[i],c_white,0.5);
					global.unlocked_music_name_new_list_rightside[check_new_song] = "";
					check_new_song++
				}
			}
		
			show_debug_message(global.unlocked_music_name[i])
		}
	
		if (check_new_song > 0 || (global.acquired_skin >= 0 && global.unlocked_player_skin[global.acquired_skin] == 0))
		{
			//신 스킨 획득 메시지 출력
			if (global.acquired_skin >= 0 && global.unlocked_player_skin[global.acquired_skin] == 0)
			{
				global.unlocked_music_name_new_list[check_new_song] = "새로운 캐릭터 획득 - "+string(global.unlocked_player_skin_name[global.acquired_skin]);
				global.unlocked_music_name_new_list_color[check_new_song] = c_white;
				global.unlocked_music_name_new_list_rightside[check_new_song] = "";
				global.unlocked_player_skin[global.acquired_skin] = 3;
				check_new_song++
			}
			global.new_unlocked_map_num = check_new_song;
			//audio_play_sound(cleared_sfx,0,false,global.master_volume*global.sfx_volume*4)
		}
	}
}