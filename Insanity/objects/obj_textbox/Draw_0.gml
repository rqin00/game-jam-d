/// @description Adding letters over time
if (time < text_length) {
	time += textSpeed;
	print = string_copy(text, 0, time); // Takes string, counts to a particular letter and then add letter to variable
}

// Render textbox and text
draw_set_alpha(alpha);
if (alpha < 1) {
	alpha += (textSpeed / 10);
}
else {
	alpha = 1;
}

draw_set_font(font); // Sets font

draw_set_color(c_white); // Draws gray rectangle
draw_rectangle(x, y, x + boxWidth, y + boxHeight, 0);

draw_set_color(c_black); // Draws black rectangular outline
draw_rectangle(x, y, x + boxWidth, y + boxHeight, 1);

draw_set_color(c_blue);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text_ext
(
	x + padding, 
	y + padding,
	print,
	font_size + (font_size / 2),
	maxLength
);

draw_set_alpha(1);