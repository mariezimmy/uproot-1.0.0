grv = 0.1;


if (y > 220) {
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
if (attackCount > random(150) + 200) {
	attackCount = 0;
	var currX = x;
	with instance_create_layer(x, y + 30, "Instances", oFlwrAttk) {
		speed = 1;
		if (oPlayer.x < currX) {
			direction = 180;
		} else {
			direction = 0;
		}
	}
}

// health check
if (hp <= 0) instance_destroy(); 