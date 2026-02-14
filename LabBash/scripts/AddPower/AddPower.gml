/*
This function adds a power you specify to the inventory
For example
The Player touches the first power
call the function AddPower(1)
the first power is add to the inventory
The Player touches the second power
AddPower(2)
The second power is added to the inventory
etc
*/
function AddPower(powerNumber){
	
	//if the player touches the first power add it to the inventory array
	if (powerNumber == 1) {
		
		global.inventory[0] = {
			sprite: sPower1,
			frame: 0
		}
		show_debug_message("Power Stretch added to inventory");
	}
	//if the player touches the first power add it to the inventory array
	else if (powerNumber == 2) {
		
		global.inventory[1] = {
			sprite: sPower2,
			frame: 0
		}
		show_debug_message("Power Jump added to inventory");
	}
	//if the player touches the first power add it to the inventory array
	else if (powerNumber == 3) {
		
		global.inventory[2] = {
			sprite: sPower3,
			frame: 0
		}
		show_debug_message("Power Speed added to inventory");
	}

}