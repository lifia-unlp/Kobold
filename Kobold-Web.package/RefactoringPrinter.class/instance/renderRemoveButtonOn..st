rendering
renderRemoveButtonOn: html
	html
		paragraph: [ html anchor
				callback: [ self smell
						removeRefactoring: (self smell appliedRefactoringOfKind: self refactoring class) ];
				with: [ html tbsGlyphIcon iconTrash.
					html space.
					html text: 'Remove Refactoring' ] ]