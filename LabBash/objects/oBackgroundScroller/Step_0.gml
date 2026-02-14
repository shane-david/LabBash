

//get player movement 
var dx = player.x - prev_px;
prev_px = player.x;




//add the speed to each one 

layer_x(bg_labWalls, layer_get_x(bg_labWalls) - dx * 0.2);
layer_x(bg_void,     layer_get_x(bg_void)     - dx * 0.5);
layer_x(bg_star,     layer_get_x(bg_star)     - dx * 0.5);