/// @description Mover texto

if !( ds_list_empty(__textListToMove) ) {
	
	var l_textToMove = __textListToMove[| 0],
		l_textXCurrent = l_textToMove[e_textScroll.currentX];

	
	#region Manejo del texto que entra y sale

		if( l_textToMove[e_textScroll.inComing]  ) {
	
			// Al Entrar
			if( l_textXCurrent > 0 ) {
				 
				l_textToMove[@ e_textScroll.inComing] = false;
				
			}
	
		} else{

			// Al Salir
			if( l_textXCurrent <= l_textToMove[e_textScroll.targetX]) {
		
				l_textToMove[@ e_textScroll.inComing]= true;
				sc_textBuffer_add_from_textArea();				

			}
	
		}

	#endregion


	l_textToMove[@e_textScroll.currentX] = l_textXCurrent - __textSpeed;

}