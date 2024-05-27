/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	if (!visible) return;
	
	if ((Grounded || SaveJumpTime-- || DoubleJump) && (keyboard_check_pressed(vk_space) 
		|| keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)))
	{
		SpeedY = -4;
		if (Grounded)
		{
			audio_play_sound(snd_jump, 0, false, 1, 0, random_range(0.8, 1.5));
			Grounded = false;
		}
		else if (SaveJumpTime)
		{
			audio_play_sound(snd_jump, 0, false, 1, 0, random_range(0.8, 1.5));
			SaveJumpTime = 0;
		}
		else
		{
			audio_play_sound(snd_double_jump, 0, false, 1, 0, random_range(0.8, 1.5));
			DoubleJump = false;
		}
	}
	else if (Grounded && (keyboard_check(vk_space) || keyboard_check(ord("W")) || keyboard_check(vk_up)))
	{
		SpeedY -= 4;
		Grounded = false;
	}
	
	
	if (keyboard_check(ord("D")) || keyboard_check(vk_right))
	{
		SpeedX = min(SpeedX + Acceleration, 8);
	}
	
	if (keyboard_check(ord("A")) || keyboard_check(vk_left))
	{
		SpeedX = max(SpeedX - Acceleration, -8);
	}
	
	SpeedX = sign(SpeedX) * max(0, abs(SpeedX) - Deacceleration);
	
	if (!Grounded)
	{
		SpeedY = min(SpeedY + Gravity, 8);
	}
	
	PosX += SpeedX;
	PosY += SpeedY;
	
	var valueY = tile_find_v(PosX, PosY + (SpeedY >= 0 ? 8 : -8), CollisionLayer, SpeedY < 0);
	if (valueY[1] != 0)
	{
		PosY += valueY[1];
		Grounded = true;
		DoubleJump = true;
		SaveJumpTime = 10;
		image_angle = 0;
		SpeedY = 0;
	}
	else if (!valueY[0])
	{
		Grounded = false;
	}
	
	var valueX = tile_find_h(PosX - 8, PosY, CollisionLayer, true);
	if (valueX[1] != 0)
	{
		PosX += valueX[1];
		SpeedX = Grounded ? 0 : -SpeedX;
	}
	
	valueX = tile_find_h(PosX + 8, PosY, CollisionLayer, false);
	if (valueX[1] != 0)
	{
		PosX += valueX[1];
		SpeedX = Grounded ? 0 : -SpeedX;
	}
	
	x = floor(PosX);
	y = floor(PosY);
	