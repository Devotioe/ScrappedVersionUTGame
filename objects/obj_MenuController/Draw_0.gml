//Player Text 
#region
var skip_key = keyboard_check_pressed(ord("X"));
var progress_key = keyboard_check_pressed(ord("Z"));
var textbox_x =  105;
var textbox_y = 530;
var text_x_offset = 250;
draw_set_color(c_black);
if (global.turn_player == true and global.button_enterstatus = 0) {
if (setup == false){
	setup = true;
	draw_set_font(fnt_ui);
	draw_set_color(c_white);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}
text_length[global.battle_turn] = string_length(text[global.battle_turn])

if (draw_char < text_length[global.battle_turn]){
	timer --
	if (timer <= 0){
		timer = time; 
		audio_play_sound(snd_txt2, 1,false);
	}
		
	draw_char += text_spd;
	draw_char = clamp(draw_char , 0 , text_length[global.battle_turn]);
}
draw_set_font(fnt_ui);
draw_set_color(c_white);
var _drawtext = string_copy(text[global.battle_turn], 1, draw_char);
draw_text(105,520 , "*");
draw_text(150,520 , _drawtext);
}
else{
	draw_char = 0;
}
#endregion



//Menu UI
#region
boss_number = array_length(boss_data);
draw_set_font(fnt_main_ui);
draw_set_color(c_white)
if (global.button_enterstatus = 1){
	switch (global.button_selected){
	case 0: //fight
	for (var i = 0; i < boss_count; i ++){
	draw_text(200, 530 + i*90, "*   " + boss_data[i][0])
	}
	break;
	case 1: //act
	for (var i = 0; i < boss_count; i ++){
	draw_text(200, 530 + i*90, "*   " + boss_data[i][0])
	}
	break;
	case 2:
	draw_text(100, 600, string("Item Menu"));
	break;
	case 3:
	draw_text(100, 600, string("Mercy Menu"));
	break;
	}
}

//Bottom UI
draw_set_font(fnt_bottom_ui);
draw_set_color(c_white)
draw_text(obj_redbar.bbox_right + 26, 800, string(global.player_currenthp) +" / "+ string(global.player_maxhp));
draw_text(55, 800, string(global.player_name));
draw_text(260, 800, "LV " + string(global.player_lv));

//HP
draw_set_font(fnt_hp_ui);
draw_set_color(c_white)
draw_text(490, 812, "HP");


//hp bar
obj_redbar.image_xscale = (1/9) * global.player_lv + (8/9)
obj_yellowbar.image_xscale = obj_redbar.sprite_width * (global.player_currenthp/global.player_maxhp);
#endregion


