//if at end of animation and animation enabled 
if (image_index == 5 && image_speed > 0) {
	
	//stop animation 
	image_speed = 0; 
	
	//replace with symbitoe object according to the level
	switch (room) {
	case rmStretch:
		instance_create_layer(x, y, "Instances", oStretch);
		break;
	case rmSpeed:
		instance_create_layer(x, y, "Instances", oSpeed);
		break;
	case rmJump:
		instance_create_layer(x, y, "Instances", oJump);
		break; 
	}
	
	
	instance_destroy(); 
	
}