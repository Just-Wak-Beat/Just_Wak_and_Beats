/// @description Insert description here
// You can write your code in this editor


if (global.timeline_stop == 1)
{
	draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_xscale,0,c_white,0.5);
	if (editor_mode_alpha > 0)
	{
		var tmp_angle = 180+image_angle-editor_mode_angle;
		draw_set_color(c_white);
		draw_set_alpha(editor_mode_alpha);
		draw_line_width(x,y,x+lengthdir_x(160,tmp_angle),y+lengthdir_y(160,tmp_angle),3);
	}
	
	editor_mode_timer ++;
	editor_mode_alpha += (0 - editor_mode_alpha)*0.05;
	editor_mode_angle += ed_arg3;
	if (editor_mode_timer == 1)
	{
		editor_mode_angle = 0;
		editor_mode_alpha = 1;
	}
	
	if (editor_mode_timer > 100)
	{
		editor_mode_timer = 0;
	}
}

