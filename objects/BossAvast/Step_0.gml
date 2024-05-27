/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!Active && global.BackdoorIndex == 5)
	{	
		Active = true;
		Time = 32;
	}

	
	if (--Time == 0)
	{
		instance_destroy();
	}
	
	if (Time)
	{
		x += dsin(image_angle);
	}
	