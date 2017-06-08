actions
tryLoginByUsername

	(self appManager existUser: self logonID withPassword: self password)
		ifTrue: 
			[self accessWithUsername.
			^true].
	^false