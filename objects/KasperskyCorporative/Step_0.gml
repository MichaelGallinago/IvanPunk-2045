/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (hspeed == 0 && Player.y > y && Player.x > x && abs(x - Player.x) < 240)
	{
		hspeed = 1;
	}
	
	if (x >= BSOD.x)
	{
		instance_destroy();
		instance_create_depth(x, y, depth - 1, Explosion);
	}