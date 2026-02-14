if (inventory_open) {
	var base_x = 500;
	var base_y = 250;


	var inv_scale = 6; // 6x bigger


	var inventoryFrame = inv_frame mod sprite_get_number(sInventory);

	draw_sprite_ext(
	    sInventory,
	    inventoryFrame,
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

	        //draw_sprite(global.inventory[i], 0, draw_x, draw_y);
			var item = global.inventory[i];
			var spr = item.sprite;
			var frame = item.frame mod sprite_get_number(spr);

			draw_sprite(spr, frame, draw_x, draw_y);

	    }
	}
}
