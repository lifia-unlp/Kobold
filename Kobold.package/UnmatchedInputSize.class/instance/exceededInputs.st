accessing
exceededInputs
	^ self events select: [ :input | input exceededText ]