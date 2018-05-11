instance creation
named: aName url: aString
	^ self basicNew
		name: aName;
		url: aString;
		initialize;
		yourself