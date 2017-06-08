printing
printOn: aStream

	super printOn: aStream.
	self optionChanged ifTrue: [ aStream nextPutAll: ' - changed default option' ]