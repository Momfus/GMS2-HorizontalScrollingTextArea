///@function sc_textArea_set_width(intensityValue)
///@description					-	Asigna el nuevo valor al ancho de la caja de texto con los controles necesarios.
///@param {real} intensityValue	-	Valor entre 0 y 1
///@return {void}

var l_intensityValue = argument0;

with( control_textArea ) {

	__boxWidthCurrent = __boxWidthMin + (__boxWidthMax * l_intensityValue);
	event_user(0); // Re-escalado de surface y posiciones
}