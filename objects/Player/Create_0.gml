/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	PosX = x;
	PosY = y;
	SpeedX = 0;
	SpeedY = 0;
	Gravity = 0.2;
	Acceleration = 0.2;
	Deacceleration = 0.15;
	CollisionLayer = layer_tilemap_get_id("Collisions");
	image_angle = 45;
	Grounded = false;
	DoubleJump = false;
	SaveJumpTime = 10;
	DestroyTimer = 0;
	
	instance_create_depth(x, y, depth - 1, CollisionBox);