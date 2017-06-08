printing
printOn: aStream

	super printOn: aStream.
	aStream
		nextPutAll: ' "' , self text , '" (' , self keystrokes printString , 'ks)'