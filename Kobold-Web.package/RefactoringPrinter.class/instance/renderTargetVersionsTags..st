rendering
renderTargetVersionsTags: html
	 
	^ (self client versionsWithRefactoring: self refactoring on: self smell) 
	do: [:version | 
		html tbsBadge class: 'tag-badge'; 
		with: (version tag). 
		html anchor 
			callback: [ 
				version removeRefactoring: self refactoring on: self smell. 
				self client save 
			];
			with: [ html tbsGlyphIcon iconTrash  ].
		html space.
	]