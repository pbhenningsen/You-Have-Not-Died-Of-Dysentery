rmtarget_ = global.targetRoom;

primaryMoney_ = global.Money_;
oxen_ = 0; 
food_ = 0;
clothing_= 0;
ammunition_= 0;
wagonaxles_= 0;
wagontang_= 0;
wagonwheels_= 0;
parch_ = 0;
_ammo=0;

priceOxen   = round_ext(irandom_range(10,20));
priceFood   = round_ext(random_range(0.2,0.5));
priceCloth  = round_ext(random_range(2,5));
priceAmun   = round_ext(random_range(10,15));
priceWagon  = round_ext(random_range(10,15));
priceParch  = 5.99;

amountcost_ = 0;
redXpos_ = 0;
stringindex_ = 0;
global.textindex_ = 0;
global.Text_="";
global.stringComp = "123456789";
#region Main Menu
var _arrayindex = 0;
stringindex_ = 0;

create_text(_arrayindex,texttype.simple, "You may buy:");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, " 1. Oxen              " + string(priceOxen)  + ".00 per ox ");
create_text(_arrayindex,texttype.simple, " 2. Clothing          " + string(priceCloth) + " per set ");
create_text(_arrayindex,texttype.simple, " 3. Ammunition        " + string(priceAmun)  + " per box     ");
create_text(_arrayindex,texttype.simple, " 4. Wagon wheels      " + string(priceWagon) + " per wheel   ");
create_text(_arrayindex,texttype.simple, " 5. Wagon axles       " + string(priceWagon) + " per axle  ");
create_text(_arrayindex,texttype.simple, " 6. Wagon tongues     " + string(priceWagon) + " per tongue");
create_text(_arrayindex,texttype.simple, " 7. Food              " + string(priceFood)  + " per pound  ");
create_text(_arrayindex,texttype.simple, " 8. Toilet Parchment  " + string(priceParch) + " per rolls  ");
create_text(_arrayindex,texttype.simple, " 9. Leave store");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "You have " + string(primaryMoney_) + " to spend" );
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.number, "Which number? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");


#endregion
stringindex_ = 0;