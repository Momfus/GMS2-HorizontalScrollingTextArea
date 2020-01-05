///@function sc_textArea_duplicate()
///@description						-	Agrega a la lista para moverse un texto que ya esta pasando y lo marca como duplicado para no tenerse en cuenta al salir
///@return {void}

var l_listSize = ds_list_size(__textListToMove),
	l_auxText = undefined;

for( var i = 0; i < l_listSize; i++ ) {

	l_auxText = __textListToMove[| i];
	
	if( l_auxText[e_textScroll.duplicated] ) {
		continue;
	}
	
	l_auxText[@ e_textScroll.duplicated] = true;
	
	l_auxText[e_textScroll.incoming] = true;
	l_auxText[e_textScroll.duplicated] = false;
	l_auxText[e_textScroll.currentX] = __boxWidthCurrent;
	ds_list_add(__textListToMove, l_auxText);

	break;
	
}