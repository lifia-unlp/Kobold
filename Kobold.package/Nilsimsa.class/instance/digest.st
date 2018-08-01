api
digest
	self complete
		ifFalse: [ self computeDigest ].
	^ digest