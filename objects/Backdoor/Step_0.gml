/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!image_index && instance_place(x, y, Player))
	{
		image_index = 1;
		global.BackdoorIndex = Index;
		audio_play_sound(snd_item, 0, false);
	}
	