accessing
saveRePassword: value
	self repassword: (self appManager encript: value salt: self temporaryUser salt ).