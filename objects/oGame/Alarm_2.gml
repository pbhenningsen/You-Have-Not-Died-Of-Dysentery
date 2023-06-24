/// @description Add Days 

add_to_date();
if --days_ <=0 {
	instance_destroy(oPopupMessage);
	start_travel();
} else {
	alarm[2]=room_speed;//so basically unless the day count is zero, in which case the above function runs, the days change at the pace of the room speed
}
