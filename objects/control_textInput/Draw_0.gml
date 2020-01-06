/// @description 

#region Info del input

	// Cuadro de fondo
	draw_set_colour(c_dkgray);
	draw_rectangle(__textInfoBoxX, __textInfoBoxY, __textInfoBoxWidth, __textInfoBoxHeight, false)

	// Indicaciones
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	draw_text(global.g_roomWidthHalf, __textInfoBoxY + 5, "ESCRIBE Y PRESIONA ENTER PARA AGREGAR TEXTO\n(los colores son elegidos de forma aleatoria)");
	
#endregion


#region Input usuario 

	// Cuadro de input
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

#endregion
