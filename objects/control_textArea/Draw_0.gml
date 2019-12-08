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


