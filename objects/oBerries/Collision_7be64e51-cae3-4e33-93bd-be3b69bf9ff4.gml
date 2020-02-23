with (oPlayer) {
		if (oPlayer.hp < 13) { oPlayer.hp++; oHealth.image_index--; }
		if (oPlayer.mp < 13) { oPlayer.mp++;  oStamina.image_index--; }
	
}
instance_destroy();