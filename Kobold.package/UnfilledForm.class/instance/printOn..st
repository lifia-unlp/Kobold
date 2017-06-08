printing
printOn: aStream

	super printOn: aStream.
	self time ifNotNil:[
	aStream nextPutAll: '  after ' .
	self time printOn: aStream.
	aStream nextPutAll: 'ms '.]