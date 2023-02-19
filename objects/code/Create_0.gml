/// @description Insert description here
// You can write your code in this editor
global.version = "Beta 2.03"
global.low_graphics = false;
global.dev_mode = 1
alarm[11] = 1


////////////////////////////////////////////////
window_set_fullscreen(true)
window_set_size(1920,1080)
window_set_fullscreen(true)
window_set_size(1920,1080)
window_set_max_width(1920)
window_set_max_height(1080)
surface_resize(application_surface, display_get_width (), display_get_height ());
//show_debug_overlay(true)


//discord presence
#macro DISCORD_APP_ID "1073730369964220527"

ready = false;
discord_presence_update = 0
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
//show_error("NekoPresence init fail.", true);
}




global.player_skin = 0
global.b_player_skin = 0
global.master_volume = 1
global.bgm_volume = 0.5
global.sfx_volume = 1
global.select_map = 2 //global.show_music_title = 0로 게임 시작
global.t_select_map = 2
global.die_sfx = wakgood_hurt
global.show_progress_bar = 0
progress_icon_alpha = 0
progress_alpha = 0
progress_alpha_sec = 0


global.artifact_type = 0
global.show_music_title = 0
global.checkpoint_text = -4
global.n_music_title = -4
global.n_music_artist = -4
global.n_music_id = -4;
global.fav_music_num = 0
global.n_music_name = -4
global.n_music_instance = -4
global.map_color = -4
global.t_bg_color_alpha = 1
global.t_bg_color = 1
global.background_color = c_black
global.map_speed = 0
global.t_map_speed = 0
global.map_speed_y = 0
global.ui_alpha = 1
global.t_map_speed_y = 0

global.origin_total_map = 10
global.total_map = global.origin_total_map
global.music_duration = 99999
global.bpm = 172






for(var i = 0; i <= 7; i++)
{
global.artifact_owned[i] = 0;
}


//곡 정보
for(var i = 0; i <= global.total_map; i++)
{
global.fav_map_id[i] = -4;


//실제 리스트에만 표기되는 곡
global.stage_map_name[i] = -4;
global.stage_map_artist[i] = -4;
global.stage_map_difficulty[i] = -4;
global.stage_map_color[i] = -4;
global.stage_map_duration[i] = -4;
global.stage_map_audio_name[i] = -4;
global.stage_bpm[i] = -4;
global.stage_map_highlight_part[i] = -4
global.n_rank[i] = "--";
global.n_favorite[i] = -1;
global.n_artifact[i] = "X";
global.detailed_difficulty[i] = -4
global.requirement_type[i] = -4
global.requirement_number[i] = -4




//모든곡 정보
global.real_stage_map_name[i] = -4;
global.real_stage_map_artist[i] = -4;
global.real_stage_map_difficulty[i] = -4;
global.real_stage_map_color[i] = -4;
global.real_stage_map_duration[i] = -4;
global.real_stage_map_audio_name[i] = -4;
global.real_stage_bpm[i] = -4;
global.real_stage_map_highlight_part[i] = -4
global.real_n_rank[i] = "--";
global.real_n_favorite[i] = -1;
global.real_n_artifact[i] = "X";
global.real_detailed_difficulty[i] = -4
global.real_requirement_type[i] = 2
global.real_requirement_number[i] = -4
}


//왁트 모르즈비
global.real_stage_map_name[0] = "왁트모르즈비";
global.real_stage_map_artist[0] = "영바이브 (아버 편곡)";
global.real_stage_map_difficulty[0] = "Tutorial";
global.real_stage_map_color[0] = $FFFFA232;
global.real_stage_map_duration[0] = 99999;
global.real_stage_map_audio_name[0] = "tutorial_part1";
global.real_stage_bpm[0] = 29;
global.real_stage_map_highlight_part[0] = 0;
global.real_detailed_difficulty[0] = 0;
global.real_requirement_type[0] = 0
global.real_requirement_number[0] = 0

//왁굳향 100% 첨가
global.real_stage_map_name[1] = "왁굳향100% 첨가";
global.real_stage_map_artist[1] = "제이타지";
global.real_stage_map_difficulty[1] = "Normal";
global.real_stage_map_color[1] = $FF007F16;
global.real_stage_map_duration[1] = 6900;
global.real_stage_map_audio_name[1] = "wakgoodhyang";
global.real_stage_bpm[1] = 82;
global.real_stage_map_highlight_part[1] = 21;
global.real_detailed_difficulty[1] = 2;
global.real_requirement_type[1] = 0
global.real_requirement_number[1] = 1

//밤가이
global.real_stage_map_name[2] = "밤가이!!";
global.real_stage_map_artist[2] = "나쁜개츠비 (아버 편곡)";
global.real_stage_map_difficulty[2] = "Hard";
global.real_stage_map_color[2] = #bb631d;
global.real_stage_map_duration[2] = 5411;
global.real_stage_map_audio_name[2] = "bamguy";
global.real_stage_bpm[2] = 151;
global.real_stage_map_highlight_part[2] = 54.5;
global.real_detailed_difficulty[2] = 3;
global.real_requirement_type[2] = 0
global.real_requirement_number[2] = 3

//왁리오
global.real_stage_map_name[3] = "왁리오 (Wak'Lio)";
global.real_stage_map_artist[3] = "Team Pangenie (아버 편곡)";
global.real_stage_map_difficulty[3] = "Expert";
global.real_stage_map_color[3] = #415c84;
global.real_stage_map_duration[3] = 4482;
global.real_stage_map_audio_name[3] = "wakrio";
global.real_stage_bpm[3] = 122;
global.real_stage_map_highlight_part[3] = 41.46;
global.real_detailed_difficulty[3] = 4;
global.real_requirement_type[3] = 0
global.real_requirement_number[3] = 4

