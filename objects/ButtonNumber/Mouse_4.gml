/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (PasswordMenu.Wait || PasswordMenu.Exit) return;
	
	image_index = 1;
	
	PasswordMenu.Password += Text;
	audio_play_sound(snd_item, 0, false, 0.6, 0, random_range(0.3, 0.8));