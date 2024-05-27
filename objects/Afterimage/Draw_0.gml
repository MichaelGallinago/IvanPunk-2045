/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	draw_set_font(Font);
	draw_set_halign(fa_center);
	var size = Size * max(0, (50 - Menu.ExitTimer) / 50);
	draw_text_transformed_color(x, y, Text, size, size, 0, c_gray, c_gray, c_gray, c_gray, Alpha);
	