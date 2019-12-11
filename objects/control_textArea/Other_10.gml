/// @description Re-escalar surface y posiones

// Reposicionar
var l_oldWidthValue = surface_get_width(__boxTextSurface);

__textCurrentX = (__boxWidthCurrent * __textCurrentX) / l_oldWidthValue;


// Re-escalar surface
if( surface_exists( __boxTextSurface ) ) {
	surface_resize(__boxTextSurface, __boxWidthCurrent, __boxHeightCurrent);
}


