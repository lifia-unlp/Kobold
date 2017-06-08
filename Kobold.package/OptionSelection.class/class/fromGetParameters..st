instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		selectionIndex: (getParameters at: 'selectionIndex') asNumber;
		optionChanged: (getParameters at: 'optionChanged') = 'true';
		yourself