/*This function adds a power to the inventory
you will have to pass a number in this funciton to determine what power to add
for example:
-you touch the stretch power (the first power)
-AddPower(1) since it is the first power
-you touch the jump power (the second power)
-AddPower(2) since it is the first power
-etc
*/
function AddPower(powerNumber){
	
	//if the power to add is the first one then add it to the inventory array	
	if (powerNumber == 1) {
		global.inventory[powerNumber - 1] = {
			sprite: sPower1,
			frame: 0
		};
	}
	//if the power to add is the second one then add it to the inventory array	
	else if (powerNumber == 2) {
		global.inventory[powerNumber - 1] = {
			sprite: sPower2,
			frame: 0
		};
		
		
	}
	//if the power to add is the third one then add it to the inventory array	
	else if (powerNumber == 3) {
		global.inventory[powerNumber - 1] = {
			sprite: sPower3,
			frame: 0
		};
	}

}