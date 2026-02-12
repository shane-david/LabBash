show_debug_message("Inventory Created");

inventory_open = false;

inv_x = -10;
inv_y = 55;
inv_scale = 2;

slot_count = 3;

slot_x = 93;
slot_y = 49;
slot_spacing = 14; 

inv_frame = 0;
inv_anim_speed = 0.03;

global.inventory = array_create(slot_count, -1);

// Test fill
global.inventory[0] = {
	sprite: sPower1,
	frame: 0
};
global.inventory[1] = {
	sprite: sPower2,
	frame: 0
};
global.inventory[2] = {
	sprite: sPower3,
	frame: 0
};





