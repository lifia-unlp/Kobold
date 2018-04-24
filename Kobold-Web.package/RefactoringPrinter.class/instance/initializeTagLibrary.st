rendering
initializeTagLibrary
	^ String streamContents:  [ :stream |
		stream << 'var parameters = {persist: false,valueField: ''name'', labelField: ''tag'', 
		searchField: ["name"], options: ['.
		
		self client versions reject: [ :version | version hasAppliedRefactoringOfKind: (self refactoring) on: (self smell) ]
		thenDo: [ :version | stream << (version asJson, ',')].		
		
		stream <<  ']};' 	
	].