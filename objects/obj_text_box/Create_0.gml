switch (room)
{
case rm_main:
	delete_timer = 0;
	slow_down = 15;
	text = "";
	global.vitesse_initiale_x = 0;
	global.vitesse_initiale_y = 0;
	global.raideur = 0;
	titre = "Vitesse initiale x en m/s";
	break;

case rm_game:
	if (global.defaut)
	{
		global.vitesse_initiale_x = 9;
		global.vitesse_initiale_y = -5.78;
		global.raideur            = 1000;
	}
	global.temps = 0;
	position_depart_y = 200;
	global.position_x = 1;
	position_y = position_depart_y;
	break;
}