actions
login
	self tryLoginByUsername
		ifFalse: [ self tryLoginByEmail
				ifFalse: [ self logs add: (ErrorLog message: 'Invalid User or Password' for: 'LoginErrors') ] ]