accessing
dataObjects
	"	***This is decompiled code.*** 
	No source was available"

	^(self values keys inject: '' into: [:t1 :t2 | t1 , (self dataObjectFor: t2) , ',']) allButLast