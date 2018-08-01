action
registerAllowed
"chequea que el nombre y el email esten disponibles y que las constraseñas sean iguales"
	^self checkAvailability & self checkPasswords