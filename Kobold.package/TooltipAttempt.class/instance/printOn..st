printing
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' for ' , self waitingTime printString , 'ms'