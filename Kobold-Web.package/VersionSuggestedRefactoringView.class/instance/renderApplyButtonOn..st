rendering
renderApplyButtonOn: html
	html tbsButton
		beSubmit;
		beSuccess;
		callback: [ self applyRefactoring ];
		with: [ html tbsGlyphIcon iconCheck.
			html
				space;
				text: 'Apply now' ]