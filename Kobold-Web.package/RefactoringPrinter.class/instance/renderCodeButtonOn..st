rendering
renderCodeButtonOn: html
	html
		paragraph: [ html anchor
				callback: [ self showSourceCode ];
				with: [ html tbsGlyphIcon iconConsole.
					html
						space;
						text: 'See Code' ] ]