/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	Time++;
		
	if (!mouse_check_button(mb_left))
	{
		ButtonNumber.image_index = 0;
	}
	
	if (Wait--)
	{
		if (!Wait)
		{
			if (Exit)
			{
				audio_stop_sound(bgm_password_menu);
			}
			Password = "";
		}
		return;
	}	
	
	if (string_length(Password) >= 8)
	{
		Password = string_copy(Password, 1, 8);
		
		Wait = 120;
		
		if (Password == "99999999" || Password == "88888888")
		{
			Password = "Wrong";
			audio_play_sound(snd_error, 0, false, 1, 0, 0.5);
			return;
		}
		
		var month   = 99 - int64(string_copy(Password, 1, 2));
		var seconds = 99 - int64(string_copy(Password, 3, 2));
		var hours   = 99 - int64(string_copy(Password, 5, 2));
		var minutes = 99 - int64(string_copy(Password, 7, 2));
		if (minutes > 59 || hours > 23 || seconds > 59 || month > 12)
		{
			Password = "Wrong";
			audio_play_sound(snd_error, 0, false, 1, 0, 0.5);
			return;
		}
		
		Password = "Correct";
		audio_play_sound(snd_defeatrun, 0, false, 1, 0, 0.25);
		Exit = true;
	}
	
	if (Exit && TextPanel.x > global.Width + TextPanel.sprite_width)
	{
		room_goto(room_menu);
	}