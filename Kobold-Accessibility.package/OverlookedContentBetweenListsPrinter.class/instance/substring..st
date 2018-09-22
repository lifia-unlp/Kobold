as yet unclassified
substring: aString
|index temp1 temp2 sz arr str|
      arr:= aString substrings:','.
      sz := arr size.
      "temp1 := arr first: (sz - index +1).
      index := temp1 lastIndexOf: aDelimiter.
      sz :=temp1 size.
      temp2 := temp1 first: (sz - index).
      str := temp2 asString.
      ^str."
^arr asOrderedCollection at:2. 

