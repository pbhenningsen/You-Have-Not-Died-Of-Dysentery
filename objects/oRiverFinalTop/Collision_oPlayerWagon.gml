if instance_exists(oPopupMessage)  or hit_ exit;
var _items = fail_items();
create_popup_message(oTextLoc.y,"The wagon tipped over \nwhile floating. You lose:" + chr(13) + _items, final_river_deactivate,final_river_activate);
hit_ = true;
alarm[0] = room_speed * 2;
with oPlayerWagon {
	x_pos=x_from
	y_pos=y_from;
	player_move(1);
	_move=0;
}