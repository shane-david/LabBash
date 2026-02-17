//put the player in the proper position when the room starts
//position logic is handled with door laoding zones 
if (room == rmTutorial) {
	
	
	oPlayer.x = tutorialCoords[0];
	oPlayer.y = tutorialCoords[1];
	
	//create objects if they have not been collected 
	if (!tutorialCollected) {
		var key = instance_create_layer(3104, 608, "Other", oKey); 
		key.image_xscale = 2;
		key.image_yscale = 2; 
		var lock = instance_create_layer(3360, 544, "Other", oLock);
		lock.image_yscale = 4;
		lock.image_xscale = 4; 
	}
}

if (room == rmStretch) {
	//create objects if they have not been collected 
	if (!stretchCollected) {
		var key = instance_create_layer(5792, 480, "Other", oKey); 
		key.image_xscale = 2;
		key.image_yscale = 2; 
		var lock = instance_create_layer(3488, 704, "Other", oLock);
		lock.image_yscale = 4;
		lock.image_xscale = 4; 
	}
}

//make sure the player has the right stats in new rooms
if (instance_exists(oPlayer)) {
	if (playerPower == "JUMP") {
		oPlayer.changeStats("JUMP"); 
	} else if (playerPower == "SPEED") {
		oPlayer.changeStats("SPEED"); 
	} else if (playerPower == "STRETCH") {
		oPlayer.changeStats("STRETCH"); 
	}
}