with oText{
	switch (answer_) {
	    case "1":
	        global.pace_ = "steady";
			room_goto(global.targetRoom);
	        break;
	    case "2":
	        global.pace_ = "strenuous";
			room_goto(global.targetRoom);        
	        break;
	    case "3":
	        global.pace_ = "grueling";
			room_goto(global.targetRoom);
	        break;
	    case "4":
			room_goto(rmPaceChangeHow);	
	        break;
		default:
			answer_ = "";
			break;
	}	
}


