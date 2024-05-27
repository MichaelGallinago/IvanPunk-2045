/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (Timer--)
	{
		image_xscale += 0.01;
		image_yscale += 0.01;
	}
	
	image_angle = 20 * dsin(Level.Time);
	