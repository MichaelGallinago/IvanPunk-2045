function object_interaction()
{
	if (!Player.visible)
	{
		if (Player.DestroyTimer-- == 0)
		{
			room_restart();
		}
		return;
	}
	
	if (instance_place(x, y, Avast) != noone
	|| instance_place(x, y, Kaspersky) != noone
	|| instance_place(x, y, TotalSequrity) != noone
	|| instance_place(x, y, Malvare) != noone
	|| instance_place(x, y, BossAvast) != noone
	|| instance_place(x, y, KasperskyCorporative) != noone
	|| instance_place(x, y, Eset) != noone)
	{
		with (Player)
		{
			destroy_player();
		}
	}
	
	if (instance_exists(Spider))
	{
		if (instance_place(x, y, Spider) != noone)
		{
			with (Player)
			{
				destroy_player();
			}
		}
	}
	
	if (instance_exists(BossSpider))
	{
		if (instance_place(x, y, BossSpider) != noone
		|| instance_place(x, y, BossSpiderLeg) != noone)
		{
			with (Player)
			{
				destroy_player();
			}
		}
	}
	
	if (instance_exists(Vodka) && !Vodka.Timer)
	{
		if (instance_place(x, y, Vodka) != noone)
		{
			with (Player)
			{
				destroy_player();
				DestroyTimer = -1;
			}
			Level.GameOver = true;
		}
	}
}