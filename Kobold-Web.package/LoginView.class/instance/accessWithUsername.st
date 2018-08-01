actions
accessWithUsername
	self user: (self appManager getUser: self logonID). "como el usuario existe lo carga como un usuario en la sesion pasandolo al mensaje user"
	self redirectLoggedUser