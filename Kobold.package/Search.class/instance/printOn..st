printing
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: ' (term= "' , self searchQuery asString , '" with'.
	self foundResults ifFalse: [ aStream nextPutAll: ' no' ].
	aStream nextPutAll: ' results)'.
	self resultFollowed ifTrue: [ aStream nextPutAll: ' clicked.'. ]