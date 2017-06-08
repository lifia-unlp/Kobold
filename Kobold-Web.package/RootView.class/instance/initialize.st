initialization
initialize
	super initialize.
	self setDeploymentMode.
	self view: (UnregisteredHomeView withRoot:self).