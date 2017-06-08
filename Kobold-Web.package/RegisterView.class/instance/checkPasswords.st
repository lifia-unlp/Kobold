action
checkPasswords

	| match |
	match := self temporaryUser encriptedPassword = self repassword.
	match ifFalse: [self alert: (ErrorLog message: 'Passwords do not match' for: 'RegisterErrors')].
	^match