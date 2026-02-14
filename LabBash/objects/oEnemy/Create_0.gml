//define vars
//------------

moveSpeed = 5;
xVel = 0; 
yVel = 0; 
leftBound = 0;
rightBound = 0; 
bounded = false; 
grounded = false; 
grav = 0.3; 
shootCooldown = irandom_range(60, 180); 
shootDistance = 400; 



function getBounds() {
	
	//get the platform enemy is standing on 
	platform = instance_place(x, y+1, oFloor); 

	//get the bounds of movement
	if (platform != noone) {
	
		leftBound = platform.bbox_left + 20;
		rightBound = platform.bbox_right - 40;
		xVel = 1; 
		bounded = true; 
		shootDistance = rightBound - leftBound; 
	}
	
}