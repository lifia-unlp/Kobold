rendering
modalContents: html
	| refactoringsNotApplied |
	self renderHeader: html.
	self renderDetails: html.
	refactoringsNotApplied := self badSmell suggestedRefactorings
		reject:
			[ :ref | self version hasAppliedRefactoringOfKind: ref on: self badSmell ].
	refactoringsNotApplied
		ifNotEmpty: [ self renderSuggestedRefactorings: refactoringsNotApplied on: html ]