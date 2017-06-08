instance creation
fromGetParameters: getParameters

	^(super fromGetParameters: getParameters)
		timeBrowsing: (getParameters at: 'time') asNumber;
		url: (ZnUrl fromString: (getParameters at: 'url'));
		yourself