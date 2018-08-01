accessing
admits: t1 
	"	***This is decompiled code.*** 
	No source was available"

	self isEmpty ifTrue: [^true].
	^self comparisonStrategy compare: t1 against: self representative