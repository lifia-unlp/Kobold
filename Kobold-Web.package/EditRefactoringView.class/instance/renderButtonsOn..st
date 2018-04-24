rendering
renderButtonsOn: html
	html tbsColumn: [ 
		html tbsButton 
		beSuccess;
		beSubmit;
		callback: [ self editRefactoring ];
		with: [ html tbsGlyphIcon iconEdit.
					html
						space;
						text: 'Edit' ] 
	] 
	mediumSize: 2.
	html tbsColumn: [ 
		html tbsButton 
			beDefault;
			callback: [ self removeRefactoring ];
			with: [ html tbsGlyphIcon iconRemove.
				html space; text: 'Remove'  ] 
		] 
	mediumSize: 2.
	 
	