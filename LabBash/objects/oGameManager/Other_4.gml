//put the player in the proper position when the room starts
//position logic is handled with door laoding zones 
if (room == rmTutorial) {
	oPlayer.x = tutorialCoords[0];
	oPlayer.y = tutorialCoords[1];
}

//make sure the player has the right stats in new rooms
if (playerPower == "JUMP") {
	oPlayer.changeStats("JUMP"); 
} else if (playerPower == "SPEED") {
	oPlayer.changeStats("SPEED"); 
}