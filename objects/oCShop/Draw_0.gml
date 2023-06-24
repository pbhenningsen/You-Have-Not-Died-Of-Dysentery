var _xpos = 580;
draw_set_halign(fa_right);
switch (stringindex_) {
    case 2:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sRedLine,0,redXpos_,200);
		var _amOxen = _yoke * priceOxen;
		var _amFood = global.food * priceFood;
		var _amCloth = global.clothing * priceCloth;
		var _amParch = global.parchment * priceParch;
		var _amAmun = _ammo * priceAmun;
		var _amWagon = (global.wagonaxles + global.wagontang + global.wagonwheels) * priceWagon;
		amountcost_ = _amAmun+_amCloth+_amFood+_amOxen+_amWagon+_amParch;
		global.Money_= primaryMoney_ - amountcost_;
		draw_text(_xpos,86,"$"+string(_amOxen));
		draw_text(_xpos,105,"$"+string(_amFood));
		draw_text(_xpos,124,"$"+string(_amCloth));
		draw_text(_xpos,143,"$"+string(_amAmun));
		draw_text(_xpos,161,"$"+string(_amParch));
		draw_text(_xpos,180,"$"+string(_amWagon));
		draw_text(_xpos,210,"$"+string(amountcost_));
		draw_text(_xpos,232,"$"+string(global.Money_));
        break;
    case 3:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sOxenShop,0,redXpos_+150,300);
		draw_text(redXpos_+300,430,"Bills so far: $" + string(amountcost_));
        break;
    case 4:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sFoodShop,0,redXpos_+150,300);
		draw_text(redXpos_+300,430,"Bills so far: $" + string(amountcost_));
        break;
    case 5:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sClothShop,0,redXpos_+150,300);
		draw_text(redXpos_+300,430,"Bills so far: $" + string(amountcost_));
        break;
    case 6:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sAmoShop,0,redXpos_+150,300);
		draw_text(redXpos_+300,430,"Bills so far: $" + string(amountcost_));
        break;
    case 7:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sParchShop,0,redXpos_+150,300);
		draw_text(redXpos_+300,430,"Bills so far: $" + string(amountcost_));
        break;
    case 8:
    case 9:
    case 10:
		draw_sprite(sRedLine,0,redXpos_,10);
		draw_sprite(sRedLine,0,redXpos_,74);
		draw_sprite(sWagonShop,0,redXpos_+150,300);
		draw_text(redXpos_+300,430,"Bills so far: $" + string(amountcost_));
        break;
}
