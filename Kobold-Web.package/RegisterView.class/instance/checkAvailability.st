action
checkAvailability
"chequea que esten disponiblel el nombre de usuario y el email"
	^self usernameAvailable and: [self emailAvailable]