rendering
renderContentOn: html
	html
		tbsForm: [  				"crea un formulario"
			html textInput
				tbsFormControl;
				placeholder: ' Client name';
				value: self clientName;
				callback: [ :value | self clientName: value ].  "el Cliet name se vincula a la variable de instancia de la vista clientName"
			html break.
			html textInput
				tbsFormControl;
				placeholder: ' Username';
				value: self temporaryUser username;
				callback: [ :value | self temporaryUser username: value ]. "el user name se vincula a la variable de instancia del tipo RegisteredClient asignada al inicializar"
			html break.
			html textInput
				tbsFormControl;
				placeholder: ' Email';
				value: self temporaryUser email;
				callback: [ :value | self temporaryUser email: value ]. "el user mail se vincula a la variable de instancia del tipo RegisteredClient asignada al inicializar"
			html break.
			html passwordInput
				tbsFormControl;
				placeholder: ' Password';
				type: 'password';
				callback: [ :value | self savePassword: value ]. "el password se vincula a la variable de instancia de la vista repassword"
			html break.
			html passwordInput
				tbsFormControl;
				placeholder: ' Repeat Password';
				type: 'password';
				callback: [ :value | self saveRePassword: value ].
			html break.
			html tbsButton
				value: 'Register';
				callback: [ self register ];
				bePrimary ]