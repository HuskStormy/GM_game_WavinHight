switch (nivel_num) {
    case 0:	
		global.velocity = 4;
		break;
	case 1:
		global.velocity = 5;
		break;
	case 2:
		global.velocity = 6;
		break;
	case 3:	
		global.velocity = 7;
		break;
    default:
		global.velocity = 4;
		break;
	}
	val_velocity_default = global.velocity;
	val_velocity_comprty = false;