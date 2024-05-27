/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	image_xscale += 0.005;
	image_yscale += 0.005;
	
	with instance_create_depth(x, y, depth, BallAfterimage)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	