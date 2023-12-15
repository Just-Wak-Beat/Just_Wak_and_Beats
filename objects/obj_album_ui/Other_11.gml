/// @description 메인 매뉴 처음 노래 선택 알고리즘
// You can write your code in this editor


var most_played_index = 0;
var most_played_playtime = 0;
var total_playtime = 0;


var probablity = 0;
for(var i = 1; i < global.origin_total_map; i++)
{
	var tmp_pt = (global.real_stage_playtime[i] < 0) ? 0 : global.real_stage_playtime[i];
	total_playtime += tmp_pt;
	show_debug_message(tmp_pt);
	if (most_played_playtime < tmp_pt)
	{
		most_played_index = i;
		most_played_playtime = tmp_pt;
	}
}

show_debug_message("모든 곡 총 플레이 횟수 : "+string(total_playtime));

for(var i = 0; i <= global.origin_total_map+total_playtime*2; i++)
{
	probablity[i] = 1;
}

var index = 0;
for(var i = 1; i < global.origin_total_map; i++)
{
	var tmp_pt = (global.real_stage_playtime[i] < 0) ? 0 : global.real_stage_playtime[i];
	for(var ii = 0; ii <= tmp_pt*2; ii++)
	{
		probablity[index] = i;
		show_debug_message(i);
		index++;
	}
}
	

var index2 = irandom_range(0,global.origin_total_map+total_playtime*2-1)
//show_debug_message("n = "+string(index2)+" / "+string(probablity[index2]));
var return_value = probablity[index2];





if (global.tutorial_played <= 0)
{
	code.n_stage = 0;
}
else
{
	code.n_stage = return_value;
}


global.background_color = merge_color(global.map_color,c_black,0.9)
if (global.background_color == c_black)
{
	global.background_color = #1f1f1f
}