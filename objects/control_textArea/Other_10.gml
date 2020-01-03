/// @description Re-escalar surface y posiones

// Atributo a considerar antes del escalado del surface

var l_oldWidthValue = surface_get_width(__boxTextSurface);


// Re-escalar surface
if( surface_exists( __boxTextSurface ) ) {
	surface_resize(__boxTextSurface, __boxWidthCurrent, __boxHeightCurrent);
}


#region Reposicionar texto según características


	if( ds_list_empty(__textListToMove) ){ exit; }

	#region Atributos temporales a usar
	
		var l_listMoveSize = ds_list_size(__textListToMove),
			l_textToMove = undefined,
			l_textXCurrent = undefined,
			l_textWidth = undefined,
			l_textAux = undefined,
			l_textAuxWidth = undefined,
			l_textAuxPosX = undefined;	
	
	#endregion

	#region Se reposicionan todos textos de la pasarela
	
		for( var i = 0; i < l_listMoveSize; i++ ) {
	
			l_textToMove = __textListToMove[| i];
			l_textXCurrent = l_textToMove[e_textScroll.currentX]; 
			l_textToMove[@ e_textScroll.currentX] = (__boxWidthCurrent * l_textXCurrent) / l_oldWidthValue;
	
		}
	
	#endregion 
	
	#region Verificación del texto con el que tiene adelante (i-1)
	
		for( var i = 1; i < l_listMoveSize; i++ ) {
		
			l_textToMove = __textListToMove[| i];
			l_textAux = __textListToMove[| (i - 1)];
		
			l_textXCurrent = l_textToMove[e_textScroll.currentX];
			l_textWidth = l_textToMove[e_textScroll.width];
		
			l_textAuxPosX= l_textAux[e_textScroll.currentX];
			l_textAuxWidth= l_textAux[e_textScroll.width];
		
			#region Posicionar si se sobreponen detrás de este.
			
				if( l_textXCurrent < ( l_textAuxPosX + l_textAuxWidth) ) {
			
					l_textToMove[@ e_textScroll.currentX] = l_textAuxPosX + l_textAuxWidth + 1;
					l_textXCurrent =  l_textToMove[e_textScroll.currentX];
			
				}
			
			#endregion 
			
			#region Si esta totalemente fuera de la entrada a la pasarela de texto, colocarlo de nuevo en el buffer
			
				if( l_textXCurrent > __boxWidthCurrent ) {
		
					sc_textBuffer_add_from_textArea(i);
		
				}
			
			#endregion
			
			#region Si su nueva posicion no tiene completo el texto dentro de la pasarela de texto
			
				if( l_textXCurrent > (__boxWidthCurrent - l_textWidth) ){
			
					l_textToMove[@ e_textScroll.incoming] = true
					continue;
				}
			
			#endregion
		
		}
	
	#endregion

	

#endregion