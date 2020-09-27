///@desc Draw slider

// Slider back
var semiWidth = width/2;
var semiHeight = height/2;
draw_set_colour(barColour);
draw_rectangle(baseX-semiWidth, baseY-semiHeight, baseX+semiWidth, baseY+semiHeight, false);

// Set font
draw_set_halign(fa_center);
draw_set_font(fnt_text);
draw_set_colour(colour);

// Title
draw_text(baseX, baseY-height-string_height(title), title);

// Slider button
draw_self();

// Amount
draw_text_transformed(x, baseY+sprite_height, string(global.mctsPlayouts), hintScale, hintScale, 0);

// Reset
draw_set_halign(fa_left);
