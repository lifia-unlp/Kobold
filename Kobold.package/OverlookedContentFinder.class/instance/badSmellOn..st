bad smells
badSmellOn: events
	| upwards |
	upwards := events allSatisfy: [ :threat | threat upwards ].
	upwards
		ifTrue: [ ^ OverlookedContent upwardsOn: events any url threats: events ]
		ifFalse: [ ^ OverlookedContent downwardsOn: events any url threats: events ]