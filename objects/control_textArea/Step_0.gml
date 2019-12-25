/// @description Mover texto

#region Manejo del texto que entra y sale


if( __textCurrentIncoming  ) {
	
	 if( __textCurrentX  > 0 ) {
		__textCurrentIncoming = false;
		show_debug_message("HOLA >>>>");
	 }
	
} else{

	if( __textCurrentX >= __boxWidthCurrent ) {

		__textCurrentIncoming = true;

	}
	
}


#endregion


__textCurrentX =  sc_wrap(__textCurrentX - __textSpeed, __textTargetX, __boxWidthCurrent )
