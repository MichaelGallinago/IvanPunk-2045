/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	draw_set_font(font_cyberpunk);
	draw_set_halign(fa_center);
	var alpha = clamp(Menu.Time - 100, 0, 50) / 50;
	
	draw_text_transformed_colour(x + 2, y + 2 - Size * 16 + 12, Text, Size, Size, 0, c_gray, c_gray, c_gray, c_gray, alpha);
	draw_text_transformed_colour(x, y - Size * 16 + 12, Text, Size, Size, 0, c_white, c_white, c_white, c_white, alpha);
	