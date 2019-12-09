/// @description Verificar botón si no es seleccionado


// Nota: aca se evita usar otro objeto para manejar el botón del slider (ahi se usa los eventos mouse_leave, mouse_enter, etc) pero de esta forma se ahorra el crear una instancia por cada slider.
var l_buttonX = (x + sprite_width * __sliderValueCurrent) - sprite_get_xoffset(sp_slider_button),
	l_buttonY = y - sprite_get_yoffset(sp_slider_button),
	l_buttonWidth = sprite_get_width(sp_slider_button),
	l_buttonHeight = sprite_get_height(sp_slider_button);

__sliderButtonOver = point_in_rectangle( mouse_x, mouse_y, l_buttonX, l_buttonY, l_buttonX + l_buttonWidth, l_buttonY + l_buttonHeight );

// Al hacer click con el mouse verificar si es sobre el botón
if( mouse_check_button_pressed(mb_left ) and  __sliderButtonOver) {
	
	__sliderSelected = true;
	
}


// Al no hacer más click
if( !mouse_check_button(mb_left) ) {

	__sliderSelected = false;
}

// En caso de selecionar el slider
if( __sliderSelected ) {
	
	var l_barNewValue = (mouse_x - x) / sprite_width; // Obtengo la posición relativa en que esta el mouse y divido para obtener el valor de 0 a 1
	__sliderValueCurrent = clamp( l_barNewValue, 0, __sliderValueMax );
	
	event_user(0); // Esto lo maneja cada hijo del objeto
	
}
