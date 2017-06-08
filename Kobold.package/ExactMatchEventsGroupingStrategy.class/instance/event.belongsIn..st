events handling
event: usabilityEvent belongsIn: aSmell
	^ aSmell events
		anySatisfy: [ :smellEvent | usabilityEvent domElement = smellEvent domElement ]