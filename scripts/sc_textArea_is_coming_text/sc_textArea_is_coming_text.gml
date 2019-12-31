///@function sc_textArea_is_coming_text()
///@description			-	Verifica si la lista que está moviendose en la pasarela, tiene algun texto entrando aún.
///@return {boolean}

var l_isCommingText = false,
	l_textMoveSize = ds_list_size(__textListToMove),
	l_auxTextComming = undefined;

for( var i = 0; i < l_textMoveSize; i++ ) {

	l_auxTextComming = __textListToMove[| i];
	if !( l_auxTextComming[e_textScroll.inComing] ) {
	
		l_isCommingText = true;
		break;
	
	}

}


return l_isCommingText;