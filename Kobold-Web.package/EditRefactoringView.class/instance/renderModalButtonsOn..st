rendering
renderModalButtonsOn: html
	html tbsButton
		class: 'kobold-btn';
		beSuccess;
		beSubmit;
		callback: [ self editRefactoring ];
		with: [ html tbsGlyphIcon iconFloppyDisk.
			html
				space;
				text: 'Save' ].
	html tbsButton
		class: 'kobold-btn';
		beDefault;
		callback: [ self removeRefactoring ];
		with: [ html tbsGlyphIcon iconRemove.
			html
				space;
				text: 'Remove' ]