

//check if on ground if is move 
grounded = true; 

y = other.y;

if (state == pState.swing)
{
	ropeAngle = point_direction(grappleX,grappleY,x,y);
	ropeAngleVelocity = 0;
}