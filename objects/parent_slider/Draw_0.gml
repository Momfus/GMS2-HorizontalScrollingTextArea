/// @description Dibujar el slider

var l_sliderOffset = sprite_get_yoffset(sprite_index);

// Título de medidor

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_text(x + sprite_width * 0.5, y - l_sliderOffset - 4, __sliderTitle);

// Dibujar barra de fondo
draw_self();

// Dibujar medidor de itensidad seleccionado y botón
var l_valueWidthPosition = sprite_width * __sliderValueCurrent;

draw_sprite_part( sprite_index, 1, 0, 0, l_valueWidthPosition, sprite_height, x, y - l_sliderOffset );
draw_sprite( sp_slider_button, 0, x + l_valueWidthPosition, y );
