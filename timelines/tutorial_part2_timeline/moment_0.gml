create_laser(irandom_range(global.c_x,global.c_w),global.c_y,27,20,4,2,2,180)

global.hp = 5;
global.savepoint_text_t_alpha = 1
global.t_w_alpha = 0;
global.t_bg_color = 1
global.t_bg_color_alpha = 1
set_bg_color_with_effect($FF161510,obj_player.x,obj_player.y,1);
camera_focus_on(-4,-4,1)

if (global.mobile_mode == 0)
{
	global.checkpoint_text = "ESC를 눌러 환경설정 열기"
}

