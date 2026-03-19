
if (global.turn_toboss = true){
	global.turn_toboss = false; // turn off the switch
	alarm[0] = 90 // go to dialogue
}

if (global.boss_dialogue = true){
	instance_create_layer(0, 0, "System", obj_DialogueController);
	global.boss_dialogue = false;
}

//if (global.turn_player == false && global.boss_attacking == false && global.boss_finished == true){
	//Turn_ToPlayer();
//}
// check if boss turn, and not attacking, finally check if finished

if (global.boss_finished == true){
	global.boss_finished = false;
	Turn_ToPlayer()
}
