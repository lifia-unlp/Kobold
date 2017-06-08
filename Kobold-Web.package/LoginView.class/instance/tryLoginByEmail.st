actions
tryLoginByEmail
	(self appManager existUserWithEmail: self logonID andPassword: self password)
		ifTrue: [ self accessWithEmail.
			^ true ].
	^ false