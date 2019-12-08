///@function sc_set_textAreaValueWidth(intensityValue)
///@description					-	Asigna el nuevo valor al ancho de la caja de texto con los controles necesarios.
///@param {real} intensityValue	-	Valor entre 0 y 1
///@return {void}

var l_intensityValue = argument0;

with( control_textArea ) {

	__boxWidthCurrent = __boxWidthMin + (__boxWidthMax * l_intensityValue);
	
}