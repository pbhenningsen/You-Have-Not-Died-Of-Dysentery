var _month = date_get_month(global.DateTime_);

switch (_month) {
    case 3:
    case 4:
    case 5:
		image_index = 2;
		break;	
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
		image_index = 0;
		break;
    case 11:
    case 12:
    case 1:
    case 2:
        image_index = 1;
        break;
}
