if instance_exists(oNotification) exit;
draw_set_valign(fa_top);
draw_set_color(c_white);
var _xpos = 0;
var _ypos = 0;
for (var i = 0; i < array_length(global.Text_[pageindex_]); ++i) {
	var _string = global.Text_[pageindex_][i][textstate.thestring];
	var _type = global.Text_[pageindex_][i][textstate.thetype];
	_ypos = y+(i*18);
	_xpos = x + (string_width(_string));
	draw_set_halign(fa_left);
	switch ( _type) {
	    case texttype.center:
			draw_set_halign(fa_center);
			var _xpos = room_width / 2; 
	        draw_text(_xpos,_ypos, _string);
	        break;
	    case texttype.simple:
			draw_set_halign(fa_left);
	        draw_text(x,_ypos, _string);
	        break;
	    case texttype.number:
	    case texttype.amount:
	    case texttype.question:
	    case texttype.yesno:
	        draw_text(x,_ypos, _string);
			draw_text (_xpos,_ypos,answer_);
			if blink_ {
				var _bXpos	 = string_width(answer_) / string_length(answer_);
				_bXpos = (answer_ == "" ? 0 : _bXpos);
				draw_text(_xpos+(cursorPos_* _bXpos),_ypos,"_");
			}
			answerType_ = _type;
	        break;
	    default:
	        draw_text(x,_ypos, _string);
	        break;
	}
}

