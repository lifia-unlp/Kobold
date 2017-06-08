printing
printOn: aStream

	super printOn: aStream.
	self failed
		ifTrue: 
			[aStream nextPutAll: ' (failed with ' , self validationType asString
						, ' validation)']
		ifFalse: [aStream nextPutAll: ' (successful)'].
	self time
		ifNotNil: 
			[aStream nextPutAll:' after '.
			self time printOn: aStream.
			aStream nextPutAll: 'ms ']