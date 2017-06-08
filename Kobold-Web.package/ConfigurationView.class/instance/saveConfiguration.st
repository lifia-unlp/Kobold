actions
saveConfiguration
	self changePassword
		ifTrue: [ self password = self repassword
				ifTrue: [ self user encriptedPassword: self password ] ].
	password := nil.
	repassword := nil.
	self user client save