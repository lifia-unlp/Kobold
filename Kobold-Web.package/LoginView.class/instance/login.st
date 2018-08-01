actions
login
	self tryLoginByUsername "intenta logearlo con el nombre de usuario"
		ifFalse: [ self tryLoginByEmail "si no lo logra intenta con el email"
				ifFalse: [ self logs add: (ErrorLog message: 'Invalid User or Password' for: 'LoginErrors') ] ]