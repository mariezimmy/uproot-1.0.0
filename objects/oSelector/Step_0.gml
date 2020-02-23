/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_up) && index!=0){
 	y-=34;
 	index=0;
 } else if(keyboard_check_pressed(vk_down) &&index!=1){
 	y+=34;
 	index=1;
 }