instance creation
withRoot: view  "las vistas se crean para un componente de aplicacion que se pasan una a otra"

	^(self new)
		rootView: view;
		yourself