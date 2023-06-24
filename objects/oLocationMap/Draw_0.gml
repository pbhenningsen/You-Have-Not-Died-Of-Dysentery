var _sprite = global.location_[global.locationIndex_][locationtype.spriteimage];
draw_sprite(_sprite,0,0,0);
draw_set_color(c_black);
draw_set_halign(fa_center);
var _centerX = room_width/2;
draw_text( _centerX,room_height-100, global.location_[global.locationIndex_][locationtype.name]);
draw_text( _centerX,room_height-80,  get_date());
draw_set_color(c_white);
draw_text( _centerX,room_height-30,  "Press SPACE BAR to continue");
