/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (gravity == 0 && y < Player.y && Player.y - y <= 128 && abs(Player.x - x) <= 16)
	{
		gravity = 0.25;
	}
	
	if (gravity != 0)
	{
		Timer++;
	}
	
	if (Timer = 300) 
	{
		instance_destroy();
	}
	