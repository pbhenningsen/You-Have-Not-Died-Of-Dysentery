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
		default:
			answer_ = "";
			break;
	}	
}


