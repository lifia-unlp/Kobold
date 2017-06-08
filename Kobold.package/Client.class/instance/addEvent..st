accessing
addEvent: event
	| smellsFinders |
	self events add: event.
	smellsFinders := self findersFor: event.
	smellsFinders do: [ :finder | finder addEvent: event ].
	self persistEvents
		ifTrue: [ self persistEvent: event ].
	self recalculateBadSmells: smellsFinders