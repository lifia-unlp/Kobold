rendering
renderRecommendedRefactorings: html
	html heading
		level: 4;
		with: 'Recommended Refactorings'.

	self smell suggestedRefactorings
		do: [ :refactoring | 
			html
				render: (RefactoringPrinter on: refactoring for: self smell editable: true) ]