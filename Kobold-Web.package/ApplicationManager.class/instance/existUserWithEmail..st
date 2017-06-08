actions
existUserWithEmail: anEmail

	^self users anySatisfy: [:user | user email = anEmail]