//smashes through box if player is below and has enough jump_power
if(oPlayer.y>other.y-1){
	if(jump_power >= 30 && ySpeed<0){
		instance_destroy(other);	
	}else{
		ySpeed += 1;
		y = other.y+sprite_height;	
	}
}else{
	y = other.y;
	grounded = true;
}