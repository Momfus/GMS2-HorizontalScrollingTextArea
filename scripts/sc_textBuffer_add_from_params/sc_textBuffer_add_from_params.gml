///@function sc_textBuffer_add_from_params( text, color )
///@description 
///@param {string}	text 
///@param {color}	color
///@return {real}	void


var l_text = argument0 + " // ",
	l_color = argument1,
	l_textArray =	[	l_text,
						__boxWidthCurrent,
						-string_width( l_text ),
						l_color,
						true
					];


ds_queue_enqueue(__textQueueBuffer, l_textArray);