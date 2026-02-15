//if the player is not falling on it and they have speed 
if (oPlayer.ySpeed == 0 && oGameManager.playerPower == "SPEED") {
	instance_destroy(); 
} else {
	oPlayer.xSpeed *= -1; 
	oPlayer.x += oPlayer.xSpeed; 
}