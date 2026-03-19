//keys var
var right_key = keyboard_check_pressed(vk_right);
var up_key = keyboard_check_pressed(vk_up);
var left_key = keyboard_check_pressed(vk_left);
var down_key = keyboard_check_pressed(vk_down);
var select_key = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("Z"));
var quit_key = keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("X"));


//Button Highlight Logic
if (global.button_selected) ==0{ //fight
	obj_soul.x = 77
	obj_soul.y = 889
	button_fight.sprite_index = spr_fightbt_1;
}
else{
	button_fight.sprite_index = spr_fightbt_0;
}
if (global.button_selected) ==1{ //act
	obj_soul.x = 399
	obj_soul.y = 889
	button_act.sprite_index = spr_talkbt_1;
}
else{
	button_act.sprite_index = spr_talkbt_0;
}
if (global.button_selected) ==2{ //item
	obj_soul.x = 712
	obj_soul.y = 889
	button_item.sprite_index = spr_itembt_1;
}
else{
	button_item.sprite_index = spr_itembt_0;
}
if (global.button_selected) ==3{ //mercy
	obj_soul.x = 1017
	obj_soul.y = 889
	button_mercy.sprite_index = spr_sparebt_1;
}	
else{
	button_mercy.sprite_index = spr_sparebt_0;
}
	
	

//buttons selections
//check if turns are correct and nothing selected
if (global.turn_player = true and global.button_enterstatus = 0){
	//selecting functions
	if (right_key){
		audio_play_sound(snd_squeak, 1, false);
		global.button_selected +=1;
		if (global.button_selected > 3){
			audio_play_sound(snd_squeak, 1, false);
			global.button_selected = 0;
		}
	}
	if (left_key){
		audio_play_sound(snd_squeak, 1, false);
		global.button_selected -=1;
		if (global.button_selected < 0){
			audio_play_sound(snd_squeak, 1, false);
			global.button_selected = 3;
		}
	}
}


//STEP 2
//enter and leave actions status
if (global.turn_player = true){
switch (global.button_enterstatus){
	case 0:
	if (select_key){
		audio_play_sound(snd_select, 1, false);
		global.button_enterstatus = 1;
	}
	return;
	case 1:
	if (quit_key) {
		audio_play_sound(snd_select, 1, false)
		global.button_enterstatus = 0;
	}
	break;
	case 2:
	obj_soul.x = 999;
	obj_soul.y = 999;
	break;
}
}

//STEP 3
//Fight and Act Boss Selection
if (global.turn_player = true and global.button_enterstatus = 1){ 	// this value means the button is entered
	if (global.button_selected = 0 or global.button_selected = 1){ //only fight and act choose boss
		if (down_key){
			global.boss_selected += 1;
		if (global.boss_selected > boss_count){
	            global.boss_selected = 1;
			}
		}
		if (up_key){
			global.boss_selected -=1 ;
			if (global.boss_selected <=0){
				global.boss_selected = boss_count;
			}
		}
	    switch (global.boss_selected){
		case 1:
		obj_soul.x = 120;
		obj_soul.y = 550;
		break;
		case 2:
		obj_soul.x = 120;
		obj_soul.y = 650;
		break;
		case 3:
		obj_soul.x = 120;
		obj_soul.y = 750;
		break;
	}
	}
}
