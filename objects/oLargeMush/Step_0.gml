grv = 0.1;
tilemap = layer_tilemap_get_id("Tiles");
var bbox_side;


// gravity
if (vsp > 2.5) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if ((tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + grv) || tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + grv))) {
	vsp = 0;
}

y += vsp;
count++;
attackCount++;

if (count == 30) { //60 fps
	hsp *= -1; // reverse direction
	count = 0;
}

// horizontal movement
if (vsp = 0) {x += hsp;}


// fire attack
if (attackCount > random(400) + 200) {
	attackCount = 0;
	var currX = x;
	with instance_create_layer(x, y + 20, "Instances", oWaterAttack) {
		speed = 1;
		if (oPlayer.x < currX) {
			direction = 180;
		} else {
			direction = 0;
		}
	}
}