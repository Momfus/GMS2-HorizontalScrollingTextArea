///sc_draw_surface_center(id,x,y)
///@function sc_draw_surface_center(id, xCenter, yCenter)
///@description				- Dibuja una surface centrada a un punto dado (obtenido de GMLscripts.com/license)
///@param {real} id			- Surface id
///@param {real} xCenter
///@param {real} yCenter
///@return {void}

var l_surface = argument0,
	l_xx = argument1,
	l_yy = argument2,
	l_surfaceHalfWidth = surface_get_width(l_surface) * 0.5,
	l_surfaceHalfHeight = surface_get_height(l_surface) * 0.5;


draw_surface(	l_surface, 
				l_xx - l_surfaceHalfWidth,
				l_yy - l_surfaceHalfHeight
			);
