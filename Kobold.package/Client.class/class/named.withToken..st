instance creation
named: aName withToken: aToken
	^(self new) 
		name: aName; 
		token: aToken; 
		initializeFile;
		yourself