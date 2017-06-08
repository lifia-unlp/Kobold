rendering
renderConfigurationForm: html
	html
		tbsForm: [ 
			html
				tbsFormGroup: [ 
					html text: 'Client name: '.
					html textInput tbsFormControl
						value: self client name;
						callback: [ :value | self client name: value ].
					html text: 'Email '.
					html textInput tbsFormControl
						value: self user email;
						callback: [ :value | self changeEmail: value ].
					html heading
						level: 4;
						with: 'Change Password'.
					html text: 'Old Password: '.
					html passwordInput
						tbsFormControl;
						callback: [ :value | self checkPassword: (self encriptPassword: value) ].
					html text: 'New Password: '.
					html passwordInput
						tbsFormControl;
						callback: [ :value | self password: (self encriptPassword: value) ].
					html text: 'Repeat new password: '.
					html passwordInput
						tbsFormControl;
						callback: [ :value | self repassword: (self encriptPassword: value) ] ].
			html tbsButton
				bePrimary;
				callback: [ self saveConfiguration ];
				with: 'Save' ]