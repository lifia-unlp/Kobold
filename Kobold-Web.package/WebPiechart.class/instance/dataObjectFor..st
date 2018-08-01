accessing
dataObjectFor: t1 
	"	***This is decompiled code.*** 
	No source was available"

	^'{
		        value: ' , (self values at: t1) printString , ',
		        color:"' , self nextColor , '",
		        highlight: "' , self nextHighlightColor , '",
		        label: "' , t1 , '"
		    }'