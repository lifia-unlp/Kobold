actions
getUser: aUsername
	^ self users detect: [ :user | user username = aUsername ] "retona el usuario con el aUserName"