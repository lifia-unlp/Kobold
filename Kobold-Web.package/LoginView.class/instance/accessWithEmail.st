actions
accessWithEmail
	self user: (self appManager getUserByEmail: self logonID).
	self redirectLoggedUser