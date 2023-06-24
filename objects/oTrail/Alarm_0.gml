alarm[1]=room_speed * 5;
arrow_num_++;
if arrow_num_ > 6  {
		global.locationIndex_++;
		room_goto(rmLocations);	
		instance_destroy();
}
if arrow_num_ > 3  instance_create_depth(x,y,0,oTrailChild);
else			   instance_create_depth(x,y,0,oArrowChild);