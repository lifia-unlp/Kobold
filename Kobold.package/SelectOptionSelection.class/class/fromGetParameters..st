instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		selectionText: (getParameters at: 'selectionText');
		yourself