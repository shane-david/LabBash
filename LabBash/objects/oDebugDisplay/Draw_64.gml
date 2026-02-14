// Optional: Set text alignment and color once at the start or in the create event
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_white); // Use draw_set_color in newer versions
// Define starting Y position and line height
var _y_pos = 10;
var _line_height = 20; // Adjust as needed based on your font size

// Display FPS
draw_text(10, _y_pos, "FPS (real): " + string(fps_real));
_y_pos += _line_height;

// Display player position (assuming a player instance exists)
if (instance_exists(oPlayer)) {
    draw_text(10, _y_pos, "Player X: " + string(oPlayer.x));
    _y_pos += _line_height;
    draw_text(10, _y_pos, "Player Y: " + string(oPlayer.y));
    _y_pos += _line_height;
}

//// Display a custom variable
//draw_text(10, _y_pos, "Game State: " + string(global.game_state));
