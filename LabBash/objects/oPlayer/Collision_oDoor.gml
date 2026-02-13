//if gets to go then go to level 2 


	xSpeed = 0;
	//checks for imput when on wall to move off wall 
	if(keyboard_check(ord("A")) && x<other.x){
		xSpeed = -move_speed; 
	}
	else if (keyboard_check(ord("D")) && x>other.x){	
		xSpeed = move_speed; 
	}
	
	//go to next room -- jump faze 
	room_goto(rmJump); 