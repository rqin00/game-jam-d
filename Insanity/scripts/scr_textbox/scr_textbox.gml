// scr_text("Text", speed, x, y);

txt = instance_create_layer(argument2, argument3, "Text", obj_textbox); //argument2 -> 2 and argument3 -> 3
with (txt) {
	padding = 16; // Gives space between textbox and text
	maxLength = room_width[0];
	text = argument0; // Sets text as the zeroth argument
	textSpeed = argument1; // Sets textSpeed as the first argument
	font = fnt_1; // Sets font
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	draw_set_font(font);
	
	text_width = string_width_ext(text, font_size + (font_size / 2), maxLength);
	text_height = string_height_ext(text, font_size + (font_size / 2), maxLength); 
	
	boxWidth = text_width + (padding * 2);
	boxHeight = text_height + (padding * 2);
}