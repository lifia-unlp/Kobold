rendering
renderShowIgnoredButtonOn: html
	self ignoredSmellsCount isZero
		ifFalse: [ 
			html anchor
				class: #reporterAction;
				callback: [ self showIgnoredSmells ];
				with: [ 
							html tbsGlyphIcon iconEyeOpen.
							html
								space;
								text: 'Reveal ' , self ignoredSmellsCount printString , ' Ignored Smells' ] ]