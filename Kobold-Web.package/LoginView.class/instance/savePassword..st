accessing
savePassword: value

	self user
		encriptedPassword: (self appManager encript: value salt: self user salt)