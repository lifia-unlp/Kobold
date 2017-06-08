accessing
addEvent: aUsabilityEvent
	super addEvent: aUsabilityEvent.
	self hasPasswords: aUsabilityEvent isPassword.
	self hasPlainText: aUsabilityEvent isPassword not.
	self addToGroup: aUsabilityEvent text