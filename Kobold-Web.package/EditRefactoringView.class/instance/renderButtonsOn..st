rendering
renderButtonsOn: html
	html tbsButton
		beSuccess;
		beSubmit;
		callback: [ self editRefactoring ];
		with: [ html tbsGlyphIcon iconFloppyDisk.
			html
				space;
				text: 'Save' ].
	html tbsButton
		beDefault;
		callback: [ self removeRefactoring ];
		with: [ html tbsGlyphIcon iconRemove.
			html
				space;
				text: 'Remove' ]