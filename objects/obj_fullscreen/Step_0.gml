if bool_fire
{
	effect_create_above(ef_smokeup, mouse_x, mouse_y-25, choose(0, 0.25, 0.5), c_dkgray);
}
if keyboard_check_pressed(vk_escape)
{
	game_end();
}
index_feu++;