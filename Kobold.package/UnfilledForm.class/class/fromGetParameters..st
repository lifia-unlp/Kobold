instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		time: (getParameters at: 'time') asNumber;
		yourself