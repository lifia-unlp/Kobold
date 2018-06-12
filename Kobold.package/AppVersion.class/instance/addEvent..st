accessing
addEvent: anUsabilityEvent
	| smellsFinders |
	self usabilityEvents add: anUsabilityEvent.
	smellsFinders := self findersFor: anUsabilityEvent.
	smellsFinders do: [ :finder | finder addEvent: anUsabilityEvent ].