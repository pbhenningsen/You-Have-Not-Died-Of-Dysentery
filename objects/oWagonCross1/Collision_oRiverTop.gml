if !is_crossed  {
	oRiverBottom.is_moving = false;
	oRiverTop.is_moving = false;
	is_crossed = true;
	create_popup_message(100,"You and your party crossed the river safely.", no_script,river_answer);
}