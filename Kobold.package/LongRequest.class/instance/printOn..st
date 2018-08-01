printing
printOn: aStream
	| source target |
	self sourceURL path notEmpty
		ifTrue: [ source := self sourceURL path ]
		ifFalse: [ source := '/' ].
	self targetURL path notEmpty
		ifTrue: [ target := self targetURL path ]
		ifFalse: [ target := '/' ].
	super printOn: aStream.
	aStream nextPutAll: ' ' , source , ' to ' , target , ' in '.
	self time printOn: aStream.
	aStream nextPutAll: 'ms '.
	self formXPath ifNotNil: [ aStream << ('from form' , self formXPath) ]