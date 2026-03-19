//animation
global.ani_playing_slice = 0;
global.ani_playing_bosshurt = 0;
global.ani_playing_playerhurt = 0;
global.box_state = 0;
global.boss_hurtani = 0;

switch (global.boss){
	case 1:
	devofight_data();
	break;
	case 2:
	testfight_data();
	break;
}


