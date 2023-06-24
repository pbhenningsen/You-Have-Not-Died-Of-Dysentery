draw_set_color(c_white);
draw_set_valign(fa_top);
var _xpos = 0;
var _ypos = 0;
var _width = 550;
var _height = array_length(global.Notif_) * 20;
draw_sprite_stretched(sSlice1,0,x-22,y-10,_width+40,_height+20);
for (var i = 0; i < array_length(global.Notif_); ++i) {
	var _string = global.Notif_[i][textstate.thestring];
	var _type = global.Notif_[i][textstate.thetype];
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
	    case texttype.amount:
	    case texttype.number:
	    case texttype.question:
	    case texttype.yesno:
	        draw_text(x,_ypos, _string);
			draw_text (_xpos,_ypos,answer_);
			if blink_ {
				var _bXpos	 = string_width(answer_) / string_length(answer_);
				_bXpos = (answer_ == "" ? 0 : _bXpos);
				draw_text(_xpos+(cursorPos_* _bXpos),_ypos,"_");
			}
	        break;
	    default:
	        draw_text(x,_ypos, _string);
	        break;
	}
}

