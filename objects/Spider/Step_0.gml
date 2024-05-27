/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!image_speed && y >= 1812)
	{
		y = 1812;
		gravity = 0;
		vspeed = 0;
		image_speed = 1;
		hspeed = x - Player.x >= 0 ? -2 : 2;
	}
	
	if (image_speed && (x <= 2788 || x >= 3132))
	{
		instance_destroy();
		with (instance_create_depth(x, y, depth, Explosion))
		{
			image_xscale = 0.5;
			image_yscale = 0.5;
		}
	}
	