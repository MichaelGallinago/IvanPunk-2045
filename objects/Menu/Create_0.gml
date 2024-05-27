/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
	
	PosY = y;
	Time = 0;
	Size = 0;
	Exit = false;
	ExitTimer = 0;
	Text1 = "IVANPUNK               ";
	Text2 = "                   2045";
	Curve = animcurve_get(curve_logo);
	CurveChannel = animcurve_get_channel(Curve, 0);
	
	var layerID = layer_get_id("Background");
	BackgroundID = layer_background_get_id(layerID);
	