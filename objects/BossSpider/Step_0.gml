/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	for (var i = 0; i < 4; i++)
	{
		var angle = dsin(Level.Time + i * 30) * 10 * (i + 1);
		for (var j = -1; j <= 1; j += 2)
		{
			with (Legs[i + (j > 0) * 4])
			{
				image_angle = j * angle;
				x = other.x;
				y = other.y;
			}
		}
	}
	
	image_angle = dsin(Level.Time) * 10;
	
	if (y < BossTrigger.y + 64)
	{
		y++;
	}
	else
	{
		if (!(Level.Time % 120))
		{
			instance_create_depth(x, y, depth + 1, Spider);
			audio_play_sound(snd_item, 0, false, 1, 0, random_range(0.8, 1.5));
		}
	}
	
	if (x != Player.x)
	{
		x += sign(Player.x - x);
	}
	