///@function sc_textBuffer_add_from_textArea()
///@description Quita del buffer para colocar en la pasarela de texto.
///@rerturn {void}


show_debug_message("Entrar");

if !( ds_queue_empty(__textQueueBuffer) ) {

	var l_auxTextArray = ds_queue_dequeue(__textQueueBuffer);
	
	l_auxTextArray[@e_textScroll.currentX] = __boxWidthCurrent;
	
	
	ds_list_add(__textListToMove, l_auxTextArray);

}
