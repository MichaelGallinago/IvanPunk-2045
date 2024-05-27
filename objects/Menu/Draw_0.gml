/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	draw_set_font(font_cyberpunk);
	draw_set_halign(fa_center);
	var size = animcurve_channel_evaluate(CurveChannel, Size) * max(0, (50 - Menu.ExitTimer) / 50);
	draw_text_transformed_colour(x + 2, y + 2, Text1, size, size, 0, c_gray, c_gray, c_gray, c_gray, 1);
	draw_set_font(font_goblin);
	draw_text_transformed_colour(x + 2, y + 2, Text2, size, size, 0, c_gray, c_gray, c_gray, c_gray, 1);
	draw_set_font(font_cyberpunk);
	draw_text_transformed(x, y, Text1, size, size, 0);
	draw_set_font(font_goblin);
	draw_text_transformed(x, y, Text2, size, size, 0);