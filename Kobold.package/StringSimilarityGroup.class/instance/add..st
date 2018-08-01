accessing
add: t1 
	"	***This is decompiled code.*** 
	No source was available"

	(self admits: t1)
		ifTrue: [self strings add: t1]
		ifFalse: [self notAdmittedError: t1].
	^self