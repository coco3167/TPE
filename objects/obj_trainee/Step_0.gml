if global.bool_vitesse_initiale_y
{
	instance_destroy();
}
image_alpha = image_alpha -0.33 + 0.01*abs(global.yspeed);
image_xscale = image_xscale * 0.95;
image_yscale = image_yscale * 0.95;
if image_alpha<=0
{
	instance_destroy();
}