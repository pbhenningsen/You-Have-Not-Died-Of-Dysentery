if is_alive{
	instance_destroy(other);
	speed=0;
	image_speed=0;
	image_index=0;
	image_yscale =-0.7;
	is_alive = false;
	play_audio_sound(sndBang);
	global.huntnum+=points_;
}