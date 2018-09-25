printing
printOn: aStream
	
	super printOn: aStream.
	aStream nextPutAll: ' on Lists Navegation'.
	self listElement printOn: aStream