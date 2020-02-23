/// @description Insert description here
// You can write your code in this editor
alpha = clamp(alpha + fade * (0.05), 0, 1);

if (alpha == 1) {
	if (keyboard_check_pressed(vk_enter) && oSelector.index==0) {
		room_goto_next();
		fade = -1;
	} else if (keyboard_check_pressed(vk_enter) && oSelector.index==1){
 		room_goto(6);
		fade = -1;
 	}
}

if (alpha == 0 && fade == -1) {
	instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(alpha);
			  
draw_set_alpha(1); // make sure we can see again :D