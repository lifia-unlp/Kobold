actions
existUsername: aUsername

	^self users anySatisfy: [:user | user username = aUsername]