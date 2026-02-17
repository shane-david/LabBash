//grounded state
if (ySpeed < 0 || !place_meeting(x, y + 1, oFloor)) {
	grounded = false; 
}

//get input 
var left_key = keyboard_check(ord("A"));
var right_key = keyboard_check(ord("D"));
jump_key = keyboard_check_pressed(vk_space);

//jump action
if (jump_key && grounded) {
	ySpeed -= jump_power;
	grounded = false;
}


//gravity
if (!grounded && ySpeed<maxFallSpeed) {
	ySpeed += grav;
}

//x speed 
xSpeed = move_speed*(right_key - left_key);

//increase positions
y += ySpeed;
x += xSpeed;

//iframes counter
if (iframes > 0) {
	iframes--; 
}

//do stretch if powers are activated
if (oGameManager.playerPower = "STRETCH") {
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
	 ySpeed = -1; 
	}


	if(mouse_check_button_released(mb_left))
	{
		active = false;	
		grav = 1;
	}
}



