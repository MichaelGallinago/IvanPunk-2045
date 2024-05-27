/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	draw_sprite(sprite_index, 0, x + (PasswordMenu.Time * Speed % global.Width), y);
	draw_sprite(sprite_index, 0, x + (PasswordMenu.Time * Speed % global.Width - global.Width * sign(Speed)), y);
	