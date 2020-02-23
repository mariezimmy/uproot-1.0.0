with (oPlayer) {
	if (oPlayer>0){
		if (oPlayer.hp < 13) oPlayer.hp++;
		if (oPlayer.mp < 13) oPlayer.mp++;
	}
}
instance_destroy();