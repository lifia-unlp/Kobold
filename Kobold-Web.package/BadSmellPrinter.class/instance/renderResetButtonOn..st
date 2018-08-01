rendering
renderResetButtonOn: html
	html space.
	html anchor
		callback: [ self resetSmell ];
		class: #ignore;
		with: [ 
					html tbsGlyphIcon iconRepeat.
					html
						space;
						text: 'Reset stats' ]