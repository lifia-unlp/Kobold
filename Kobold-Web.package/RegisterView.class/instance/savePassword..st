accessing
savePassword: value
	self temporaryUser encriptedPassword: (self appManager encript: value salt: self temporaryUser salt ).