//후쿠로우
global.real_stage_map_name[4] = "부엉이 (Cover by 아이네 INE)";
global.real_stage_map_artist[4] = "Original by KOKIA / Inst by Kupon";
global.real_stage_map_difficulty[4] = "Easy";
global.real_stage_map_color[4] = #3d333e;
global.real_stage_map_duration[4] = 7600;
global.real_stage_map_audio_name[4] = "fukurou";
global.real_stage_bpm[4] = 45;
global.real_stage_map_highlight_part[4] = 46;
global.real_detailed_difficulty[4] = 1;
global.real_requirement_type[4] = 0
global.real_requirement_number[4] = 1
global.fukurou_snow_effect = 0

//뒤틀린 사랑
global.real_stage_map_name[5] = "뒤틀린 사랑";
global.real_stage_map_artist[5] = "Mixing by 마이보틀 / Original by Porter Robinson, Madeon";
global.real_stage_map_difficulty[5] = "Expert";
global.real_stage_map_color[5] = #219cac;
global.real_stage_map_duration[5] = 5791;
global.real_stage_map_audio_name[5] = "shelter";
global.real_stage_bpm[5] = 45;
global.real_stage_map_highlight_part[5] = 39.34;
global.real_detailed_difficulty[5] = 5;
global.real_requirement_type[5] = 0
global.real_requirement_number[5] = 4

//느그란 또리스모
global.real_stage_map_name[6] = "느그란 또리스모";
global.real_stage_map_artist[6] = "갉갉";
global.real_stage_map_difficulty[6] = "Normal";
global.real_stage_map_color[6] = #2fdc40;
global.real_stage_map_duration[6] = 6188;
global.real_stage_map_audio_name[6] = "turisumo";
global.real_stage_bpm[6] = 160;
global.real_stage_map_highlight_part[6] = 6;
global.real_detailed_difficulty[6] = 2;
global.real_requirement_type[6] = 0
global.real_requirement_number[6] = 2
global.turisumo_effect = 0
global.turisumo_effect_2 = 0
global.turisumo_effect_scale = 0
global.t_turisumo_effect_scale = 0
global.turisumo_effect_3 = 0
turisumo_bpm_timer = 0
turisumo_road_sign_delay = 0


//Re:wind
global.real_stage_map_name[7] = "RE:WIND";
global.real_stage_map_artist[7] = "Arranged by 아버 / Original remix by Hyeok, Elestee";
global.real_stage_map_difficulty[7] = "Expert";
global.real_stage_map_color[7] = #d892a6;
global.real_stage_map_duration[7] = 7495;
global.real_stage_map_audio_name[7] = "rewind";
global.real_stage_bpm[7] = 40;
global.real_stage_map_highlight_part[7] = 12.80;
global.real_detailed_difficulty[7] = 5;
global.real_requirement_type[7] = 1
global.real_requirement_number[7] = 1


//아이패드
global.real_stage_map_name[8] = "아이패드";
global.real_stage_map_artist[8] = "뾰복";
global.real_stage_map_difficulty[8] = "Normal";
global.real_stage_map_color[8] = #5595ff
global.real_stage_map_duration[8] = 4316;
global.real_stage_map_audio_name[8] = "ipad";
global.real_stage_bpm[8] = 60;
global.real_stage_map_highlight_part[8] = 0;
global.real_detailed_difficulty[8] = 2;
global.real_requirement_type[8] = 0
global.real_requirement_number[8] = 1
global.ipad_random_xx = -4
global.ipad_random_xspeed = -4
global.ipad_random_yspeed = -4
global.ipad_effect = 0


//Phony
global.real_stage_map_name[9] = "Phony (Cover by 비챤 VIichan)";
global.real_stage_map_artist[9] = "Mixing by Min / Original by Tsumiki";
global.real_stage_map_difficulty[9] = "Hard";
global.real_stage_map_color[9] = #757c45
global.real_stage_map_duration[9] = 5136;
global.real_stage_map_audio_name[9] = "phony";
global.real_stage_bpm[9] = 170;
global.real_stage_map_highlight_part[9] = 15.72;
global.real_detailed_difficulty[9] = 3;
global.real_requirement_type[9] = 0
global.real_requirement_number[9] = 1
global.phony_effect = 0
phony_y = 0
phony_t_y = 1
phony_y_timer = 0






music_title_alpha = 0




global.player_color = $FF4AB539
global.n_progress = 0


global.start_point = 0
for(var i = 0; i <= 5; i++)
{
global.savepoint_position[i] = -4
global.savepoint_color[i] = global.map_color
}
global.respawn_point_xx = -4
global.respawn_point_yy = -4


global.camera_sx = -4
global.w_alpha = 0
global.t_w_alpha = -0.01


global.rewind = 0
global.clock_alpha_1 = 0
global.clock_alpha_2 = 0

global.c_w = -4
global.c_h = -4

global.c_x = -4
global.c_y = -4


global.rewind_effect_line_angle = 0
global.savepoint_text_alpha = 0
global.savepoint_text_t_alpha = 0
for(var i = 0; i < 16; i++)
{
global.rewind_effect_line_pos[i] = -4
}



//play highlight (music)
global.highlight_time = 0
global.highlight_music = -4;
global.highlight_music_volume = 0;
play_highlight = 1
n_stage = 0
gamestart = 0
gamestart_anime = 0
instance_create_depth(0,0,0,obj_album_ui)





//tutorial
global.n_playing_tutorial = 0
global.tutorial_n_stage = 0


//rank system
global.total_died_here = 0
randomize()



//favorite animation
global.fav_anime = 0

//현재 로드중인 맵 리스트
global.n_map_list = 0
global.b_map_list = 0

//맵 리스트 로드
load_musicList(0)
alarm[2] = 3