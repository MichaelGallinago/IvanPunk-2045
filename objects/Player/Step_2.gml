/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!visible) return;
	
	if (Grounded) image_angle = 0;
	image_angle -= SpeedX * 2;
	
	if (Level.Time % 8 || abs(SpeedX) < 3 && abs(SpeedY) < 3) return;
	
	with (instance_create_depth(x, y, depth, PlayerAfterimage))
	{
		image_angle = other.image_angle;
	}