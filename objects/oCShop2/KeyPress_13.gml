switch (stringindex_) {
    case 0:
		switch (string_digits(oText.answer_)) {
		    case 1:
		        stringindex_ = 1;
				set_how_many("How many oxen? ");
		        break;
		    case 2:
				set_how_many("How many set? ");
		        stringindex_ = 2;
		        break;
		    case 3:
				set_how_many("How many boxes? ");
		        stringindex_ = 3;
		        break;
		    case 4:
				set_how_many("How many wheels? ");
		        stringindex_ = 4;
		        break;
		    case 5:
				set_how_many("How many axles? ");
		        stringindex_ = 5;
		        break;
		    case 6:
				set_how_many("How many tounges? ");
		        stringindex_ = 6;
		        break;
		    case 7:
				set_how_many("How many pounds? ");
		        stringindex_ = 7;
		        break;
		    case 8:
				set_how_many("How many rolls? ");
		        stringindex_ = 8;
		        break;
		    case 9:
				global.oxen+=oxen_; 
				global.food+=food_;
				global.clothing+=clothing_;
				global.ammunition+=ammunition_ ;
				global.wagonaxles+=wagonaxles_;
				global.wagontang+=wagontang_ ;
				global.wagonwheels+=wagonwheels_;	
				global.parchment+=parch_;			
				if global.wagonaxles>=0 and global.wagontang >=0 and global.wagonwheels >= 0 {
					global.brokendays=0;	
				}	
				room_goto(rmtarget_);
		        break;
		    default:
		        oText.answer_ = "";
		        break;
		}
        break;
     case 1:
		oxen_ += get_quantity(priceOxen);
		stringindex_ = 0;
		clear_string();
		break;
    case 2:
		clothing_ += get_quantity(priceCloth);
		stringindex_ = 0;
		clear_string();	
		break;
    case 3:
		_ammo = get_quantity(priceAmun);
		ammunition_ += _ammo * 20;
		stringindex_ = 0;
		clear_string();		
		break;
    case 4:
		wagonwheels_ += get_quantity(priceWagon);
		stringindex_ = 0;
		clear_string();
		break;
    case 5:
		wagonaxles_ += get_quantity(priceWagon);
		stringindex_ = 0;
		clear_string();				
		break;
    case 6:
		wagontang_ += get_quantity(priceWagon);
		stringindex_ = 0;
		clear_string();
		break;
	 case 7:
		food_ +=  get_quantity( priceFood);
		stringindex_ = 0;	
		clear_string();	
		break;
	 case 8:
		parch_ +=  get_quantity( priceParch);
		stringindex_ = 0;	
		clear_string();	
		break;
	default:
		oText.answer_ = "";
		break;
}

oText.pageindex_ = global.textindex_;	