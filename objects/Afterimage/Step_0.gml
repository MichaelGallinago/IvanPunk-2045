/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	Alpha -= 0.1;
	Size += 0.01;
	
	if (Alpha <= 0)
	{
		instance_destroy();
	}
	