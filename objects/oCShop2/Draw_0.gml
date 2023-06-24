var _centerX = room_width/2;
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text( _centerX,30, global.location_[global.locationIndex_][locationtype.name]);
draw_text( _centerX,50,  get_date());
draw_set_color(c_white);

