actions
existUserWithEmail: anEmail andPassword: aPassword
	^ self users
		anySatisfy: [ :user | 
			user email = anEmail
				and: [ user encriptedPassword = (self encript: aPassword salt: user salt) ] ]