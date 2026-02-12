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
	
	//an array that holds the sprites
	/*
	powerSprites = array_create(3,-1) 
	{
		sPower1,
		sPower2,
		sPower3
	};
	*/
	
	//add power to the global array in oInventory
	
	global.inventory[powerNumber - 1] = {
	sprite: sPower1,
	frame: 0
};

}