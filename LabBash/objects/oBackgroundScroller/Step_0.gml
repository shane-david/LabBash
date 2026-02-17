// ensure player exists
if (player == noone || !instance_exists(player)) {
    player = instance_find(oPlayer, 0);
    if (player != noone) prev_px = player.x;
    exit; // don't scroll until player is valid
}

// dx based on player movement
var dx = player.x - prev_px;
prev_px = player.x;

// set layer positions (layer_x with 2 args SETS the x)
layer_x(bg_labWalls, layer_get_x(bg_labWalls) - dx * 0.2);
layer_x(bg_void,     layer_get_x(bg_void)     - dx * 0.5);
layer_x(bg_star,     layer_get_x(bg_star)     - dx * 0.5);