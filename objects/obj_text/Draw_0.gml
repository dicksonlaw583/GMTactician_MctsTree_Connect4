///@desc Draw text

// Set alignment, font and colour
///Feather disable GM1044
draw_set_halign(halign);
draw_set_valign(valign);
///Feather enable GM1044
draw_set_font(font);
draw_set_colour(colour);

// Draw text
draw_text(x, y, text);

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);
