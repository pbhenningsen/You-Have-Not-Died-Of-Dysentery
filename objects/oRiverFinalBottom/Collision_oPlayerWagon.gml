if instance_exists(oPopupMessage) exit;
var _items = fail_items();
with oPlayerWagon {
	player_move(-1);
	_move=0;
}
create_popup_message(oTextLoc.y,"The wagon tipped over\nwhile floating. You lose:" + chr(13) + _items, final_river_deactivate,final_river_activate);
