/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!Triggered && instance_place(x, y, Player))
	{
		Triggered = true;
		audio_sound_gain(bgm_level, 0, 600);
		audio_sound_gain(bgm_boss, 0, 0);
		audio_sound_gain(bgm_boss2, 0, 0);
		Timer = 60;
	}
	
	if (Triggered && Timer-- == 0)
	{
		audio_sound_gain(bgm_boss, 1, 600);
		audio_play_sound(bgm_boss, 0, false);
		instance_create_layer(x, y - 192, "Decorations", BossSpider);
	}
	
	if (!Loop && Triggered && Timer < 0 && !audio_is_playing(bgm_boss))
	{
		Loop = true;
		audio_sound_gain(bgm_boss2, 1, 0);
		audio_play_sound(bgm_boss2, 0, true);
	}
	
	if (BossTimer == 0)
	{
		audio_sound_gain(bgm_boss, 0, 120);
		audio_sound_gain(bgm_boss2, 0, 120);
		instance_destroy(BossSpider);
	}