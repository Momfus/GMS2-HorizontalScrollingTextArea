///@function sc_textBuffer_remove_to_textArea()
///@description			Quita del buffer para colocar en la pasarela de texto.
///@return {boolean}	bufferEmpty


show_debug_message("Nuevo texto entrando");

var l_bufferEmpty = false;

if !( ds_queue_empty(__textQueueBuffer) ) {

	var l_auxTextArray = ds_queue_dequeue(__textQueueBuffer);
	
	l_auxTextArray[@e_textScroll.currentX] = __boxWidthCurrent;
	
	
	ds_list_add(__textListToMove, l_auxTextArray);

} else {

	l_bufferEmpty = true;
	
}

return l_bufferEmpty;
