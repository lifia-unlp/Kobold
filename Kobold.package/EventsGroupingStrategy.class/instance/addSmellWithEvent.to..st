events handling
addSmellWithEvent: usabilityEvent to: finder
	self smells add: (finder badSmellOn: usabilityEvent inOrderedCollection)