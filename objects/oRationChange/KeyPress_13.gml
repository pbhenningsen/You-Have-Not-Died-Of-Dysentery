with oText{
	switch (answer_) {
	    case "1":
	        global.ration_ = "filling";
			room_goto(global.targetRoom);
	        break;
	    case "2":
	        global.ration_ = "meager";
			room_goto(global.targetRoom);      
	        break;
	    case "3":
	        global.ration_ = "bare bones";
			room_goto(global.targetRoom);
	        break;
		default:
			answer_ = "";
			break;
	}	
}