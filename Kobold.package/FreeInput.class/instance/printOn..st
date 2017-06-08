printing
printOn: aStream

	aStream nextPutAll: self class name, ' on '.
	self events any domElement printOn: aStream