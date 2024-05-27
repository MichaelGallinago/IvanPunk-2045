/// @description Returns the distance to the closest solid tile vertically and its angle
function tile_find_v(x1, y1, tileLayer, dir)
{
	if (x1 < 0 || y1 < 0) return [0, 0];
	
	var tile  = tilemap_get(tileLayer, x1 div 16, y1 div 16);
	var index = tile_get_index(tile);
	
	switch (index)
	{
		case 0: return [index, 0];
		case 1: return [index, -(y1 % 16) + (dir ? 16 : 0)];
		case 2: return [index, dir ? 0 : -(y1 % 16)];
	}
}