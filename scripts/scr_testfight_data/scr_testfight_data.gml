function testfight_init(){
	//beginning box
	global.battle_turn = 1;
	obj_actionbox.image_xscale = 14.35;
    obj_actionbox.image_yscale = 3.5;
	global.turn_player = true; //set turn's owener to player
	global.loadfinish = false;
	boss_count = 2; //tell how many monsters
	
	//Data Import
    Inst_Boss1 = instance_create_layer(270, 250, "Instances", obj_testenemy);
	Inst_Boss2 = instance_create_layer(700, 250,  "Instances", obj_testenemy_2);
	boss_data[0] = [global.Test_data.name , global.Test_data.hp, global.Test_data.atk, global.Test_data.def, Inst_Boss1]; //Boss 1
	boss_data[1] = [global.Test2_data.name , global.Test2_data.hp, global.Test2_data.atk, global.Test2_data.def, Inst_Boss2]; //Boss 2
}

function testfight_data(){
	//Data Import
	snd_boss = snd_txt;
    Inst_Boss1 = obj_testenemy;
	Inst_Boss2 = obj_testenemy_2;
	boss_data[0] = [global.Test_data.name , global.Test_data.hp, global.Test_data.atk, global.Test_data.def, Inst_Boss1]; //Boss 1
	boss_data[1] = [global.Test2_data.name , global.Test2_data.hp, global.Test2_data.atk, global.Test2_data.def, Inst_Boss2]; //Boss 2
	
	boss_dialogue[1][0] = "boss_turn_1_dialogue_0"
	boss_dialogue[1][1] = "boss_turn_1_dialogue_1"
	boss_dialogue[1][2] = "boss_turn_1_dialogue_2"
	boss_dialogue[2][0] = "boss_turn_2_dialogue_0"
	boss_dialogue[2][1] = "boss_turn_2_dialogue_1"
	boss_dialogue[2][2] = "boss_turn_2_dialogue_2"
	boss_dialogue[3][0] = "boss_turn_2_dialogue_0"
	boss_dialogue[3][1] = "boss_turn_2_dialogue_1"
	boss_dialogue[3][2] = "boss_turn_2_dialogue_2"
	
	player_text[1] = "player_turn_1_text"
	player_text[2] = "player_turn_2_text"
	player_text[3] = "player_turn_3_text"
	player_text[4] = "player_turn_4_text"
}