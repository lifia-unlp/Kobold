accessing
unfilledForms
	^ self events select: [ :event | event unfilled ]