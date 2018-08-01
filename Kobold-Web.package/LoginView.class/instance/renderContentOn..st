rendering
renderContentOn: html

	html tbsForm with:  "crea un fomularion"
			[self renderUsernameField: html. "crea un campo de entrada de email vinculado a logoID"
			self renderPasswordField: html. "crea un campo de entrada de email vinculado con el password"
			self renderLogs: html forClass: 'LoginErrors'.
			self renderLoginButton: html] "crea un boton de submit vinculado al metodo login"