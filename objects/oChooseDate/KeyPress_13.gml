with oText{
	switch (string_digits(answer_)) {
	    case "1":
			global.DateTime_  = date_create_datetime(1970,3,1,0,0,0);
			room_goto(rmTravelDysentry);
	        break;
	    case "2":
	        global.DateTime_  = date_create_datetime(1970,4,1,0,0,0);
			room_goto(rmTravelDysentry);        
	        break;
	    case "3":
			global.DateTime_  = date_create_datetime(1970,5,1,0,0,0);
			room_goto(rmTravelDysentry);
	        break;
	    case "4":
			global.DateTime_  = date_create_datetime(1970,6,1,0,0,0);
			room_goto(rmTravelDysentry);
	        break;
	    case "5":
			global.DateTime_  = date_create_datetime(1970,7,1,0,0,0);
			room_goto(rmTravelDysentry);
	        break;
	    case "6":
	        global.textindex_ = 1;
			oText.pageindex_ = global.textindex_;	
	        break;
		default:
			answer_ = "";
			break;
	}	
}


