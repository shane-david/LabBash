var left_key = keyboard_check(ord("A"));
var right_key = keyboard_check(ord("D"));
jump_key = keyboard_check(vk_space);


oPlayer.y += ySpeed;
oPlayer.x += xSpeed;

if (!grounded && ySpeed<maxFallSpeed) {
	ySpeed += grav;
}else if(grounded){
	ySpeed = 0; 
}
xSpeed = move_speed*(right_key - left_key);

grounded = false;

//iframes counter
if (iframes > 0) {
	iframes--; 
}

if(mouse_check_button_pressed(mb_left))
{
	
	mx = mouse_x;
	my = mouse_y;
	if(place_meeting(mx,my,oGrabblock)){
		active = true;
	}
}

if(active = true){
 grav = 0.1;
 x += (mx - x) * 0.1;
 y += (my - y) * 0.1;
}


if(mouse_check_button_released(mb_left))
{
	active = false;	
	grav = 1;
}

