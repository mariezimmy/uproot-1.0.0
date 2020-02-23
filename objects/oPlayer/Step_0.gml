// player globals
moveLeft = keyboard_check(vk_left);
moveRight = keyboard_check(vk_right);
jump = keyboard_check_pressed(vk_space);
eat = keyboard_check_pressed(ord("C"));
//attack = keyboard_check_pressed(ord("Z"));
//attack=false;
grv = 0.1;
tilemap = layer_tilemap_get_id("Tiles");

var bbox_side;

// horizontal movement
if (moveRight) {
	hsp=1;
	//x += hsp;
} else if (moveLeft) { // this means if L and R held at same time, only move right
	//x -= hsp;
	hsp=-1;
} else {
	hsp=0;
}
vsp += grv;

if(!attack){ x+=hsp; }

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if ((tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + grv) || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + grv))) {
	if(jump){
		vsp -= 2;
	} else {
		vsp = 0;
	}
}
y += vsp;

// animation
if(!attack){
	if(!(tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + grv) || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + grv))){
		sprite_index=sPlayerJump;
		image_speed=0;
		if(vsp>0){ //falling
			image_index=1;//which frame of the sprite
		} else {
			image_index=0;
		}
	} else { //not falling
	
		image_speed=1;
		if(hsp==0){
			sprite_index=sPlayer;
		} else {
			sprite_index=sPlayerW;
			image_speed=1;
		}
	}
}

if (hsp!=0){
	if(hsp>0) {image_xscale=-1; right=true;} else{ image_xscale=1; right=false;}
}

if(collided){
	hp--;
	if (oHealth.image_index + 1 > sprite_get_number(oHealth.sprite_index)) oHealth.image_index = 0;
	else if( oPlayer.hp>0 ) oHealth.image_index++;
	collided=false;
}
if(hp==0){
	instance_destroy();
	room_goto(6);
	oStamina.image_index=12;
	oHealth.image_index=12;
	
}
if (keyboard_check_pressed(ord("Z"))) {
	attack=true;
	sprite_index=sPlayerAttk;
	image_speed=1;
	
	if(mp>0){ //if mp points available, allow to shoot
		mp--;
		if (oStamina.image_index + 1 > sprite_get_number(oStamina.sprite_index)) oStamina.image_index = 0;
		else if (oStamina.image_index != 12) oStamina.image_index++;
		shooting=true;
	}
	
}



// check fade to next level
if  (x > 1000 && !faded) { // i know hardcoding
	faded = true;
	instance_create_layer(x, y, "Instances", oFade);
	oFade.depth = -999;
}

if(shooting){
	var dxn;
	if(right)dxn=-1; else dxn=1;
	
	with instance_create_layer(x-(30*dxn), y, "Instances", oLeafAttack) {
			speed = 1;
			if (dxn==1) direction=180; else direction=0;
		
	}
	shooting=false;
}