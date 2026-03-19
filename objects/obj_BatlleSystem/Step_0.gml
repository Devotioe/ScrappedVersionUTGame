//keys var
var right_key = keyboard_check_pressed(vk_right);
var up_key = keyboard_check_pressed(vk_up);
var left_key = keyboard_check_pressed(vk_left);
var down_key = keyboard_check_pressed(vk_down);
var select_key = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"));
var quit_key = keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("X"));

//HP logic
global.player_currenthp = clamp(global.player_currenthp, 0 , global.player_maxhp);

//attack function
if (global.turn_player = true and global.button_selected = 0 and global.button_enterstatus = 1){ 
	if (select_key){
		audio_play_sound(snd_select, 1, false);
		global.button_selected = 5;
		global.battle_attacking = 1;
		AttackTarget();
		return;
	}
}

//attack target and animation
if (global.battle_attacking = 1){ 
	
	if ( obj_attackbar.x <= 1200 ){ //bar moves
	obj_attackbar.x += 10;
	}
	
	else{ //miss
	global.battle_attacking = 0;
	instance_destroy(obj_attackbar);
	global.target_expanding = 2;
	Turn_ToBoss();
	return;
	}
	
	if (obj_attackbar.x > 81){
		if (select_key){ 
			global.battle_attacking = 0;
			obj_attackbar.image_speed = 10.5;
			instance_create_layer(boss_data[global.boss_selected -1][4].x ,boss_data[global.boss_selected -1][4].y , "Instances_above" , obj_slice); //slice
			global.cutscene = true;
			audio_play_sound(snd_laz,1, false);
            alarm[0] = 70 // 1 second
		}
	}
}
	




