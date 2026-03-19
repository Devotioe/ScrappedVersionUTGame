switch (global.boss){
	case 1:
	devofight_data();
	break;
	case 2:
	testfight_data();
	break;
}


textbox_width = 340;
textbox_height = 170;
border = 30;
line_sep = 25;
line_width = 60;

text = player_text;

draw_char = 0;
text_spd = 0.8;
text_length[0] = string_length(text[0]);
page_number = 0;
page = 0;

setup = false;
time = 3;
timer = time;

boss_count = array_length(boss_data);

//HP bar
Inst_HPYel = instance_create_layer(558, 801, "Instances", obj_yellowbar)
Inst_HPRed = instance_create_layer(558, 801, "Instances", obj_redbar)




