

var _fail = false;

switch (image_index) {
    case 1:
        if global.riverdeep > 2.5 {
			_fail = choose(false,true);
		}
        if global.riverdeep > 5 {
			_fail = true;
		}		
        break;
    case 2:
        if global.riverdeep > 5 {
			_fail = choose(false,false,true);
		}		
        break;
}

if _fail {
	var _items = fail_items();
	create_popup_message(oTextLoc.y,"The wagon tipped over \nwhile floating. You lose:" + chr(13) + _items, start_river_fail,river_answer);
}
