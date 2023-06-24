if global.huntnum > 0 {
	image_index = 1;	
	global.food += global.huntnum;
} else {
	image_index = 0;	
}
image_speed = 0;
alarm[0] = room_speed * 1.5;