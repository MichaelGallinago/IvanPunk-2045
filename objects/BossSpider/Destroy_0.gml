/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	instance_create_depth(x, y, depth, Explosion);
	instance_create_layer(x, y, "Decorations", Vodka);
	for (var i = 0; i < 8; i++)
	{
		instance_destroy(Legs[i]);
	}
	audio_sound_gain(bgm_boss, 0, 120);
	audio_sound_gain(bgm_boss2, 0, 120);