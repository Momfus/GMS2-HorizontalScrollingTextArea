/// @description Mover texto

if !( ds_list_empty(__textListToMove) ) {
	
	
	var l_textToMove = undefined,
		l_textXCurrent = undefined,
		l_textListSize = ds_list_size( __textListToMove );
	
	
	#region Mover cada texto de la lista
	
		for( var i = 0; i < l_textListSize; i++ ) {
	
			l_textToMove = __textListToMove[| i];
			l_textXCurrent = l_textToMove[e_textScroll.currentX];
	
			#region Manejo del texto que entra y sale

				if( l_textToMove[e_textScroll.incoming]  ) {
	
					#region Evento al terminar de ENTRAR
			
						var l_textInsideAllX = __boxWidthCurrent - l_textToMove[e_textScroll.width];
			
						if( l_textXCurrent < l_textInsideAllX ) {
				 
							l_textToMove[@ e_textScroll.incoming] = false;
							
							// Si el buffer està vacio, usar texto duplicado comenzando desde la cabeza de la lista
							if ( sc_textBuffer_remove_to_textArea() ) {
								
								sc_textArea_duplicate();
								
							}
											
						}
			
					#endregion
	
				} else{

					#region Evento al terminar de SALIR
			
						if( l_textXCurrent <= l_textToMove[e_textScroll.targetX]) {
		
							l_textToMove[@ e_textScroll.incoming] = true;
							sc_textBuffer_add_from_textArea(0);	
							
							// Al quitar un elemento, se reduce el indice y tamaño de la lista del ciclo for
							i--;
							l_textListSize--;
							continue;

						}
			
					#endregion
			
	
				}

			#endregion

			l_textToMove[@e_textScroll.currentX] = l_textXCurrent - __textSpeed;
		
		}
		
	#endregion

}