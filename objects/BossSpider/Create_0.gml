/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	Legs = [0, 0, 0, 0, 0, 0, 0, 0];
	
	var sprite;
	for (var i = 0; i < 4; i++)
	{
		switch (i)
		{
			case 0: sprite = spr_boss_spider_leg1; break;
			case 1: sprite = spr_boss_spider_leg2; break;
			case 2: sprite = spr_boss_spider_leg3; break;
			case 3: sprite = spr_boss_spider_leg4; break;
		}
		
		var index; 
		for (var j = -1; j <= 1; j += 2)
		{
			index = i + (j > 0) * 4;
			Legs[index] = instance_create_depth(x, y, depth, BossSpiderLeg);
			with (Legs[index])
			{
				image_xscale = j;
				sprite_index = sprite;
			}	
		}
	}