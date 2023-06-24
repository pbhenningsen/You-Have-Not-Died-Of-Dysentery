global.oxen        = 0;
global.clothing    = 0;
global.food        = 0;
global.ammunition  = 0;
global.wagonwheels = 0;
global.wagonaxles  = 0;
global.wagontang   = 0;
global.parchment   = 0;
global.Money_ = 1600;
_ammo = 0;
_yoke = 0;
priceOxen   = round_ext(irandom_range(20,50));
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
global.stringComp = "123456";
#region Intro

var _arrayindex = 0;
create_text(_arrayindex,texttype.simple, "Pee-YEW! I smelled you coming");
create_text(_arrayindex,texttype.simple, "all the way from Cayuga County.");
create_text(_arrayindex,texttype.simple, "I'm sorry, but the outhouse");
create_text(_arrayindex,texttype.simple, "is for customers only.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "I can get you:");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "     - a team of oxen to pull");
create_text(_arrayindex,texttype.simple, "       your wagon");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "     - Dr. Nickell's single-ply");
create_text(_arrayindex,texttype.simple, "       toilet parchment");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "     - fiber-rich food for the");
create_text(_arrayindex,texttype.simple, "       trip");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "   Press SPACE BAR to continue");

_arrayindex++;
stringindex_ = 0;


create_text(_arrayindex,texttype.simple, "Pee-YEW! I smelled you coming");
create_text(_arrayindex,texttype.simple, "all the way from Cayuga County.");
create_text(_arrayindex,texttype.simple, "I'm sorry, but the outhouse");
create_text(_arrayindex,texttype.simple, "is for customers only.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "I can get you:");
create_text(_arrayindex,texttype.simple, " ");
create_text(_arrayindex,texttype.simple, "     - ammunition for your ");
create_text(_arrayindex,texttype.simple, "       rifles");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "     - spare parts for your");
create_text(_arrayindex,texttype.simple, "       wagon");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "     - clothing for your");
create_text(_arrayindex,texttype.simple, "       party");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "   Press SPACE BAR to continue");

#endregion
#region Main Menu
_arrayindex++;
stringindex_ = 0;

create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, get_date());
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, " 1. Oxen         ");
create_text(_arrayindex,texttype.simple, " 2. Food         ");
create_text(_arrayindex,texttype.simple, " 3. Clothing     ");
create_text(_arrayindex,texttype.simple, " 4. Ammunition   ");
create_text(_arrayindex,texttype.simple, " 5. Toilet Parchment");
create_text(_arrayindex,texttype.simple, " 6. Spare parts  ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "    Total bill:  ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "Amount you have: ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "Which item would you");
create_text(_arrayindex,texttype.number, "like to buy? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "Press ENTER to make selection");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "Press SPACE BAR to leave store");

#endregion
#region Oxen
_arrayindex++;
stringindex_ = 0;


create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, " There are 2 oxen in a yoke;");
create_text(_arrayindex,texttype.simple, " I recommend at least 3 yoke");
create_text(_arrayindex,texttype.simple, " I charge " + string(priceOxen) + " a yoke.");
create_text(_arrayindex,texttype.simple, " ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "How many yoke do you");
create_text(_arrayindex,texttype.amount, "want? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");

#endregion
#region Food
_arrayindex++;
stringindex_  = 0;
primaryMoney_ = global.Money_;
create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "I recommend at least");
create_text(_arrayindex,texttype.simple, "200 pounds per person.");
create_text(_arrayindex,texttype.simple, "My price is $" +  string(priceFood));
create_text(_arrayindex,texttype.simple, "a pound.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "How many pounds of food do");
create_text(_arrayindex,texttype.amount, "you want? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");

#endregion
#region Clothing
_arrayindex++;
stringindex_ = 0;

create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "You'll need warm clothing on");
create_text(_arrayindex,texttype.simple, "the trail. I recommend");
create_text(_arrayindex,texttype.simple, "taking at least 2 sets of");
create_text(_arrayindex,texttype.simple, "clothes per person. Each");
create_text(_arrayindex,texttype.simple, "set is $" + string(priceCloth));
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "How many sets of clothing do");
create_text(_arrayindex,texttype.amount, "you want? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");

#endregion
#region Ammunition
_arrayindex++;
stringindex_ = 0;

create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "I sell ammunition in boxes");
create_text(_arrayindex,texttype.simple, "of 20 bullets. Each box");
create_text(_arrayindex,texttype.simple, "is $"  + string(priceAmun) + ".");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "How many boxes do you");
create_text(_arrayindex,texttype.amount, "want? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");

#endregion

#region Toilet Parchment
_arrayindex++;
stringindex_ = 0;

create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "Softer than most burlap");
create_text(_arrayindex,texttype.simple, "alternatives!");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "I recommend buying as");
create_text(_arrayindex,texttype.simple, "much as you can afford.");
create_text(_arrayindex,texttype.simple, "The price is $" + string(priceParch) + " per roll.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "How many rolls do you");
create_text(_arrayindex,texttype.amount, "want? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");

#endregion



#region Wagon
_arrayindex++;
stringindex_ = 0;

create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.center, "It's a good idea to have a");
create_text(_arrayindex,texttype.simple, "few spare parts for your");
create_text(_arrayindex,texttype.simple, "wagon. Here are the prices:");
create_text(_arrayindex,texttype.simple, " ");
create_text(_arrayindex,texttype.simple, "   wagon wheel  - $" + string(priceWagon) + " each");
create_text(_arrayindex,texttype.simple, "   wagon axle   - $" + string(priceWagon) + " each");
create_text(_arrayindex,texttype.simple, "   wagon tongue - $" + string(priceWagon) + " each");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.amount, "How many wagon wheels? ");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");

#endregion


#region End
_arrayindex++;
stringindex_ = 0;

create_text(_arrayindex,texttype.center, "Matt's General Store");
create_text(_arrayindex,texttype.center, "Independence. Missouri");
create_text(_arrayindex,texttype.center, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "  Well then, you're ready");
create_text(_arrayindex,texttype.simple, "  to start. Good luck!");
create_text(_arrayindex,texttype.simple, "  Sounds like there's an");
create_text(_arrayindex,texttype.simple, "  angry stampede in your");
create_text(_arrayindex,texttype.simple, "  stomach there.");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "");
create_text(_arrayindex,texttype.simple, "Press SPACE BAR to leave store");

#endregion



stringindex_ = 0;