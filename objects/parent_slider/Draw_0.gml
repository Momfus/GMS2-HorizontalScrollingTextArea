/// @description Dibujar el slider

// Dibujar barra de fondo
draw_self();

// Dibujar medidor de itensidad seleccionado y botón

var l_valueWidthPosition = sprite_width * __sliderValueCurrent;

draw_sprite_part( sprite_index, 1, 0, 0, l_valueWidthPosition, sprite_height, x, y - sprite_get_yoffset(sprite_index) );
draw_sprite( sp_slider_button, 0, x + l_valueWidthPosition, y );
