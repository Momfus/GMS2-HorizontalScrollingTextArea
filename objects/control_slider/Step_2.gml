/// @description Hover button control

var l_isOverButton = false;

// Verificar si está sobre alguno de los botones de slider
with( parent_slider ) {

	if(__sliderButtonOver || __sliderSelected) { 
		l_isOverButton = true; 
		break; // Salir del ciclo en caso de ya haber encontrado un caso
	}


}

// Cambia el cursos según el caso
window_set_cursor( l_isOverButton ? cr_drag : cr_default   );