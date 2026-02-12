//if at end of animation and animation enabled 
if (image_index == 5 && image_speed > 0) {
	
	//stop animation 
	image_speed = 0; 
	
	//replace with stretch object
	instance_create_layer(x, y, "Instances", oStretch);
	instance_destroy(); 
	
}