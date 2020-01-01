///@function sc_textArea_is_incoming_text()
///@description			-	Verifica si la lista que está moviendose en la pasarela, tiene algun texto entrando aún.
///@return {boolean}

var l_isIncomingText = false,
	l_textMoveSize = ds_list_size(__textListToMove),
	l_auxTextComing = undefined;

for( var i = 0; i < l_textMoveSize; i++ ) {

	l_auxTextComing = __textListToMove[| i];
	
	if ( l_auxTextComing[e_textScroll.incoming] ) {
	
		l_isIncomingText = true;
		break;
	
	}

}


return l_isIncomingText;