adding
addEvent: anUsabilityEvent
	| smellsFinders |
	self events add: anUsabilityEvent.
	smellsFinders := self findersFor: anUsabilityEvent.
	smellsFinders do: [ :finder | finder addEvent: anUsabilityEvent ].
	self recalculateBadSmells: smellsFinders