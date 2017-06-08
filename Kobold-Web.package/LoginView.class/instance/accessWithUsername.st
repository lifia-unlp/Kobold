actions
accessWithUsername
	self user: (self appManager getUser: self logonID).
	self redirectLoggedUser