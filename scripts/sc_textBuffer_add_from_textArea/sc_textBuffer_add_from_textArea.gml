///@function sc_textBuffer_add_from_textArea(index)
///@description Agrega al buffer quitando de la pasarela de texto según el indice indicado
///@param {int} index -	 Posicón dentro de la lista del texto dentro de la pasarela para quitarlo agregar al buffer
///@rerturn {void}

var l_index = argument0;

// En caso de que la lista este vacia, se busca en el buffer para agregar al área del texto
show_debug_message("Salir");

if( ds_queue_size(__textQueueBuffer) < __textQueueBufferMax ) {

	var l_auxTempToAdd = __textListToMove[| l_index];
	
	

	// Solor agregar al buffer en caso de no estar duplicado el mismo
	if !( l_auxTempToAdd[ e_textScroll.duplicated ] ) { 

		ds_queue_enqueue(__textQueueBuffer, l_auxTempToAdd);

		// Si no hay un texto entrante, se envia el mismo que acaba de sacarse
		if !(sc_textArea_is_incoming_text() ) {

			sc_textBuffer_remove_to_textArea();	

		}

	}

}

ds_list_delete(__textListToMove, l_index);