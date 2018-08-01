actions
changeEmail: anEmail

	(self appManager existUserWithEmail: anEmail)
		ifFalse: [self user email: anEmail]