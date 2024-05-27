/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	application_surface_draw_enable(false);
	
	global.ColourIndex = 0;
	global.BackdoorIndex = 0;
	global.Width  = 480;
	global.Height = 270;
	
	audio_group_load(audiogroup_default);
	audio_group_set_gain(audio_sound_get_audio_group(bgm_level), 0.5, 0);
	