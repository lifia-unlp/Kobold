rendering
renderSuggestedRefactorings: refactoringCollection on: html
	html
		tbsRow: [ html
				tbsColumn: [ html heading
						level: 4;
						with: 'Recommended Refactorings'.
					refactoringCollection
						do: [ :ref | 
							html
								render:
									(VersionSuggestedRefactoringView
										version: self version
										refactoring: ref
										smell: self badSmell) ] ]
				mediumSize: 8 ]