actions
getUser: aUsername
	^ self users detect: [ :user | user username = aUsername ]