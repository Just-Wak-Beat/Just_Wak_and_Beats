global.savepoint_text_t_alpha = 1

if global.checkpoint_text != "'W' 아티팩트를 획득하여, 다음으로 넘어가기"
{
	if global.mobile_mode = 1
	{
	global.checkpoint_text = "왼쪽 화면을 터치해 조이스틱으로 이동하기"
	}
	else
	{
	global.checkpoint_text = "방향키로 이동하기"
	}
}

global.t_bg_color = 1
global.t_bg_color_alpha = 1
global.artifact_type = 0
global.tutorial_now = 1