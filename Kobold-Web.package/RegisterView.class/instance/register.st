action
register

	self registerAllowed "si pasa los todos los check"
		ifTrue: 
			[self appManager newUser: self temporaryUser clientName: self clientName. "le envia el nuevo usuario y el nombre de la aplicacion al AppManager para que lo persista (alli se genera el objeto Client que tiene el token"
			self user: self temporaryUser. "para el usuaro ingresado a la vista"
			self navigateTo: (RegisteredHomeView withRoot: self rootView)]. "cambia la vista de componente a RegistereHomeView"
	self repassword: nil  "borra la rpassword ingresada"