	// set visable based on the distance to player 
	var dist = distance_to_object(oPlayer); 

	var target_alpha = clamp(1 - dist / 300, 0, 1);

	//makes it fade/appare smoothly 
	image_alpha = lerp( image_alpha, target_alpha, 0.05);