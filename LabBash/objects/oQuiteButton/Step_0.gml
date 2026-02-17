//stay in view port if level rooms 


if(!(room = rmEnd || room = rmGameOver || room = rmStartScreen)){
	// pin to camera (top-right example)
	var cam = view_camera[0];
	var vw  = camera_get_view_width(cam);
	var vh  = camera_get_view_height(cam);
	var vx  = camera_get_view_x(cam);
	var vy  = camera_get_view_y(cam);

	// offsets from the screen edge (in room pixels)
	var margin_x = 150;
	var margin_y = 100;

	
	// top-right anchor
	x = vx + vw - margin_x;
	y = vy + margin_y;
}