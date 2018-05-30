rendering
renderSuggestedRefactorings: html
	html
		tbsRow: [ html
				tbsColumn: [ html heading
						level: 4;
						with: 'Recommended Refactorings'.
					self badSmell suggestedRefactorings
						reject: [ :ref | self version hasAppliedRefactoringOfKind: ref on: self badSmell ]
						thenDo: [ :ref | 
							html
								render: (VersionSuggestedRefactoringView version: self version refactoring: ref smell: self badSmell) ] ]
				mediumSize: 8 ]