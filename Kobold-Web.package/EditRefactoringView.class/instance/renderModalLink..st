rendering
renderModalLink: html
	(html tbsModalSwitch: 'edit-refactoring')
		onClick: (self editRefactoringModalScript: html);
		with: [ html text: self refactoring name ].
	html space.
	html anchor
		tbsTooltip: self refactoring info direction: #right;
		with: [ html tbsGlyphIcon iconQuestionSign ]