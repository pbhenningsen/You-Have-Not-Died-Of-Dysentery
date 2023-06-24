draw_set_valign(fa_top);

var _string = text_;
var _w = 450;
draw_set_halign(fa_left);
var _width = string_width_ext(_string,19,_w);
var _x = (room_width/2) - (_width /2); 
var _height =  string_height_ext(_string,19,_w);
draw_sprite_stretched(sSlice1,0,_x-22,y-10,_width+40,_height+20);
draw_text_ext(_x,y,_string,19,_w);
