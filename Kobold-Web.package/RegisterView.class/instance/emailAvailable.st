action
emailAvailable

	| available |
	available := (self appManager existUserWithEmail: self temporaryUser email) not.
	available ifFalse: [self	alert: (ErrorLog message: 'Email is already in use' for: 'RegisterErrors')].
	^available