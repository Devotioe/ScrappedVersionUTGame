function devofight_init(){
	obj_actionbox.image_xscale = 14.35;
    obj_actionbox.image_yscale = 3.5;
	global.turn_player = true; //set turn's owener to player
	global.battle_turn = 1;
	global.loadfinish = false;
	
	//Data Import
    Inst_Boss1 = instance_create_layer(650, obj_actionbox.bbox_top - 120 , "Instances", obj_devo);
	boss_data[0] = [global.Devo.name , global.Devo.hp, global.Devo.atk, global.Devo.def, Inst_Boss1]; //Boss 1
}

function devofight_data(){
	//Data Import
	snd_boss = snd_txtsans;
	fnt_boss = fnt_sans;
	fnt_ui = fnt_ch_ui;
    Inst_Boss1 = obj_devo;
	boss_data[0] = [global.Devo.name , global.Devo.hp, global.Devo.atk, global.Devo.def, Inst_Boss1]; //Boss 1
	
	boss_dialogue[1][0] = "boss_dia_turn1_0"
	boss_dialogue[1][1] = "boss_dia_turn1_1"
	
	boss_dialogue[2][0] = "boss_dia_turn2_0"
	boss_dialogue[2][1] = "boss_dia_turn2_1"
	boss_dialogue[2][2] = "boss_dia_turn2_2"
	boss_dialogue[2][3] = "boss_dia_turn2_3"
	
	boss_dialogue[3][0] = "boss_dia_turn3_0"
	boss_dialogue[3][1] = "boss_dia_turn3_1"
	boss_dialogue[3][2] = "boss_dia_turn3_2"
	
	boss_dialogue[4][0] = "i've been observing you for a while."
	
	boss_dialogue[5][0] = "i've been observing you for a while."
	
	boss_dialogue[6][0] = "i've been observing you for a while."
	
	player_text[1] = "player_turn_1_text"
	player_text[2] = "player_turn_2_text"
	player_text[3] = "player_turn_3_text"
	player_text[4] = "player_turn_4_text"
	player_text[5] = "player_turn_4_text"
	player_text[6] = "player_turn_4_text"
}

function devofight_diacontroller(){
	switch global.battle_turn {
	case 1:
	if(page == 1){
		text_spd = 0.6;
		if (draw_char == 3){
			cooldown = true;
			timer --;
			if (timer <= 0){
				cooldown = false;
				timer = time;
			}
		}
		if (draw_char == 27){
			cooldown = true;
			timer --;
			if (timer <= 0){
				cooldown = false;
				timer = time;
			}
		}
	}
	else{
		text_spd = 0.6;
	}
	}
}

function devofight_attacks(){
	bonewall(600, 5);
	if (global.attack_finished == true){ //finish attack
	global.boss_attacking = false; //escape from attacking phase
	global.boss_finished = true;
	}
}
