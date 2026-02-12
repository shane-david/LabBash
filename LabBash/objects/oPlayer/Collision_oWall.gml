//check if x < or > x other depending on answer xspeed == 0 

xSpeed = 0; 


//checks for imput when on wall to move off wall 
if(keyboard_check(ord("A")) && x<other.x){
	xSpeed = -move_speed; 
}
else if (keyboard_check(ord("D")) && x>other.x){	
	xSpeed = move_speed; 
}