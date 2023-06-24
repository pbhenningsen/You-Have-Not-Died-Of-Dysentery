if alarm[2] == -1 {
	audio_play_sound(sndHurt,10,false);
	alarm[2] = room_speed*2;
	alpha_ = 0.5;
	global.lives_--;
	if global.lives_<=0 {
	    oElevator.is_stepped = true;
		with oWindowElevator {
			room_index_ = rmGameOver;
			is_closing=true;
			curvePosition=0;
			x_pos  = x;
		}
		audio_stop_all();
		audio_play_sound(sndElevator,10,false);
	}
}

