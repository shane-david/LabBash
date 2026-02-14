//deal with player death
if (oPlayer.hp <= 0) {
	room_goto(rmGameOver); 
}

//If the number 1 key is pressed
if (keyboard_check_pressed(ord("1"))) {
	
	//if the first inventory slot is not empty
	if (global.inventory[0] != -1) {
		
		//TODO activate the stretch powers in this section
		show_debug_message("Strech Powers Activated!");
	}
	//if the slot is empty
	else 
	{
		//Power WON'T activate
		show_debug_message("Powers Failed To Activate!");
	}
}

//If the number 2 key is pressed
if (keyboard_check_pressed(ord("2"))) {
	
	//if the second inventory slot is not empty
	if (global.inventory[1] != -1) {
		
		//TODO activate the jump powers in this section
		show_debug_message("Jump Powers Activated!");
	}
	//if the slot is empty
	else 
	{
		//Power WON'T activate
		show_debug_message("Powers Failed To Activate!");
	}
}

//If the number 3 key is pressed
if (keyboard_check_pressed(ord("3"))) {
	
	//if the third inventory slot is not empty
	if (global.inventory[2] != -1) {
		
		//TODO activate the speed powers in this section
		show_debug_message("Speed Powers Activated!");
	}
	//if the slot is empty
	else 
	{
		//Power WON'T activate
		show_debug_message("Powers Failed To Activate!");
	}
}

//If the number 4 key is pressed
if (keyboard_check_pressed(ord("4"))) {
	
	//This is just for fun since we have four inventory slots and only three powers
	show_debug_message("Caseoh Powers Activated!");

}

//TESTING ONLY
//If the L key is pressed
if (keyboard_check_pressed(ord("L"))) {
	
	//call the AddPower script to add a power
	show_debug_message("Adding power");
	AddPower(global.powerToAdd);
	global.powerToAdd++;
}

