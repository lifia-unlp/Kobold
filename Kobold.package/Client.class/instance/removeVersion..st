removing
removeVersion: anAppVersion
	anAppVersion canBeEdited ifTrue: [ 
		self versions remove: anAppVersion]
	