if global.click<17 and global.sw
{
	global.click++;
	global.sw = false;
	letter = 0;
}
else if global.click == 17 and global.sw
{
	room_restart()
}