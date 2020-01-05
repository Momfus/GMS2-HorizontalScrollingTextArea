///@function sc_textBuffer_add_from_params( text, color )
///@description 
///@param {string}	text 
///@param {color}	color
///@return {real}	void


var l_text = argument0 + " // ",
	l_color = argument1,
	l_widthText = string_width( l_text ),
	l_textArray =	[	l_text,				// text
						l_widthText,		// width
						__boxWidthCurrent,	// currentX
						-l_widthText,		// targetX
						l_color,			// color
						true,				// incoming
						false				// duplicated
					];


ds_queue_enqueue(__textQueueBuffer, l_textArray);