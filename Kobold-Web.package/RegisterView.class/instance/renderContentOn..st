rendering
renderContentOn: html
	html
		tbsForm: [ html textInput
				tbsFormControl;
				placeholder: ' Client name';
				value: self clientName;
				callback: [ :value | self clientName: value ].
			html break.
			html textInput
				tbsFormControl;
				placeholder: ' Username';
				value: self temporaryUser username;
				callback: [ :value | self temporaryUser username: value ].
			html break.
			html textInput
				tbsFormControl;
				placeholder: ' Email';
				value: self temporaryUser email;
				callback: [ :value | self temporaryUser email: value ].
			html break.
			html passwordInput
				tbsFormControl;
				placeholder: ' Password';
				type: 'password';
				callback: [ :value | self savePassword: value ].
			html break.
			html passwordInput
				tbsFormControl;
				placeholder: ' Repeat Password';
				type: 'password';
				callback: [ :value | self saveRePassword: value ].
			html break.
			html textInput
				placeholder: 'Application URL: http://my-app.com';
				tbsFormControl;
				on: #url of: self.
			html break.
			html tbsButton
				value: 'Register';
				callback: [ self register ];
				bePrimary ]