move_speed = 4;
jump_power = 20;
grav = 1;
hSpeed = 0;
vSpeed = 0;
grounded = false;

ySpeed = 0;
xSpeed = 0;

state = pState.normal;

enum pState
{
	normal,
	swing,
}