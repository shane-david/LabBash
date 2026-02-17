//if at end of animation and animation enabled 
if (image_index == 5 && image_speed > 0) {
	
	//stop animation 
	image_speed = 0; 
	
	//replace with symbitoe object according to the level
	switch (room) {
	case rmTutorial:
		instance_create_layer(x, y, "Other", oStretch);
		break;
	case rmJump:
		instance_create_layer(x, y, "Otehr", oSpeed);
		break;
	case rmStretch:
		instance_create_layer(x, y, "Other", oJump);
		break; 
	}
	
	
	instance_destroy(oLock);  
	
}