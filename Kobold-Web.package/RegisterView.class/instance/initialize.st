initialization
initialize
	super initialize.
	self temporaryUser: RegisteredClient new. "crae un RegisteredClint peresosamente lo completa y se lo envia a ApplicationManager para registrarlo"