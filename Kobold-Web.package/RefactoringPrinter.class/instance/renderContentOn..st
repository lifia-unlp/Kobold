rendering
renderContentOn: html
	html script: self initializeTagLibrary.
	html div
		class: #well;
		with: [ 
			html tbsFormGroup: [self renderDescriptionOn: html].
			self renderRefactoringFormOn: html
		 ].
		