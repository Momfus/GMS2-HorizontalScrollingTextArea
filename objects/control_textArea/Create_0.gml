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
		currentX, // 1
		targetX, // 2
		color, // 3
		inComing // 4 --> Usado para detectar cuando entra y sale del área del texto
		
	}
	
	//FIFO buffer
	__textQueueBuffer = ds_queue_create();
	
	sc_textBuffer_add_from_params("Prueba 1", c_black);
	sc_textBuffer_add_from_params("Prueba 2", c_black);

	// Arreglo de texto a mover
	__textListToMove =  ds_list_create();
	ds_list_add(__textListToMove, ds_queue_dequeue(__textQueueBuffer)  );

	__textSpeed = 1;

	

#endregion