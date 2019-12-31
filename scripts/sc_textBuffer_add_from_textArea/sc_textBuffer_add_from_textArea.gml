///@function sc_textBuffer_add_from_textArea()
///@description Agrega al buffer  o que sale de la pasarela de texto
///@rerturn {void}

// En caso de que la lista este vacia, se busca en el buffer para agregar al área del texto
show_debug_message("Salir");

var l_auxTempToAdd = __textListToMove[| 0];
	
ds_list_delete(__textListToMove, 0);
ds_queue_enqueue(__textQueueBuffer, l_auxTempToAdd)

// Verificar que de estar totalmente vacia la lista, se agregue del buffer
if (ds_list_empty(__textListToMove) ) {
	sc_textBuffer_remove_to_textArea();
}
