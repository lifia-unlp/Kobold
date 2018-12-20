instance creation
newUser: aUser clientName: aName url: aString
	aUser
		client: (Client named: aName url: aString);
		save