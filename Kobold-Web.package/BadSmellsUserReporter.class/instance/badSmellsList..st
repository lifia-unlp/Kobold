rendering
badSmellsList: html

	self client defaultVersion badSmells isEmpty
		ifTrue: [self renderNoBadSmellsMessage: html]
		ifFalse: [self renderBadSmellsList: html].