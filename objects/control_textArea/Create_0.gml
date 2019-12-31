/// @description Iniciar Atributos

__boxWidthMin = 100;
__boxHeightMin = 50;

__boxWidthMax = 300;
__boxHeightMax = 150;

__boxWidthCurrent = __boxWidthMin;
__boxHeightCurrent = __boxHeightMin; 

__boxTextSurface = noone;

#region Manejo de la lista de textos

	enum e_textScroll {
	
		text, // 0
		width, // 1
		currentX, // 2
		targetX, // 3
		color, // 4
		inComing // 5 --> Usado para detectar cuando entra y sale del área del texto
		
	}
	
	//FIFO buffer
	__textQueueBuffer = ds_queue_create();
	
	sc_textBuffer_add_from_params("1er Texto", c_black);
	sc_textBuffer_add_from_params("2do Texto", c_red);
	sc_textBuffer_add_from_params("3er Texto", c_blue);

	// Arreglo de texto a mover
	__textListToMove =  ds_list_create();
	sc_textBuffer_remove_to_textArea();

	__textSpeed = 1;

	

#endregion