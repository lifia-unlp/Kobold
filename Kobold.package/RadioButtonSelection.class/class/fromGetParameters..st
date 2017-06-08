instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		name: (getParameters at: 'name');
		yourself