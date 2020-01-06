/// @description Manejar input de usuario


// Cuando se envia el texto al buffer
if( keyboard_check(vk_enter) and ( string_length(__textInputUserCurrent) > 0 ) ) {
	
	var l_randomColor = choose(c_black, c_blue, c_red, c_fuchsia);
	with( control_textArea ) {
		sc_textBuffer_add_from_params( other.__textInputUserCurrent, l_randomColor);
	
		if( ds_list_empty(__textListToMove) ) {
	
			sc_textBuffer_remove_to_textArea();
	
		}
	}
	
	keyboard_string = "";
	__textInputUserCurrent = "";
	
	exit;
	
}

// Cuando el usuario escribe
if( string_length(__textInputUserCurrent) < __textInputUserMax ) {
	__textInputUserCurrent = keyboard_string;
} else {

	if( keyboard_check_pressed(vk_backspace) ) {
		__textInputUserCurrent = string_delete(__textInputUserCurrent,__textInputUserMax,1);
        keyboard_string = __textInputUserCurrent;
	}
	
}
