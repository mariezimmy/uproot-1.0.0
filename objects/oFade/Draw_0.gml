// modify alpha value
alpha = clamp(alpha + fade * (0.005), 0, 1);

if (alpha == 1) {
	if (room_exists(room_next(room))) {
		room_goto_next();
		oPlayer.x = 108
		fade = -1;
	} else {
		// win state?
	}
}

if (alpha == 0 && fade == -1) {
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(alpha);

cam = view_get_camera(0);
draw_rectangle(camera_get_view_x(cam), 
			  camera_get_view_y(cam), 
			  camera_get_view_width(cam),
			  camera_get_view_height(cam),
			  0);
			  
draw_set_alpha(1); // make sure we can see again :D
