global.ressort_index = image_index;
timer++;
if (image_index >=4)
{
	image_speed = 1;
}
else if (image_index <= -1)
{
	image_speed = 0;
}
x = 20*global.position_x + 75;