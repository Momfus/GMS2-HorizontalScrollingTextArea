/// @description Mover texto

if !( ds_list_empty(__textListToMove) ) {
	
	var l_textToMove = __textListToMove[| 0],
		l_textXCurrent = l_textToMove[e_textScroll.currentX];

	
	#region Manejo del texto que entra y sale

		if( l_textToMove[e_textScroll.inComing]  ) {
	
			#region Evento al terminar de ENTRAR
			
				var l_textInsideAllX = __boxWidthCurrent - l_textToMove[e_textScroll.width];
			
				if( l_textXCurrent < l_textInsideAllX ) {
				 
					l_textToMove[@ e_textScroll.inComing] = false;
				
				
				}
			
			#endregion
	
		} else{

			#region Evento al terminar de SALIR
			
				if( l_textXCurrent <= l_textToMove[e_textScroll.targetX]) {
		
					l_textToMove[@ e_textScroll.inComing]= true;
					sc_textBuffer_add_from_textArea();				

				}
			
			#endregion
			
	
		}

	#endregion


	l_textToMove[@e_textScroll.currentX] = l_textXCurrent - __textSpeed;

}