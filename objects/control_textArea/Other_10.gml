/// @description Re-escalar surface y posiones

// Reposicionar
var l_oldWidthValue = surface_get_width(__boxTextSurface);

// Se reposiciona

var l_listMoveSize = ds_list_size(__textListToMove),
	l_textToMove = noone,
	l_textXCurrent = noone;

for( var i = 0; i < l_listMoveSize; i++ ) {
	
	l_textToMove = __textListToMove[| i];
	l_textXCurrent = l_textToMove[e_textScroll.currentX];
	l_textToMove[@ e_textScroll.currentX] = (__boxWidthCurrent * l_textXCurrent) / l_oldWidthValue;

}



// Re-escalar surface
if( surface_exists( __boxTextSurface ) ) {
	surface_resize(__boxTextSurface, __boxWidthCurrent, __boxHeightCurrent);
}


