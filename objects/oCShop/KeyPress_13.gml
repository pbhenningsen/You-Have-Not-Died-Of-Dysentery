switch (stringindex_) {
    case 2:
		switch (string_digits(oText.answer_)) {
		    case 1:
		        stringindex_ = 3;
				global.textindex_=3;
				global.stringComp = "1234567890";
		        break;
		    case 2:
		        stringindex_ = 4;
				global.textindex_=4;
				global.stringComp = "1234567890";
		        break;
		    case 3:
		        stringindex_ = 5;
				global.textindex_=5;
				global.stringComp = "1234567890";
		        break;
		    case 4:
		        stringindex_ = 6;
				global.textindex_=6;
				global.stringComp = "1234567890";
		        break;
		    case 5:
		        stringindex_ = 7;
				global.textindex_=7;
				global.stringComp = "1234567890";
		        break;
		    case 6:
		        stringindex_ = 8;
				global.textindex_=8;
				global.stringComp = "1234567890";
		        break;
		    default:
		        oText.answer_ = "";
		        break;
		}
        break;
     case 3:
		_yoke = get_quantity(priceOxen);
		global.oxen = _yoke * 2;
		stringindex_ = 2;
		global.textindex_=2;
		global.stringComp = "123456";
		break;
	 case 4:
		global.food = get_quantity(priceFood);
		stringindex_ = 2;
		global.textindex_=2;
		global.stringComp = "123456";
		break;
    case 5:
		global.clothing = get_quantity(priceCloth);
		stringindex_ = 2;
		global.textindex_=2;
		global.stringComp = "123456";
		break;
    case 6:
		_ammo = get_quantity(priceAmun);	
		 global.ammunition  =_ammo * 20;
		stringindex_ = 2;
		global.textindex_=2;
		global.stringComp = "123456";
		break;
    case 7:
		global.parchment = get_quantity(priceParch);
		stringindex_ = 2;
		global.textindex_=2;
		global.stringComp = "123456";
		break;
    case 8:
		global.wagonwheels =  get_quantity(priceWagon);
		stringindex_ = 9;
		global.textindex_=8;	
		global.Text_[global.textindex_][14][textstate.thestring]= "How many wagon axles? ";
		break;
    case 9:
		global.wagonaxles = get_quantity(priceWagon);		
		stringindex_ = 10;
		global.textindex_=8;	
		global.Text_[global.textindex_][14][textstate.thestring]= "How many wagon tongue? ";
		break;
    case 10:
		global.wagontang = get_quantity(priceWagon);	
		stringindex_ = 2;
		global.textindex_=2;		
		global.stringComp = "123456";
		var _totalWagon =  (global.wagonaxles + global.wagontang + global.wagonwheels) * priceWagon;
		if global.Money_ - _totalWagon  < 0 {
			global.wagonaxles  = 0;
			global.wagontang   = 0;
			global.wagonwheels = 0;
		}
	break;
	default:
		oText.answer_ = "";
		break;
}

oText.pageindex_ = global.textindex_;	
