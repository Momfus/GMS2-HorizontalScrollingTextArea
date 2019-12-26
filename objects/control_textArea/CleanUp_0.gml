/// @description Destruir surface y listas

if( surface_exists(__boxTextSurface) ){

	surface_free(__boxTextSurface);

}

ds_queue_destroy(__textQueueBuffer);
ds_list_destroy(__textListToMove);

