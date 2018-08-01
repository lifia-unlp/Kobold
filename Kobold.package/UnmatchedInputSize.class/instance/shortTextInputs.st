accessing
shortTextInputs
	^ self events select: [ :input | input hasShortText ]