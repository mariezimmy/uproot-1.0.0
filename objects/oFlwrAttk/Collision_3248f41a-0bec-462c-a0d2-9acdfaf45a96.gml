// handle collision with player
with (oPlayer) {
	oPlayer.hp--;
	if (oHealth.image_index + 1 > sprite_get_number(oHealth.sprite_index)) oHealth.image_index = 0;
	else oHealth.image_index++;
}

instance_destroy();