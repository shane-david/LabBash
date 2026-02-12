var left_key = keyboard_check(ord("A"));
var right_key = keyboard_check(ord("D"));
jump_key = keyboard_check(vk_space);

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

