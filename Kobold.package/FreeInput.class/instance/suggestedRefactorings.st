accessing
suggestedRefactorings
	^ OrderedCollection
		with: (AddAutocomplete on: self domElement values: self frequentValues)