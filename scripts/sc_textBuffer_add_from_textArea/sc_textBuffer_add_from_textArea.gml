///@function sc_textBuffer_add_from_textArea()
///@description Agrega al buffer que sale de la pasarela de texto
///@rerturn {void}

// En caso de que la lista este vacia, se busca en el buffer para agregar al área del texto
show_debug_message("Salir");

var l_auxTempToAdd = __textListToMove[| 0];
	
ds_list_delete(__textListToMove, 0);
ds_queue_enqueue(__textQueueBuffer, l_auxTempToAdd);

// Si no hay un texto entrante, se envia el mismo que acaba de sacarse
if !(sc_textArea_is_incoming_text() ) {

	sc_textBuffer_remove_to_textArea();	

}
