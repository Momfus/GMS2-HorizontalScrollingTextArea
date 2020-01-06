/// @description Inicio atributos

// Texto del usuario
__textInputUserCurrent = "";
__textInputUserMax = 32;

// Manejo de linea de comando final
__textInputCommand = "|";
__textInputCommandShow = false;
alarm[0] = room_speed * 0.25;


// Propiedades del cuadro de texto de input
__textInputBoxX = global.g_roomWidthHalf - 160
__textInputBoxY = room_height - 60;
__textInputBoxWidth = global.g_roomWidthHalf + 160;
__textInputBoxHeight = room_height - 40;

__textInputBoxHeightHalf = (__textInputBoxHeight - __textInputBoxY) * 0.5;
__textInputBoxIni = __textInputBoxX + 10;


// Propiedades del cuadro de información de input
__textInfoBoxX = 20;
__textInfoBoxY = __textInputBoxY - 60;
__textInfoBoxWidth = room_width - 20;
__textInfoBoxHeight = __textInputBoxHeight + 20;
