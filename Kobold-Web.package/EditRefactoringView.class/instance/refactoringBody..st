rendering
refactoringBody: html
	| printer |
	printer := (RefactoringPrinter on: self refactoring for: self smell editable: true).  
	html tbsFormGroup: [self refactoringTitle: html].
	html
		tbsForm: [ 
			html tbsFormGroup: [printer renderParameterFieldsOn: html].
			html tbsFormGroup: [ printer renderCodeButtonOn: html ].
			html tbsFormGroup: [ self renderModalButtonsOn: html ] ]