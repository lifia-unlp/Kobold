rendering
renderAppliedRefactorings: html
	html heading
		level: 4;
		with: 'Applied Refactorings'.
		
	self smell appliedRefactorings do: [ :ref | html render: (RefactoringPrinter on: ref for: (self smell) editable: false) ] 