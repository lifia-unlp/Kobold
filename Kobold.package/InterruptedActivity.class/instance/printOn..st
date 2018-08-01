printing
printOn: aStream

	aStream nextPutAll: self class name , ' on ', self url asString.