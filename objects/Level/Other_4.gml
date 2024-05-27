/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	audio_stop_all();
	audio_sound_gain(bgm_level, 0, 0);
	audio_sound_gain(bgm_level, 1, 300);
	audio_play_sound(bgm_level, 0, true, 1, 0, 1);
	
	var CenterX = global.Width div 2;
	var CenterY = global.Height div 2;
	
	TargetX = clamp(Player.x - CenterX, 0, room_width);
	TargetY = clamp(Player.y - CenterY, 0, room_height);
	
	CameraX = TargetX;
	CameraY = TargetY;
	
	Time = 0;
	
	GameOver = false;
	GameOverTime = 0;