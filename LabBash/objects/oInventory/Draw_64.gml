var base_x = 200;
var base_y = 150;

var inv_scale = 6; // 6x bigger

draw_sprite_ext(
    sInventory,
    0,
    base_x,
    base_y,
    inv_scale,
    inv_scale,
    0,
    c_white,
    1
);


// Draw items inside slots
for (var i = 0; i < slot_count; i++)
{
    if (global.inventory[i] != -1)
    {
		var draw_x = inv_x + (slot_x * inv_scale) + (i * slot_spacing * inv_scale);
		var draw_y = inv_y + (slot_y * inv_scale);

        draw_sprite(global.inventory[i], 0, draw_x, draw_y);
    }
}
