/// @description Iniciar Atributos

__boxWidthMin = 100;
__boxHeightMin = 50;

__boxWidthMax = 300;
__boxHeightMax = 150;

__boxWidthCurrent = __boxWidthMin;
__boxHeightCurrent = __boxHeightMin; 

__boxTextSurface = noone;

#region Manejo de la animación del texto

	__textCurrentIncoming = true;

	__textCurrentShow = "Texto prueba";
	__textCurrentWidth = string_width( __textCurrentShow );
	
	__textTargetX = -__textCurrentWidth; // definir fuente antes de obtener el ancho en caso de usar diferente al default
	__textCurrentX = __boxWidthCurrent;
	__textSpeed = 1;

	

#endregion