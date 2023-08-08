answer_ = "";
draw_set_font(fntRetro);
cursorPos_ = 0;
delete_timer_ = 0;
answerType_ = texttype.simple;
pageindex_    = 0;
keyboard_string = "";
var _index =  array_length(global.Text_[global.textindex_])-1;//-1 because the index of the last element is 1 less than the length of the array (bc it starts with 0)
var _type = global.Text_[global.textindex_][_index][textstate.thetype];
switch ( _type) {
	case texttype.number:
		answerType_ = texttype.number;
	    break;
	case texttype.yesno:
		answerType_ = texttype.yesno;
	    break;
	case texttype.question:
		answerType_ = texttype.question;
	    break;
}
blink_ = true;
blinkspeed_ = 10;
alarm[0]=blinkspeed_;
alarm[1]=1;