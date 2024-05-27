/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (Timer < 0 && BossTimer >= -60)
	{
		BossTimer--;
		var timer = max(0, BossTimer);
		var PosX = round(Level.CameraX) + global.Width div 2;
		var PosY = round(Level.CameraY);
		draw_set_font(font_goblin);
		var seconds = string(timer div 60 % 60);
		if (string_length(seconds) == 1)
		{
			seconds = "0" + seconds;
		}
		draw_text_transformed(PosX, PosY - 32 + min(80, (5400 - timer)) div 2, "Antivirus update via " 
			+ string(timer div 60 div 60) + ":" + seconds, 0.5, 0.5, 0);
	}