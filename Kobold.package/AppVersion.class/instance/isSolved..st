accessing
isSolved: aBadSmell
	self changes
		detect: [ :change | change smell = aBadSmell ]
		ifFound: [ ^ true ]
		ifNone: [ ^ false ]