accessing
suggestedRefactorings
	^ OrderedCollection with: (TurnAttributeIntoLink on: self domElement urlString: '/')