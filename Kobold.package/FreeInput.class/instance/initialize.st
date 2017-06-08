initialize-release
initialize

	super initialize.
	self hasPasswords: false.
	self hasPlainText: false.
	self groups: OrderedCollection new