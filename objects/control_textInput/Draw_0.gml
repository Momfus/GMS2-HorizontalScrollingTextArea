/// @description 

draw_set_color(c_white)
draw_rectangle( __textInputBoxX, __textInputBoxY, __textInputBoxWidth, __textInputBoxHeight, false )

draw_set_colour(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

// Texto del usuario
draw_text(__textInputBoxIni, __textInputBoxY + __textInputBoxHeightHalf, __textInputUserCurrent);


// Dibujar linea de comando titilando
if( __textInputCommandShow ) {
	
	draw_set_colour(c_black);
	draw_text(__textInputBoxIni + string_width(__textInputUserCurrent) - 1, __textInputBoxY + __textInputBoxHeightHalf, __textInputCommand);
}
