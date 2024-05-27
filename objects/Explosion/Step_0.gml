/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	if (!Done)
	{
		Done = true;
		audio_play_sound(image_xscale == 1 ? snd_badexplosion : snd_explosion_firework_bc, 0, false);
	}
	