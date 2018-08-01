rendering
recommendedRefactorings: html
	self badSmell suggestedRefactorings
		do: [ :refactoring | 
			html
				strong: refactoring class name;
				space;
				text: refactoring info;
				space;
				anchor: 'Learn more...'.
			html
				unorderedList: [ self badSmell refactorings
						do: [ :appliedRefactoring | 
							html
								listItem: [ html text: appliedRefactoring class name.
									html space.
									html anchor
										callback: [ self badSmell removeRefactoring: appliedRefactoring ];
										with: [ html tbsGlyphIcon iconTrash ] ] ] ].
			html
				form: [ html submitButton
						callback: [ self badSmell applyRefactoring: refactoring ];
						with: 'Apply now' ] ]