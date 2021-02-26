if (room == rm_depart or room == rm_game or room == rm_main)
{
	if not audio_is_playing(snd_exterieur) and not audio_is_playing(snd_Saria) and not audio_is_playing(snd_zelda_intro) and not audio_is_playing(snd_tempete) and not audio_is_playing(snd_gerudo)
	{
		audio_stop_all();
		num_sound = choose(1,2,3,4,5);
		switch(num_sound)
		{
		case 1:
			audio_play_sound(snd_Saria,1,0);
			break;

		case 2:
			audio_play_sound(snd_tempete,1,0);
			break;

		case 3:
			audio_play_sound(snd_gerudo,1,0);
			break;
	
		case 4:
			audio_play_sound(snd_zelda_intro,1,0);
			break;
	
		case 5:
			audio_play_sound(snd_exterieur,1,0);
			break;
		}
	}
}
else if click_call!=global.click
{
	audio_sound_set_track_position(snd_oral_TPE,longueur_finale)
	audio_resume_sound(snd_oral_TPE);
	alarm[0] = longueur[global.click]*room_speed;
	click_call = global.click;
	longueur_finale =+ longueur[global.click];
}