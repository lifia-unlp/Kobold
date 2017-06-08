accessing
renderOn: t1 
	"	***This is decompiled code.*** 
	No source was available"

	| t2 |
	t2 := self identifier.
	(t1 canvas) id: 'pie' , t2; width: 150; height: 150.
	t1 script: ' var ctx' , t2 , ' = $("#pie' , t2 , '").get(0).getContext("2d");
		var data' , t2 , ' = [  ' , self dataObjects , '];'.
	^self