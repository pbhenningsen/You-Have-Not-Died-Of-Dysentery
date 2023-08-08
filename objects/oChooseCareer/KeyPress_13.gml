with oText{
	switch (answer_) {
	    case "1":
	        global.career_ = "banker";
			room_goto(rmChooseName);
	        break;
	    case "2":
	        global.career_ = "carpenter";
			room_goto(rmChooseName);	        
	        break;
	    case "3":
	        global.career_ = "farmer";
			room_goto(rmChooseName);	
	        break;
	    case "4":
	        global.textindex_ = 1;
			oText.pageindex_ = global.textindex_;	
	        break;
		default:
			answer_ = "";
			break;
	}	
}


