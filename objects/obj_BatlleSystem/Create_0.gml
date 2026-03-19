global.boss = 1;

instance_create_layer(0, 0, "System", obj_Monsters);
instance_create_layer(0, 0, "System", obj_GlobalPara);

dmgnum = [spr_dmgnum_0, spr_dmgnum_1, spr_dmgnum_2, spr_dmgnum_3, spr_dmgnum_4, spr_dmgnum_5, spr_dmgnum_6, spr_dmgnum_7, spr_dmgnum_8, spr_dmgnum_9];

//set to position
button_fight.x = 59;
button_fight.y = 864;
button_act.x = 377;
button_act.y = 864;
button_item.x = 695;
button_item.y = 864;
button_mercy.x = 1001;
button_mercy.y = 864;

time = 100;
timer = time;

//import monster data
//setloader
instance_create_layer(0, 0, "System", obj_AnimationController);
instance_create_layer(0, 0, "System", obj_TurnController);
instance_create_layer(0, 0, "System", obj_MenuController);

//setup


switch (global.boss){
	case 1:
	devofight_init();
	break;
	case 2:
	testfight_init();
	break;
}




