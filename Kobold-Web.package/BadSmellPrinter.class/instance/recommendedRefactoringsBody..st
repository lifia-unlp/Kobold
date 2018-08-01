rendering
recommendedRefactoringsBody: html

	self badSmell suggestedRefactorings do: [ :refactoring | html render: (RefactoringPrinter on: refactoring for: self badSmell) ]