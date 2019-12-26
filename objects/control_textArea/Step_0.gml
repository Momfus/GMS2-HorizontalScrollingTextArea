/// @description Mover texto

if !( ds_list_empty(__textListToMove) ) {
	
	var l_textToMove = __textListToMove[| 0],
		l_textXCurrent = l_textToMove[e_textScroll.currentX];

	
	#region Manejo del texto que entra y sale

		

		if( l_textToMove[e_textScroll.inComing]  ) {
	
			// Al Entrar
			 if( l_textXCurrent > 0 ) {
				 
				l_textToMove[@ e_textScroll.inComing] = false;
				show_debug_message("Entrar");
				
			 }
	
		} else{

			// Al Salir
			if( l_textXCurrent >= __boxWidthCurrent ) {

				l_textToMove[@ e_textScroll.inComing]= true;
				show_debug_message("Salir");

			}
	
		}

	#endregion


	l_textToMove[@ e_textScroll.currentX] = sc_wrap( l_textXCurrent - __textSpeed, l_textToMove[e_textScroll.targetX], __boxWidthCurrent )

}