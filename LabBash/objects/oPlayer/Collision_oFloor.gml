

//check if on ground if is move 
grounded = true; 

y = other.y; 

show_debug_message("jump please");
show_debug_message(other.y); 
show_debug_message(grounded); 


//jump action
if (jump_key && grounded) {
	oPlayer.ySpeed -= jump_power;
	grounded = false;
}