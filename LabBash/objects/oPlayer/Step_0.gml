var left_key = keyboard_check(ord("A"));
var right_key = keyboard_check(ord("D"));
var jump_key = keyboard_check(vk_space);

switch (state)
{
	case pState.normal:
	{
oPlayer.y += ySpeed;
oPlayer.x += xSpeed;

if (!grounded) {
	ySpeed += grav;
}else if(grounded){
	ySpeed = 0; 
}

xSpeed = move_speed*(right_key - left_key);

//jump action
if (jump_key && grounded) {
	oPlayer.ySpeed -= jump_power;
	grounded = false;
}

grounded = false;

if (mouse_check_button_pressed(mb_left))
{
	grappleX = mouse_x;
	grappleY = mouse_y;
	ropeX = x;
	ropeY = y;
	ropeAngleVelocity = 0;
	ropeAngle = point_direction(grappleX,grappleY,x,y);
	ropeLength = point_distance(grappleX,grappleY,x,y);
	state = pState.swing;
}
	

	}break;


case pState.swing:
{
	var _ropeAngleAcceleration = -0.2 * dcos(ropeAngle);
	ropeAngleVelocity += _ropeAngleAcceleration;
	ropeAngle += ropeAngleVelocity;
	ropeAngleVelocity *= 0.99;
	
	ropeX = grappleX + lengthdir_x(ropeLength, ropeAngle);
	ropeY = grappleY + lengthdir_y(ropeLength, ropeAngle);
	
	hSpeed = ropeX - x;
	vSpeed = ropeY - y;
	
	if (jump_key)
	{
		state = pState.normal;
		vSpeedFraction = 0;
		vSpeed = -jump_power;
	}
	
}break;
}

