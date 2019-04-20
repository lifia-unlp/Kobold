accessing
smellWithId: aString
	^ self allSmellsClasses detect: [ :smellClass | smellClass smellId = aString asNumber ]