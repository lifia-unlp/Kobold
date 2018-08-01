accessing
valuesRows: t1 
	"	***This is decompiled code.*** 
	No source was available"

	| t2 |
	(t2 := self values keys asSortedCollection) do: [:t3 | t1
			tableRow: 
				[t1 tableData: t3.
				t1 tableData: (self values at: t3) printString]].
	^self