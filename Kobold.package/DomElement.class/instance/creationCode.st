scoring map
creationCode
	|code|
	code := ReadWriteStream on: ''.
	code nextPutAll: 'DomElement', String cr.
	code nextPutAll: '   xpath:', '''',self xpath,'''', String cr.
	code nextPutAll: '   content:', '''',self content,'''', String cr.
	code nextPutAll: '   html:', '''',self html,'''', String cr.
	code nextPutAll: '   parentsList:', '''',self parentsList,'''', String cr.
	code nextPutAll: '   url:', '''',self url printString,'''', String cr.
	code nextPutAll: '   boundingBox:', '''',self boundingBox printString,'''', String cr.
	^code contents