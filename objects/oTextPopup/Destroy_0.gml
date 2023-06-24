with oTravelDysentry {
	alarm[0] = room_speed;
}

with (oLocationMap2) {
	if other.text_ = "Alright, back to the trail." {
		audio_stop_all();
		room_goto(global.targetRoom);
		exit;
	}
 alarm[0] = room_speed;

}

with (oLocationMap3) {
	if other.text_ = "Alright, back to hunting." {
		audio_stop_all();
		room_goto(global.targetRoom);
		exit;
	}
 alarm[0] = room_speed;

}

with (oLocationMap4) {
	if other.text_ = "Alright, back to the trail." {
		audio_stop_all();
		room_goto(global.targetRoom);
		exit;
	}
 alarm[0] = room_speed;

}