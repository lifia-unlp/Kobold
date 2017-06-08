instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		sourceURL: (ZnUrl fromString: (getParameters at: 'sourceURL'));
		targetURL: (ZnUrl fromString: (getParameters at: 'targetURL'));
		time: (getParameters at: 'time') asNumber;
		yourself