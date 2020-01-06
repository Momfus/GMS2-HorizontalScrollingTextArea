/// @description Iniciar Atributos

__boxWidthMin = 200;
__boxHeightMin = 50;

__boxWidthMax = 500;
__boxHeightMax = 100;

__boxWidthCurrent = __boxWidthMin;
__boxHeightCurrent = __boxHeightMin; 

__boxTextSurface = noone;

__boxOffsetY = -80;

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
	__textQueueBufferMax = 10;

	// Arreglo de texto a mover
	__textListToMove =  ds_list_create();
	sc_textBuffer_remove_to_textArea();

	__textSpeed = 1;

	

#endregion