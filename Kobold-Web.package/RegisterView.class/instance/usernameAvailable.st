action
usernameAvailable
"clequea que el nombre de usuario este disponible"
	| available |
	available := (self appManager existUsername: self temporaryUser username) not.
	available ifFalse: [self alert: (ErrorLog message: 'Username is already in use' for: 'RegisterErrors')].
	^available