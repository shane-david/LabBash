show_debug_message("Inventory Created");
inv_x = 100;
inv_y = 55;
inv_scale = 2;

slot_count = 3;

slot_x = 32;
slot_y = 32;
slot_spacing = 64;   // <-- YES this must be assigned

global.inventory = array_create(slot_count, -1);

// Test fill
global.inventory[0] = sPower1;
global.inventory[1] = sPower2;
global.inventory[2] = sPower3;


