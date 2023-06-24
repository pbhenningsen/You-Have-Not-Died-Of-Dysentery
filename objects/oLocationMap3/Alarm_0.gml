switch (stringindex_) {
    case 0:
        create_text_popup(oTextLoc.x,oTextLoc.y-100,global.hstop_[global.hstopsctr][locationtype.name]);
		audio_play_sound(sndReading,10,false);
        break;
    case 1:
        create_text_popup(oTextLoc.x,oTextLoc.y-100,global.hstop_[global.hstopsctr][locationtype.name2]);
        break;
    case 2:
        create_text_popup(oTextLoc.x,oTextLoc.y-200,global.hstop_[global.hstopsctr][locationtype.name3]);
        break;
	case 3:
        create_text_popup(oTextLoc.x,oTextLoc.y-200,global.hstop_[global.hstopsctr][locationtype.name4]);
	    break;
    case 4:
        create_text_popup(oTextLoc.x,oTextLoc.y-100, "Alright, back to hunting.");
		audio_play_sound(sndSFX,10,false);
        break;
}
