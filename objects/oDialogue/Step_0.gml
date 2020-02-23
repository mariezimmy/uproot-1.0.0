
time++;

if (time < 250) {

text = "This is the story of a sproot who wanted to make a change";
 boxWidth=sprite_get_width(sTextbox);
 stringHeight = string_height(text);
}


if (time == 250) {
	text = "A lonely sproot was left to fend for themself after a polluted sky ravaged their forest.";
 boxWidth=sprite_get_width(sTextbox);
 stringHeight = string_height(text); 
}

if (time == 500) {
	text = "With the clouds came gloomy mushroom monsters and prickly flower fiends.";
	 boxWidth=sprite_get_width(sTextbox);
	 stringHeight = string_height(text); 
}


if (time == 750) {
	text = "Little did the sproot know, the cloud were no good for their growth...";
	 boxWidth=sprite_get_width(sTextbox);
	 stringHeight = string_height(text); 
}

if (time == 1000) {
	text = "Because the sproot is destined to be a beatiful blossom,";
	 boxWidth=sprite_get_width(sTextbox);
	 stringHeight = string_height(text); 
}

if (time == 1250) {
	text = "But only with the help of clear, sunny skys can this happen.";
	 boxWidth=sprite_get_width(sTextbox);
	 stringHeight = string_height(text); 
}

if (time == 1500) {
	text = "Help a sproot fight cloudy pollution, forest foes, and...";
	 boxWidth=sprite_get_width(sTextbox);
	 stringHeight = string_height(text); 
}


if (time == 1750) {
	text = "Help a sproot realize a little light can go a long way!";
	 boxWidth=sprite_get_width(sTextbox);
	 stringHeight = string_height(text); 
}

if (time == 2000) {
	if (room_exists(room_next(room))) room_goto_next();
}



