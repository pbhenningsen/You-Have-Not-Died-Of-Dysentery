if alarm[0] != -1 {
	oTravelLocation.x+=1;	
	if oTravelLocation.x >= x {
		if !isstart_travel {
			alarm[0]=-1;
			alarm[1]=-1;
			isstart_travel = true;
			next_distance_ = 0;
			oTravelOxen.image_speed  = 0;
			with oTravelWagon {
				image_speed = 0;
				alarm[2] = -1;
			}
			global.locationIndex_++;
			var loc_ = global.location_[global.locationIndex_][locationtype.name];
			create_popup_question(texttype.yesno,"You are now at " + loc_ + ", would you like to look around?",pause_travel, answerNextLocation);	
		}
	}
}