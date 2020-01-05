/// @description Text Area

var l_boxHalfWidth = __boxWidthCurrent * 0.5,
	l_boxHalfHeight = __boxHeightCurrent * 0.5;

#region Rectangulo borde

	draw_set_colour(c_fuchsia);
	
	draw_rectangle( global.g_roomWidthHalf - l_boxHalfWidth - 1,
					global.g_roomHeightHalf - l_boxHalfHeight - 1,
					global.g_roomWidthHalf + l_boxHalfWidth,
					global.g_roomHeightHalf + l_boxHalfHeight,
					true 
				  );
	
#endregion

#region Manejo de surface

	if ( surface_exists(__boxTextSurface) ) {
	
		#region Dibujar sobre surface

			surface_set_target(__boxTextSurface);
	
				
				draw_set_colour(c_white);	
				draw_rectangle(0, 0, __boxWidthCurrent, __boxHeightCurrent, false)
	
	
				// Lista de textos a pasar
				if !( ds_list_empty(__textListToMove) ) {

	
					draw_set_halign(fa_left);
					draw_set_valign(fa_middle);
					
					#region Dibujar texto en pasarela
					
						var l_textToMove = undefined,
							l_textListSize = ds_list_size( __textListToMove );
					
						for( var i = 0; i < l_textListSize; i++ ) {
						
							l_textToMove = __textListToMove[| i];
					
							draw_set_color( l_textToMove[e_textScroll.color] );	
							draw_text(l_textToMove[e_textScroll.currentX] , l_boxHalfHeight, l_textToMove[e_textScroll.text] );
							
						}
					
					#endregion
					
				}
	
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

#region @Test

	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	#region Información del buffer
	
		if( ds_queue_empty( __textQueueBuffer ) ) {
	
			draw_text(10, room_height - 40, "QuequeBuffer Top: undefined" );
			draw_text(10, room_height - 20, "QueueBuffer Size: empty" );
	
		} else {

		
			var l_auxTextBuffer = ds_queue_head(__textQueueBuffer),
				l_textStackSizeBuffer = ds_queue_size(__textQueueBuffer);

			draw_text(10, room_height - 40, "QuequeBuffer Top: " + l_auxTextBuffer[0] );
			draw_text(10, room_height - 20, "QueueBuffer Size: " + string(l_textStackSizeBuffer) );
		
		}
	
	#endregion
	
	#region Información de la lista de texto a mover
	
		var l_auxText = "",
			l_auxTextSize = "noone";
	
		if !( ds_list_empty(__textListToMove) ) {
		
			var l_textToMove = __textListToMove[| 0];
		
			l_auxText = l_textToMove[e_textScroll.text];
			l_auxTextSize = string( ds_list_size(__textListToMove) );
	
		}
	
		draw_text(10, room_height - 60, "ListBuffer Size: " +  l_auxTextSize );
		draw_text(10, room_height - 80, "ListBuffer Text: " +  l_auxText );
	
	#endregion
	
	

#endregion