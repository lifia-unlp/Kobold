actions
getUserByEmail: anEmail
	^ self users detect: [ :user | user email = anEmail ]