draw_set_color(c_white);
draw_set_valign(fa_top);
var _xpos = 0;
var _ypos = 0;
var _width = 400;
var _height = array_length(global.Notif_) * 20;
draw_sprite_stretched(sSlice1,0,x-22,y-10,_width,_height+20);
for (var i = 0; i < array_length(global.Notif_); ++i) {
	var _string = global.Notif_[i][textstate.thestring];
	_ypos = y+(i*18);
	_xpos = x + (string_width(_string));
	draw_set_halign(fa_left);
	draw_text(x,_ypos, _string);	
}

