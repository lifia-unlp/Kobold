actions
newUser: aUser clientName: aName
	aUser client: (Client named: aName).
	self users add: aUser.
	self finder addClient: aUser client.
	self save