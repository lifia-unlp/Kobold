events handling
addEvent: usabilityEvent to: finder
	| newSmell domElement |
	domElement := usabilityEvent domElement.
	(self smells
		select: [ :smell | smell events anyOne domElement url host = domElement url host ])
		detect: [ :smell | self event: usabilityEvent belongsIn: smell ]
		ifFound: [ :smell | smell addEvent: usabilityEvent ]
		ifNone: [ newSmell := finder badSmellOn: usabilityEvent inOrderedCollection.
			self smells add: newSmell ]