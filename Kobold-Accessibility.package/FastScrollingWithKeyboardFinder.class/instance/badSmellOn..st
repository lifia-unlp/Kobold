bad smells
badSmellOn: events
	| upwards |
	upwards := events allSatisfy: [ :threat | threat upwards ].
	upwards
		ifTrue: [ ^ OverlookedContentforAccessibility upwardsOn: events any url threats: events ]
		ifFalse: [ ^ OverlookedContentforAccessibility downwardsOn: events any url threats: events ]