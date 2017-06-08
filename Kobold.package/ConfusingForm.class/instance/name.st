accessing
name

	self validationType = #none
		ifTrue: [^'No Validation']
		ifFalse: [^'Late Validation (' , self validationType,' side)']