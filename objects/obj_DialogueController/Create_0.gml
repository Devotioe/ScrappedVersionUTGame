textbox_width = 425;
textbox_height = 208;
border = 20;
line_sep = 35;
line_width = textbox_width - border * 2 ;



draw_char = 0;
text_spd = 0.8;
page_number = 0;
page = 0;

setup = false;

time = 3;
timer = time;

switch (global.boss){
	case 1:
	devofight_data();
	break;
	case 2:
	testfight_data();
	break;
}

text = boss_dialogue;
text_length[0] = string_length(text[0]);

cooldown = false;
time = 20;
timer = time;