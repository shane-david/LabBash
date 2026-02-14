//set the background speeds for each level 

bg_labWalls = layer_get_id("bg_background");
bg_void  = layer_get_id("bg_void");
bg_star = layer_get_id("bg_stars");


//gets player to match it to movements 
player = instance_find(oPlayer, 0);
prev_px = player.x;
