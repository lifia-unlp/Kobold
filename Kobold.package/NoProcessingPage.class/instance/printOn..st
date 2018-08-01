printing
printOn: aStream
	aStream nextPutAll: self class name , ' on ' , self targetURL asString