///@function sc_textArea_set_height(intensityValue)
///@description					-	Asigna el nuevo valor al alto de la caja de texto con los controles necesarios.
///@param {real} intensityValue	-	Valor entre 0 y 1
///@return {void}

var l_intensityValue = argument0;

with( control_textArea ) {

	__boxHeightCurrent = __boxHeightMin + (__boxHeightMax * l_intensityValue);
	event_user(0); // Re-escalado de surface
	
}