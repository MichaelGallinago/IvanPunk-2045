/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (keyboard_check_pressed(ord("F")))
	{
		window_set_fullscreen(!window_get_fullscreen());
	}
	
	if (keyboard_check_pressed(ord("C")))
	{
		global.ColourIndex = (global.ColourIndex + 1) % array_length(Colours);
	}