rendering
renderUsernameField: html

	html tbsFormGroup: "crea un elemento de grupo para vincular el label"
			[(html textInput) "crea un campo de entrada de email vinculado a logoID"
				tbsFormControl;
				placeholder: ' Username or Email';
				value: self logonID;
				callback: [:value | self logonID: value]]