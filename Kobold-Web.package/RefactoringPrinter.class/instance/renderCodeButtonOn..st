rendering
renderCodeButtonOn: html
	html
		paragraph: [ html anchor
				callback: [ self refactoring script inspect ];
				with: [ html tbsGlyphIcon iconFont.
					html space.
					html text: 'See Code' ] ]