rendering
renderEvent: event on: html

	html
		text: (event timestamp + self timeCorrection) printString;
		space;
		strong: event printString;
		space.
	(html anchor)
		callback: [self repeatEvent: event];
		with: [html tbsGlyphIcon iconDuplicate]