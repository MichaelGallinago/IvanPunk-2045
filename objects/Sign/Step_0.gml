/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	switch (State)
	{
		case 0:
			if (point_distance(x, y, Player.x, Player.y) <= 40)
			{
				State++;
			}
		break;
		case 1:
			image_yscale += 0.2;
			image_xscale -= 0.15;
			if (image_yscale == 2)
			{
				State++;
			}
		break;
		case 2:
			image_yscale -= 0.2;
			image_xscale += 0.1;
			if (image_yscale == 1)
			{
				State++;
			}
		break;
	}
	
	y = PosY + dsin(Level.Time * 2 + 90 * image_index) * 4;