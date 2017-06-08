comparing
matchingRate: another

	| elems1 elems2 el1 el2 size break |
	elems1 := self basicElements.
	elems2 := another  basicElements.
	size := 0.
	break := false.
	[break not] whileTrue: 
			[el1 := elems1 remove: elems1 last.
			el2 := elems2 remove: elems2 last.
			el1 = el2 ifTrue: [size := size + 1] ifFalse: [break := true].
			(elems1 isEmpty or: [elems2 isEmpty]) ifTrue: [break := true]].
	^size