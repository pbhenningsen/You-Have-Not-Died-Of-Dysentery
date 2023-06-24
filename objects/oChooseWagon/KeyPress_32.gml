switch (global.textindex_) {
	case 0:
	    global.textindex_ = 1;
		oText.pageindex_ = global.textindex_;
		oText.answer_ = "n/a";
	    break;
	case 3:
		global.textindex_ = 4;
		oText.pageindex_ = global.textindex_;	
		oText.answer_ = "";
	    break;
	case 4:
		global.textindex_ = 5;
		oText.pageindex_ = global.textindex_;	
		oText.answer_ = "";
	    break;
	case 5:
		global.textindex_ = 1;
		oText.pageindex_ = global.textindex_;	
		oText.answer_ = "";
	    break;
	case 2:
	    add_to_date();
		global.textindex_ = 1;
		oText.pageindex_ = global.textindex_;	
		global.riverdeep = clamp(global.riverdeep-0.6, 3.2,10.5);
		global.Text_[global.textindex_][1][textstate.thestring] = get_date();	
		global.Text_[global.textindex_][8][textstate.thestring] =  "River depth: " + string(global.riverdeep);	
		oText.answer_ = "";
	    break;
	default:
		
		break;
}	


