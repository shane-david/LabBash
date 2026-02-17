//Draw the player's health 
draw_text(10, 10, "Health:"); 
draw_healthbar(10,30,210,50,hp, c_gray, c_red, c_green, -1, true, true); 
switch(oGameManager.playerPower) {
case "STRETCH":
	draw_sprite(sPower1, 0, 10, 70); 
	break; 
case "JUMP":
	draw_sprite(sPower2, 0, 10, 70);
	break; 
case "SPEED":
	draw_sprite(sPower3, 0, 10, 70);
	break; 
}