accessing
changeFor: aBadSmell
	^ self changes detect: [ :change | change smell = aBadSmell ] ifNone: [ nil ]