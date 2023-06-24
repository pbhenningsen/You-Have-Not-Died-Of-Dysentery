if instance_exists(oMessage) exit;

switch (stringindex_) {
    case 12:
		global.locationIndex_=0;
		room_goto(rmLocations);
        break;
    case 0:
		global.textindex_++;
		stringindex_++;
		oText.answer_ = "";
        break;
    case 1:
		global.textindex_++;	
		oText.x+=64
		oText.answer_ = "n/a";
		redXpos_ = oText.x ;
		stringindex_++;
        break;
	 case 2:
		if global.oxen < 1 {
			create_text_layer((room_height/2)+50,"Don't forget, You'll need oxen to pull your wagon","Instances")
		} else {
			global.textindex_=9;	
			stringindex_=12;
			oText.answer_ = "";
		}
        break;
}

with oText {
	pageindex_ = global.textindex_;	
}