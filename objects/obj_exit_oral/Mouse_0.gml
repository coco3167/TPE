if (global.click == 0)
{
	window_set_cursor(cr_default);
	room_goto(rm_depart);
	audio_play_sound(snd_select,2,0);
}