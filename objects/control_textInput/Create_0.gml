/// @description Inicio atributos

// Texto del usuario
__textInputUserCurrent = "";
__textInputUserMax = 32;

// Manejo de linea de comando final
__textInputCommand = "|";
__textInputCommandShow = false;
alarm[0] = room_speed * 0.25;

// keyboard_string



// Propiedades del cuadro de texto
__textInputBoxX = global.g_roomWidthHalf - 20;
__textInputBoxY = room_height - 60;
__textInputBoxWidth = global.g_roomWidthHalf + 300;
__textInputBoxHeight = room_height - 40;

__textInputBoxHeightHalf = (__textInputBoxHeight - __textInputBoxY) * 0.5;
__textInputBoxIni = __textInputBoxX + 10;
