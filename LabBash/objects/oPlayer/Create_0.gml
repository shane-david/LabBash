//player stats 
move_speed = 7;
jump_power = 25;
grav = 1;
maxFallSpeed = 30;

//booleans to track state 
grounded = false;
ySpeed = 0;
xSpeed = 0;


hp = 100; 
iframes = 0; 
mx = x; //hook x coord
my = y; //hook y coord
active = false;
powers = "NONE";

//functions to change speed and jump stats
function changeStats(type) {
	if (type == "JUMP") {
		jump_power = 40; 
		move_speed = 7; 
	} else if (type == "SPEED") {
		move_speed = 15; 
		jump_power = 25; 
	} else if (type == "STRETCH") {
		move_speed = 7;
		jump_power = 25; 
	}
	
}
