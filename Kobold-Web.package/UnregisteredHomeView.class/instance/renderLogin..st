rendering
renderLogin: html

	(html heading)
		level: 4;
		with: 'Login'.
	html render: (LoginView withRoot: self rootView) "llama a un componente LoginView y le pasa el componente de aplicacion"