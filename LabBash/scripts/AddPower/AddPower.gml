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
	
	//add power to the global array in oInventory
	var spriteName = "sPower" + string(powerNumber);
	global.inventory[powerNumber - 1] = {
	sprite: spriteName,
	frame: 0
};

}