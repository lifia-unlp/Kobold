action
register

	self registerAllowed
		ifTrue: 
			[self appManager newUser: self temporaryUser clientName: self clientName.
			self user: self temporaryUser.
			self navigateTo: (RegisteredHomeView withRoot: self rootView)].
	self repassword: nil