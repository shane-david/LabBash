

//check if on ground if is move 
//if(x>=other.x-other.sprite_width/2&&x<=other.x+other.sprite_width/2){
	y = other.y;
	grounded = true;
//}



//jump action
if (jump_key && grounded) {
	oPlayer.ySpeed -= jump_power;
	grounded = false;
}


show_debug_message(grounded);
show_debug_message(y);
show_debug_message(other.y);
