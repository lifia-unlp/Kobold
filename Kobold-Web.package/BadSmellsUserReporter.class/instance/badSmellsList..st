rendering
badSmellsList: html

	self client badSmells isEmpty
		ifTrue: [self renderNoBadSmellsMessage: html]
		ifFalse: [self renderBadSmellsList: html].