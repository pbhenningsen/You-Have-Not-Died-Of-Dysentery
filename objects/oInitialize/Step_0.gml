if keyboard_check(vk_control) and keyboard_check_pressed(ord("S")){
	global.hasSounds = !global.hasSounds;	
	if global.hasSounds {
		audio_resume_all();
		audio_play_sound(sndBang,10,false);
	} else {
		audio_pause_all();	
	}
}