function destroy_player()
{
	visible = false;
	DestroyTimer = 100;
	audio_sound_gain(bgm_level, 0, 200);
	audio_sound_gain(bgm_boss, 0, 200);
	audio_sound_gain(bgm_boss2, 0, 120);
	audio_sound_gain(bgm_vodka, 0, 200);
	
	for (var i = 0; i < 4; i++)
	{
		with (instance_create_layer(x, y, "Decorations", PlayerParts))
		{
			image_angle = i * 90;
			Speed = i % 2 ? -15 : 15;
			hspeed = (i < 2 ? 4 : 6) * (i % 2 ? 1 : -1);
			vspeed = (i < 2 ? -4 : -2);
		}
	}
	
	audio_play_sound(snd_death, 0, false, 2);
}