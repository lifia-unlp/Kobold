testing
event: usabilityEvent belongsIn: aSmell
	^ aSmell events
		anySatisfy: [ :smellEvent | 
			(self similitudeRateBetween: usabilityEvent domElement and: smellEvent domElement)
				> self threshold ]