if global.bool_boule
{
	global.bool_vitesse_initiale_y = true;
	Ec = (power(global.vitesse_initiale_y*0.01,2)-(timer/room_speed*9.81))*195;
	global.elongation = Ec/global.raideur;
	audio_play_sound(snd_collision,2,0);
	if global.elongation<1000 and global.elongation>0
	{
		global.bool_boule = false;
	}
	else if global.elongation<2000
	{
		image_index++;
		global.bool_boule = false;
	}
	else if global.elongation<8000
	{
		image_index =+ 2;
		global.bool_boule = false;
	}
	else if global.elongation<8000*16
	{
		image_index =+ 3;
		global.bool_boule = false;
	}
	else if global.elongation<8000*32
	{
		image_index =+ 4;
		global.bool_boule = false;
	}
	else
	{
		image_index =+ 5;
		global.bool_boule = false;
	}
}