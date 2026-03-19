var skip_key = keyboard_check_pressed(ord("X"));
var progress_key = keyboard_check_pressed(ord("Z"));
var textbox_x =  Inst_Boss1.x;
var textbox_y = Inst_Boss1.y;
var text_x_offset = 180;
var text_y_offset = -100;
draw_set_color(c_black);
draw_set_font(fnt_boss);

if (setup == false) {
	setup = true;
	draw_set_font(fnt_boss);
	draw_set_color(c_black);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//pages initaillizing
	page_number = array_length(text[global.battle_turn]);
	for (var p = 0 ; p < page_number ; p++){
		text_length[p] = string_length(text[global.battle_turn][p])
	}
}
	
	
if (draw_char < text_length[page]){
	
	switch (global.boss){
	case 1:
	devofight_diacontroller();
	break;
	case 2:
	devofight_diacontroller();
	break;
	}
	
	var draw_char_prev = floor(draw_char);
	
	if (cooldown == false){
		draw_char += text_spd;
		show_debug_message(draw_char);
	}
	
	var draw_char_curr = floor(draw_char);
	
	if draw_char_curr > draw_char_prev {
		audio_play_sound(snd_boss, 1,false);
	}
	draw_char = clamp(draw_char , 0 , text_length[page]);
}
	
	//skipping dialogues
if (progress_key or skip_key){
		if (draw_char == text_length[page]){
			//check if page number are correct to flip
			if (page < page_number - 1){
				page ++;
			    draw_char = 0;
			}
			else{
				global.boss_attacking = true;
				global.cutscene = false;
				instance_destroy();
			}
		}
		else{
			draw_char = text_length[page];
		}
			
}
draw_sprite(spr_blconwdshrt_0, 1 , textbox_x + text_x_offset , textbox_y + text_y_offset);
var _drawtext = string_copy(text[global.battle_turn][page], 1, draw_char);
draw_text_ext(textbox_x + text_x_offset + border , textbox_y + border + text_y_offset, _drawtext, line_sep, line_width);
