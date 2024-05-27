/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	Size = (11 - clamp(Menu.Time - 100, 0, 50) / 5) * 0.8 * max(0, (50 - Menu.ExitTimer) / 50);
	
	if (!(Menu.Time % 2))
	{
		with instance_create_depth(x, y, depth, Afterimage)
		{
			Font = font_cyberpunk;
			Text = other.Text;
			Size = other.Size;
			depth = other.depth;
		}
	}