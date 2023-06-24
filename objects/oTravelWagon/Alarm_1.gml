
if instance_exists(oPopupMessage) exit;
if instance_exists(oPopupQuestion) exit;

	var _numFaint = 0;
	var _hassomething = false;
	for (var i = 0; i < array_length(global.player_); ++i) {
		//show_debug_message(global.player_[i][playertype.hungry])
	    if global.player_[i][playertype.faint] {
			_numFaint++;	
		} else { 
			global.player_[i][playertype.hp]--;
			if global.food <=0 {
				global.player_[i][playertype.hungry]-=3;
			} else {
				global.player_[i][playertype.hungry] = global.player_[i][playertype.max_hungry];
			}
			if global.player_[i][playertype.hungry] <= 0 and global.player_[i][playertype.isHungry]==false{
				global.player_[i][playertype.hungry]=0;
				global.player_[i][playertype.isHungry]=true;
				var _hungry = choose (" is hungry" , " is very hungry", " is starving")
				create_popup_message(oTextLoc.y,global.player_[i][playertype.name] + _hungry,pause_travel,start_travel);
				 _hassomething = true;
				
			}
			if global.player_[i][playertype.isHungry]  and !global.player_[i][playertype.faint] {
					global.player_[i][playertype.hp] -= 20;
			}
			if global.player_[i][playertype.hp] <= 0 and !global.player_[i][playertype.faint] and  !_hassomething {
				global.player_[i][playertype.faint]=true;
				create_popup_message(oTextLoc.y,global.player_[i][playertype.name] + " has died",pause_travel,start_travel);	
				 _hassomething = true;
			}
			if global.player_[i][playertype.hp] <= 200 and !global.player_[i][playertype.brokenarm] and  !_hassomething {
				global.player_[i][playertype.brokenarm]=true;
				var sickness = choose(" has fever", " has broken arm" );
				create_popup_message(oTextLoc.y,global.player_[i][playertype.name] +  sickness,pause_travel,start_travel);	
				 _hassomething = true;
			}
			if global.player_[i][playertype.hp] <= 47 and !global.player_[i][playertype.issick] and  !_hassomething {
				global.player_[i][playertype.issick]=true;
				var sickname = choose(" has cholera"," has typhoid fever");
				create_popup_message(oTextLoc.y,global.player_[i][playertype.name] + sickname ,pause_travel,start_travel);		
				 _hassomething = true;
			}
		}
	}
	
	if _numFaint >= 5 {
		room_goto(rmGameOver);	
	}
	
	if  !_hassomething {
		ctr_--;
		thiefctr_--;
		brokectr_--;
		lostctr_ --;
		blizzardctr_--;
		var __aa = irandom(10);	
		switch (__aa) {
			case 9: // food
				if ctr_<=0 {
					create_popup_message(oGame.y,"Found wild fruits",create_berries_message,start_travel);
					ctr_ = irandom_range(50,80);
				}
			    break;
			case 1: // thief
				if thiefctr_ <=0 {
					create_stole_message();
					thiefctr_ = irandom_range(100,200);
				}
			    break;
			case 3: // broke wagon
			case 4: // broke wagon
				if brokectr_ <=0 {
					create_broke_message();
					brokectr_ = irandom_range(60,100);
				}
			    break;
			case 5: // lost trail
				if lostctr_  <=0 {
					create_lost_message("Wrong trail");
					lostctr_  = irandom_range(10,30);
				}
			    break;
			case 6: // lost trail
				if blizzardctr_  <=0 and oLand.image_index==2 {
					create_lost_message("Severe blizzard");
					blizzardctr_  = irandom_range(10,30);
				}
			    break;
		}	
	}