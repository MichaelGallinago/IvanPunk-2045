/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	var CenterX = global.Width div 2;
	var CenterY = global.Height div 2;
	
	TargetX = clamp(Player.x - CenterX, 0, room_width  - global.Width + 16);
	TargetY = clamp(Player.y - CenterY, 0, room_height - global.Height + 16);
	
	SpeedX = (CameraX - TargetX) / 10;
	SpeedX = (max(0, abs(SpeedX) - 2)) * sign(SpeedX);
	SpeedY = (CameraY - TargetY) / 10;
	SpeedY = (max(0, abs(SpeedY) - 2)) * sign(SpeedY);
	
	CameraX -= SpeedX;
	CameraY -= SpeedY;
	
	camera_set_view_pos(view_camera[0], round(CameraX), round(CameraY));
	
	Time++;
	
	if (keyboard_check_pressed(ord("R")))
	{
		room_restart();
	}
	
	if (GameOver)
	{
		GameOverTime++;
		if (GameOverTime == 60)
		{
			audio_play_sound(bgm_gaster, 0, false, 0.5);
		}
		
		if (GameOverTime > 60)
		{
			Screen.ScaleX = random_range(0.5, 1.5);
			Screen.ScaleY = random_range(0.5, 1.5);
		}
		
		if (GameOverTime == 1200) 
		{
			game_end();
		}
	}
	