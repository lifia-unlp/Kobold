rendering
renderIgnoreButtonOn: html
	html anchor
		callback: [ self ignoreSmell ];
		class: #ignore;
		with: [ 
					html tbsGlyphIcon iconBanCircle.
					html
						space;
						text: 'Ignore' ]