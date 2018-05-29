initialization
initialize 
	super initialize.
	printer := RefactoringPrinter on: refactoring  for: smell  editable: true.