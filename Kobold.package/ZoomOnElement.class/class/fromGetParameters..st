instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)

		zoomAmount: (getParameters at: 'zoomAmount') asNumber;
		textSize: (getParameters at: 'textSize') asNumber;
		
		yourself