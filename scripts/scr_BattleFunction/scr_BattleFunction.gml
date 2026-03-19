function AttackTarget(){
	global.button_enterstatus = 2; //for uneeded scene
	instance_create_layer(80, 640, "Instances" ,obj_attackbar);
	instance_create_layer(650, 640, "Instances" ,obj_attacktarget);
	obj_attackbar.image_yscale = 0;
	obj_attacktarget.image_alpha = 0;
	obj_attacktarget.image_xscale = 0;
	global.target_expanding = 1;
}

function BossGetHurt(){
	global.boss_hurtani = true;
	global.dmg = floor(int64(random_range(1, 10)));
	instance_create_layer(boss_data[global.boss_selected -1][4].x - 70  ,boss_data[global.boss_selected -1][4].y - 200 , "Instances" ,obj_dmg_1);
    instance_create_layer(boss_data[global.boss_selected -1][4].x - 10  ,boss_data[global.boss_selected -1][4].y - 200 , "Instances" ,obj_dmg_2); // dmgnum create
    obj_dmg_1.sprite_index = dmgnum[global.dmg/10]; 
	if(obj_dmg_1.sprite_index = dmgnum[0]){
		instance_destroy(obj_dmg_1);
	}
    obj_dmg_2.sprite_index = dmgnum[global.dmg%10];	// damage count
    audio_play_sound(snd_damage, 1, false);
	boss_data[global.boss_selected-1, 1] -= global.dmg;
}

function PlayerGetHurt(){
	global.player_currenthp -= 10 ;
} 

function Box_ToPlayer(){
	global.box_init = false;
	global.box_state = 1;
}

function Box_ToBattle(){
	global.box_init = false;
	global.box_state = 2;
}

function Turn_ToPlayer(){
	global.box_state = 1;
	global.turn_player = true;
	global.button_enterstatus = 0;
	global.button_selected = 0;
	global.battle_turn += 1; // add turn
}

function Turn_ToBoss(){
	global.turn_toboss = true;
	obj_soul.x = 600;
	obj_soul.y = 600; 
	global.box_state = 2; // soul and box to posi
	global.turn_player = 0; // to boss' turn
	global.button_enterstatus = 2; 
	global.button_selected = 5; //unhighlight buttons
	global.boss_finished = false;
}



function Check_BossTurn(){
	if (global.turn_player == false){
		Box_ToBattle();
		global.button_enterstatus = 2;
		global.button_selected = 5;
	}
	else{
		global.turn_player = false;
		return;
	}
}
