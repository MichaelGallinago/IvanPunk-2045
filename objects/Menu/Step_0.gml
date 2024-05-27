/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (Time++ < 100)
	{
		Size = animcurve_channel_evaluate(CurveChannel, Time / 100);
		y = PosY - Size * 200 + 160;
	}
	
	if (!(Time % 2))
	{
		with instance_create_depth(x, y, depth, Afterimage)
		{
			Font = font_cyberpunk;
			Text = other.Text1;
			Size = other.Size;
			depth = other.depth;
		}
		
		with instance_create_depth(x, y, depth, Afterimage)
		{
			Font = font_goblin;
			Text = other.Text2;
			Size = other.Size;
			depth = other.depth;
		}
	}
	
	if (!(Time % (4 / (ExitTimer + 1))) && (ExitTimer - 100) / 2 < 220)
	{
		with instance_create_depth(global.Width / 2, global.Height / 2 - 30, depth, Ball)
		{
			direction = random_range(0, 360);
			speed = 2;
		}
	}
	
	if (!Exit && Time > 150 && (keyboard_check_pressed(vk_anykey) || mouse_check_button(mb_any)))
	{
		Exit = true;
		audio_sound_gain(bgm_menu, 0, 1200);
		audio_play_sound(snd_boost, 0, false, 1, 0, 0.5);
	}
	
	ExitTimer += Exit;
	
	if (ExitTimer == 75)
	{
		audio_play_sound(snd_cardrive, 0, false, 1, 0, 0.2);
	}
	
	if (ExitTimer > 50)
	{
		if (instance_exists(Ball))
		{	
			Ball.speed = 2 + (ExitTimer - 50) / 50;
		}
	}
	
	if (ExitTimer > 100)
	{
		var shake = ExitTimer div 32;
		view_set_xport(view_current, irandom_range(-shake, shake));
		view_set_yport(view_current, irandom_range(-shake, shake));
		var value = (ExitTimer - 100) / 2;
		var colour = make_color_rgb(value, value, value);
		layer_background_blend(BackgroundID, colour);
		
		if (value > 255)
		{
			room_goto(room_level1);
		}
	}
	