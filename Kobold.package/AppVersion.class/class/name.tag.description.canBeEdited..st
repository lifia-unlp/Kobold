as yet unclassified
name: aName tag: aTag description: aDescription canBeEdited: aBoolean

	^ self new
		initialize; 
		versionName: aName;
		tag: aTag;
		description: aDescription;
		canBeEdited: aBoolean;
		yourself  