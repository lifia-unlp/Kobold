rendering
renderTargetVersionsTags: html
	 
	^ (self client versionsWithRefactoring: self refactoring) 
	do: [:version | 
		html tbsBadge class: 'tag-badge'; 
		with: [
			html text: version tag. 
			html space. 
			html anchor 
				callback: [ self removeRefactoringFrom: version];
				with: [ html tbsGlyphIcon iconRemove  ]].
		html space.
	]