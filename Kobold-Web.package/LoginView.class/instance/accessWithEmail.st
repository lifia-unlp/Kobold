actions
accessWithEmail
	self user: (self appManager getUserByEmail: self logonID)."como el usuario existe lo carga como un usuario en la sesion pasandolo al mensaje usar"
	self inspect.
	self redirectLoggedUser
	