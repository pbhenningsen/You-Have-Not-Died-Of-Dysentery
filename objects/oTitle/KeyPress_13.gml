with oText{
	switch (answer_) {
	    case "1":
	        room_goto(rmChooseCareer);
	        break;
	    case "2":
	        room_goto(rmLearnTrail);
	        break;
	    case "3":
	        global.textindex_ = 1;
			oText.pageindex_ = global.textindex_;	
	        break;
	    case "4":
	        game_end();
	        break;
		default:
			answer_="";
	}	
}