//Movement AI
//----------------------------


//Collision
//----------------------------

//horizontal collision (platform bounds)
if (bounded && x <= leftBound) {
	xVel = 1; 
}

if (bounded && x >= rightBound) {
	xVel = -1;  
}

//vertical collision (with platforms)

//increase yVel
yVel += grav; 

//if there will be a collision
if (place_meeting(x, y+yVel, oFloor)) {
	
	//move slowly until collide
	while (!place_meeting(x, y + sign(yVel), oFloor)) {
		y += sign(yVel); 
	}
	yVel = 0;
	grounded = true; 
	
	if (!bounded) {
		getBounds(); 
	}
	
//if there is no collision not grounded
} else {
	
	grounded = false;
	bounded = false; 
	
}




//Shooting AI
//----------------------------

//if the player is close enough do the shooting logic 
if (point_distance(x, y, oPlayer.x, oPlayer.y) < shootDistance) {
	if (shootCooldown <= 0) {
		instance_create_layer(x,y, "Instances", oEnemyProjectile); 
		shootCooldown = irandom_range(60, 180); 
	} else {
		shootCooldown--; 
	}
}

//Execute Actions
//----------------------------


//move in x dir
x += moveSpeed * xVel; 
y += yVel; 
