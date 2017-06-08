instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		waitingTime: (getParameters at: 'waitingTime') asNumber;
		yourself