/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if (!End && global.BackdoorIndex == 5)
	{
		End = true;
		Active = true;
		RotateSpeed = 15;
		speed = 0.75;
		x = EsetBlocker.x;
		y = EsetBlocker.y - 64;
	}

	if (Active)
	{	
		if (abs(y - 30 - EsetBlocker.y) < 70 && abs(x - EsetBlocker.x) < 120)
		{
			instance_destroy();
			instance_create_depth(x, y, depth - 1, Explosion);
			return;
		}
		
		image_angle += RotateSpeed;
		direction = point_direction(x, y, Player.x, Player.y);
	}
	else if (abs(x - Player.x) <= 32 && Player.y - y <= 128)
	{
		Active = true;
		speed = 0.75;
		audio_play_sound(snd_eset, 0, false, 1.5);
		RotateSpeed = 15;
	}