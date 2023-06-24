draw_set_color(c_white);
draw_set_halign(fa_center);
var _centerX = room_width/2;
draw_text( _centerX,20, global.location_[global.locationIndex_][locationtype.name]);
draw_text( _centerX,40,  get_date());
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_text(x,y,"Weather: " + global.weather_);
draw_text(x,y+20,"Health: " + global.health_);
draw_text(x,y+40,"Pace: " + global.pace_);
draw_text(x,y+60,"Rations: " + global.ration_);

