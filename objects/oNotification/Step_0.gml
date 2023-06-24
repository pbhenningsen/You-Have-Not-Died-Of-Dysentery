if answer_ == "|" {
	answer_ = "";
	keyboard_string = "";
}

switch (answerType_) {
    case  texttype.number:
		var _ans = answer_;
		var _tempstring = Input_Text(_ans);
		if hasChar(_tempstring,global.stringComp) or _tempstring==""{
			answer_ = _tempstring;
		}
        break;
    case  texttype.amount:
		answer_ = Input_Amount(answer_);
        break;
    case  texttype.yesno:
		var _ans = answer_;
		var _tempstring = Input_Text(_ans);
		if hasChar( _tempstring,"ynYN") or _tempstring==""{
			answer_ = _tempstring;
		} else {
			answer_ = "";
		}
        break;
    default:
        answer_ = Input_Text(answer_);
        break;
}