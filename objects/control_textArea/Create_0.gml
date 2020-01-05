/// @description Iniciar Atributos

__boxWidthMin = 100;
__boxHeightMin = 50;

__boxWidthMax = 300;
__boxHeightMax = 150;

__boxWidthCurrent = __boxWidthMax// __boxWidthMin;
__boxHeightCurrent = __boxHeightMin; 

__boxTextSurface = noone;

#region Manejo de la lista de textos

	enum e_textScroll {
	
		text, // 0
		width, // 1
		currentX, // 2
		targetX, // 3
		color, // 4
		incoming, // 5 --> Usado para detectar cuando entra y sale del área del texto
		duplicated // 6 --> Se activa si el mismo texto se vuelve a usar en la misma pasarela de texto.
		
	}
	
	//FIFO buffer
	__textQueueBuffer = ds_queue_create();
	
	sc_textBuffer_add_from_params("1er Texto", c_black);

	// Arreglo de texto a mover
	__textListToMove =  ds_list_create();
	sc_textBuffer_remove_to_textArea();

	__textSpeed = 1;

	

#endregion