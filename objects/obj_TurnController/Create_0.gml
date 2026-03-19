//turn set transition
global.turn_toboss = 0;
global.turn_toplayer = 0;

//boss' actions
global.boss_dialogue = 0;
global.boss_attacking = 0;

switch (global.boss){
	case 1:
	devofight_data();
	break;
	case 2:
	testfight_data();
	break;
}

time = 120;
timer = time;