/// @description Mover texto

if !( ds_list_empty(__textListToMove) ) {
	
	var l_textToMove = __textListToMove[| 0],
		l_textXCurrent = l_textToMove[e_textScroll.currentX];

	
	#region Manejo del texto que entra y sale

		

		if( __textCurrentIncoming  ) {
	
			 if( l_textXCurrent > 0 ) {
				__textCurrentIncoming = false;
			 }
	
		} else{

			if( l_textXCurrent >= __boxWidthCurrent ) {

				__textCurrentIncoming = true;

			}
	
		}

	#endregion


	l_textToMove[@ e_textScroll.currentX] = sc_wrap( l_textXCurrent - __textSpeed, l_textToMove[e_textScroll.targetX], __boxWidthCurrent )

}