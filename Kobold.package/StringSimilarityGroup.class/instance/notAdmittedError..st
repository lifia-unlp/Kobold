error handling
notAdmittedError: t1 
	"	***This is decompiled code.*** 
	No source was available"

	self error: 'The string ''' , t1 , ''' does not belong in StringSimilarityGroup for ''' , self representative , ''''.
	^self