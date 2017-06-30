actions
existUser: aUsername withPassword: aPassword
	^ self users
		anySatisfy: [ :user | 
			user username = aUsername
				and: [ user encriptedPassword = (self encript: aPassword salt: user salt) ] ]