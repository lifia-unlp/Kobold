initialization
initialize
	super initialize.
	self setDeploymentMode. "Asigan el valor a variablede instancia "
	self view: (UnregisteredHomeView withRoot:self)."Asigan el valor a variablede instancia de view una "