actions
getUserByEmail: anEmail
	^ self users detect: [ :user | user email = anEmail ] "retona el usuario con el anEmail"