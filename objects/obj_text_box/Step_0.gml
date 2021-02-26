switch(room)
{
case rm_main:
	if(keyboard_check(vk_anykey) and string_length(text)<6)
	{
		text = text + string(keyboard_string);
		keyboard_string = "";
	}

	if(keyboard_check(vk_backspace) and keyboard_check_pressed(vk_backspace) and delete_timer==2)
	{
		text = string_delete(text,string_length(text),1);
		delete_timer = 0;
		keyboard_string = "";
	}

	if(keyboard_check_pressed(vk_backspace))
	{
		text = string_delete(text,string_length(text),1);
		keyboard_string = "";
		delete_timer = -4;
	}

	if(delete_timer!=2)
	{
		delete_timer ++;
	}
	if(slow_down!=15)
	{
		slow_down++;
	}
	if(keyboard_check(vk_enter) and slow_down==15)
	{
		audio_play_sound(snd_select,2,0);
		switch (titre)
		{
		case "Vitesse initiale x en m/s":
			global.vitesse_initiale_x = real(text);
			titre = "Vitesse initiale y en m/s";
			text = "";
			slow_down = 0;
			break;
		
		case "Vitesse initiale y en m/s":
			global.vitesse_initiale_y = -real(text);
			titre = "Coefficient de raideur (de l'ordre de 10)";
			text = "";
			slow_down = 0;
			break;
		
		case "Coefficient de raideur (de l'ordre de 10)":
			global.raideur = real(text);
			titre = "";
			text = "";
			slow_down = 0;
			break;
		}
	}
	if(titre=="")
	{
		room_goto(rm_game)
	}
	break;

case rm_game:
	if global.bool_boule
	{
		position_y = ((-1/2)*(-98)*power(global.position_x/global.vitesse_initiale_x,2)+global.vitesse_initiale_y*(global.position_x/global.vitesse_initiale_x))+position_depart_y;
		temps = global.position_x/global.vitesse_initiale_x;
		global.position_x++;
	}
	else
	{
		break;
	}
}