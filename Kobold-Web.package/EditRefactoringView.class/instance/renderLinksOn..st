rendering
renderLinksOn: html
	(html tbsModalSwitch: 'edit-refactoring')	
		class: 'ignore';
		onClick: (self editRefactoringModalScript: html);
		with: [ html tbsGlyphIcon iconEdit.
			html
				space;
				text: 'Edit' ].
	html space.
	html anchor
		class: 'ignore';
		callback: [ self removeRefactoring ];
		with: [ html tbsGlyphIcon iconRemove.
			html
				space;
				text: 'Remove' ]