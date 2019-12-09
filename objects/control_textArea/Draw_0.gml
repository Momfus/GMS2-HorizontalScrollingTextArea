/// @description Text Area


var l_boxHalfWidth = __boxWidthCurrent * 0.5,
	l_boxHalfHeight = __boxHeightCurrent * 0.5;

#region Rectangulo borde

	draw_set_colour(c_fuchsia);
	
	draw_rectangle( global.g_roomWidthHalf - l_boxHalfWidth,
					global.g_roomHeightHalf - l_boxHalfHeight,
					global.g_roomWidthHalf + l_boxHalfWidth,
					global.g_roomHeightHalf + l_boxHalfHeight,
					true 
				  );
	
#endregion

#region Manejo de surface

	if ( surface_exists(__boxTextSurface) ) {
	
		#region Dibujar sobre surface

			surface_set_target(__boxTextSurface);
	
				draw_set_colour(c_red);	
				draw_rectangle(0, 0, __boxWidthCurrent, __boxHeightCurrent, false)
	
			surface_reset_target()

		#endregion
		
	} else {
		
		#region Crear y limpiar surface
		
			__boxTextSurface = surface_create(__boxWidthCurrent, __boxHeightCurrent)
			surface_set_target(__boxTextSurface);
				draw_clear_alpha(c_white, 1);
			surface_reset_target()
		
		#endregion
		
	}



	// Dibujar la surface en sí
	sc_draw_surface_center( __boxTextSurface, global.g_roomWidthHalf, global.g_roomHeightHalf );

#endregion
