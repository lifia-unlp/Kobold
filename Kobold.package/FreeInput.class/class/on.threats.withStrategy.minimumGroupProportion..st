instance creation
on: element threats: threats withStrategy: anStrategy minimumGroupProportion: aFloat

	^(self on: element events: OrderedCollection new)
		strategy: anStrategy;
		minimumGroupProportion: aFloat;
		addAllEvents: threats;
		yourself