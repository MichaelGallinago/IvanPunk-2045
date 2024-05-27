/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	draw_clear(c_black);
	
	if (instance_exists(Level) && Level.GameOverTime >= 1140) return;

	application_surface_draw_enable(true);
	draw_surface_ext(application_surface, global.Width / 2 * (ScaleX - 1),
		global.Height / 2 * (ScaleY - 1), ScaleX, ScaleY, 0, Colours[global.ColourIndex], 1);
	application_surface_draw_enable(false);
	