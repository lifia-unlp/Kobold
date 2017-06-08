accessing
clientCalled: aString
	^ (self users detect: [ :user | user called: aString ]) client