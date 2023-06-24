if instance_exists(oNotification) {
	var _str  = string_trim(oNotification.answer_);
	var _str2 = (_str=="" ? "0" : _str);
	days_ = real(string_digits(_str2))
	if days_ == 0 instance_destroy(oNotification);
	else alarm[0]=room_speed;
	exit;
}
global.targetRoom = room;
with oText{
	switch (answer_) {
	    case "1":
			room_goto(rmTravel);
	        break;
	    case "2":
			room_goto(rmCheckSupplies);        
	        break;
	    case "3":
			room_goto(rmMap);
	        break;
	    case "4":
			room_goto(rmPaceChange);	
	        break;
	    case "5":
			room_goto(rmRationChange);
	        break;
	    case "6": // stop to rest	
			create_Notif(texttype.amount,"How many days would","you like to rest? ");
			oText.answer_ = "";
	        break
	    case "7": // attempt to trade
			room_goto(rmTalkToPeople);			
	        break
	    case "8": // talk to people
			room_goto(rmHuntingIntro);
	        break
		default:
			oText.answer_ = "";
			break;
	}	
}