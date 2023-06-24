with oText{
	switch (answer_) {
	    case "1":
	        global.wagon_index = 1;
			room_goto(rmRiverCrossing);
	        break;
	    case "2":
	         global.wagon_index = 2;
			room_goto(rmRiverCrossing);        
	        break;
	    case "3":
	        global.wagon_index = 3;
			room_goto(rmRiverCrossing);
	        break;
	    case "4":
		    global.textindex_ = 2;
			oText.pageindex_ = global.textindex_;	
	        break;
	    case "5":
		    global.textindex_ = 3;
			oText.pageindex_ = global.textindex_;	
	        break;

		default:
			oText.answer_ = "";
			break;
	}	
}