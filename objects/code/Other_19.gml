/// @description 플레이어 전체 랭킹
// You can write your code in this editor
automatic_leaderboard_cancle = 0;

var my_ranking_num = 0;
if !ds_list_empty(global.gmscoreboard_scores[global.player_leaderboard_difficulty])
{
	//show_message_log("ds_list_size : "+string(ds_list_size(global.gmscoreboard_scores[global.player_leaderboard_difficulty])))
	for(var i = 0; i < ds_list_size(global.gmscoreboard_scores[global.player_leaderboard_difficulty]); i++)
	{
		show_debug_message("명예의 전당 불러오기 : "+string(i))
		var tmp_list = ds_list_find_value(global.gmscoreboard_scores[global.player_leaderboard_difficulty], i);
		var temp_name = tmp_list[? "player"];
		if (temp_name == "" || temp_name == " ")
		{
			temp_name = "--";
		}
		var temp_score = tmp_list[? "score"];
		if (temp_score == "" || temp_score == " " || temp_score == "0" || temp_score == "1" || temp_score == 1 || temp_score == 0)
		{
			temp_score = 0;
			temp_name = "--";
		}
		else
		{
			temp_score = real(temp_score);
		}
		
		
		if (global.nickname == temp_name)
		{
			my_ranking_num = i+1;
		}
		
		if (i < 9)
		{
			decode_nametag(temp_name);
			var temp_real_name = global.nametag_script_return0;
			var temp_text_code = global.nametag_script_return1;
			var text_code_col = global.nametag_script_return2;
			var	add_nametag = global.nametag_script_return3;
			var temp_rank = i+1;
			
			global.unlocked_music_name_new_list[i] = string(temp_rank)+". "+string(temp_real_name+add_nametag);
			global.unlocked_music_name_new_list_rightside[i] = string(convert_score_to_rank(temp_score,1))+" | "+string(numbers_with_comma(temp_score));
			global.unlocked_music_name_new_list_color[i] = text_code_col;
		}
	}
}

if (my_ranking_num == 0)
{
	my_ranking_num = "순위권 밖]";
}
else
{
	my_ranking_num = string(my_ranking_num)+"위]";
}

decode_nametag(global.nickname);
var temp_real_name = global.nametag_script_return0;
var temp_text_code = global.nametag_script_return1;
var text_code_col = global.nametag_script_return2;
var	add_nametag = global.nametag_script_return3;
var temp_score = global.total_score_normal+global.total_score_hardcore;
global.unlocked_music_name_new_list[7] = "___";
global.unlocked_music_name_new_list[8] = "[현재 내 순위 - "+string(my_ranking_num);
global.unlocked_music_name_new_list_color[8] = $FF56D2FF;
global.unlocked_music_name_new_list[9] = string(temp_real_name+add_nametag);
global.unlocked_music_name_new_list_rightside[9] = string(convert_score_to_rank(temp_score,1))+" | "+string(numbers_with_comma(temp_score));
global.unlocked_music_name_new_list_color[9] = text_code_col;

global.new_unlocked_map_num = 10;

