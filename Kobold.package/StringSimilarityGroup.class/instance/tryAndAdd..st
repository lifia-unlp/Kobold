accessing
tryAndAdd: t1 
	"	***This is decompiled code.*** 
	No source was available"

	[self add: t1]
		on: Error do: [nil].
	^self