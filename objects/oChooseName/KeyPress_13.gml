if oText.answer_ == "" exit;
switch (name_index_) {
    case 0:
        global.player_[0][playertype.name] = oText.answer_;
		global.textindex_++;
		global.Text_[global.textindex_][2][textstate.thestring]+= global.player_[0][playertype.name];
		global.Text_[global.textindex_][3][textstate.thetype]= texttype.question;
        break;
    case 1:
        global.player_[1][playertype.name] = oText.answer_;
		global.Text_[global.textindex_][3][textstate.thestring]+= global.player_[1][playertype.name];
		global.Text_[global.textindex_][3][textstate.thetype]= texttype.simple;
		global.Text_[global.textindex_][4][textstate.thetype]= texttype.question;
        break;
    case 2:
        global.player_[2][playertype.name] = oText.answer_;
		global.Text_[global.textindex_][4][textstate.thestring]+= global.player_[2][playertype.name];
		global.Text_[global.textindex_][4][textstate.thetype]= texttype.simple;
		global.Text_[global.textindex_][5][textstate.thetype]= texttype.question;
        break;
    case 3:
        global.player_[3][playertype.name] = oText.answer_;
		global.Text_[global.textindex_][5][textstate.thestring]+= global.player_[3][playertype.name];
		global.Text_[global.textindex_][5][textstate.thetype]= texttype.simple;
		global.Text_[global.textindex_][6][textstate.thetype]= texttype.question;
        break;
    case 4:
        global.player_[4][playertype.name]= oText.answer_;
		global.Text_[global.textindex_][6][textstate.thestring]+= global.player_[4][playertype.name];
		global.Text_[global.textindex_][6][textstate.thetype]= texttype.simple;
		global.Text_[global.textindex_][8][textstate.thestring]= "Are these names correct [y/n]?  ";
		global.Text_[global.textindex_][8][textstate.thetype]= texttype.yesno;
        break;
    case 5:
		switch (string_upper(oText.answer_)) {
		    case "Y":
		        room_goto(rmChooseDate);
		        break;
		    case "N":
				room_restart();
		        break;
		    default:
		        oText.answer_ = "";
		        break;
		}
        break;
		
    default:
        oText.answer_ = "";
        break;
}
 
if name_index_ < 5{
	name_index_++;
}

with oText {
	pageindex_ = global.textindex_;	
}