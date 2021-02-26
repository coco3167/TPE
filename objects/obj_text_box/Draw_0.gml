switch(room)
{
case rm_main:
	draw_self();
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(x,y,text);
	draw_text(room_width/2,room_height/3,titre);
	break;

case rm_game:
	draw_set_color(c_black);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_transformed(5,30,"Vitesse initiale x: " + string(global.vitesse_initiale_x) + "m/s",0.5,0.5,0);
	draw_text_transformed(5,55,"Vitesse initiale y: " + string(-global.vitesse_initiale_y) + "m/s",0.5,0.5,0);
	draw_text_transformed(5,80,"Coefficient de raideur: " + string(global.raideur),0.5,0.5,0);
	draw_set_color(c_teal);
	draw_set_halign(fa_right);
	draw_text_transformed(1010,30,"Position temps reel x: " + string(0.1*global.position_x) + "m",0.5,0.5,0);
	draw_text_transformed(1010,55,"Position temps reel y: " + string(0.1*sqrt(power(position_y-768,2))) + "m",0.5,0.5,0);
	if global.bool_vitesse_initiale_y
	{
		draw_set_color(c_red);
		draw_arrow(obj_ressort.x + 75,obj_ressort.y,obj_ressort.x +75,obj_ressort.y + 65,20);
		draw_text_transformed(obj_ressort.x + 100,obj_ressort.y,string(-round(global.elongation)) + "cm",0.5,0.5,90);
	}
	break;
}