instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
		sourceURL: (ZnUrl fromString: (getParameters at: 'sourceURL'));
		targetURL: (ZnUrl fromString: (getParameters at: 'targetURL'));
		formXPath: (getParameters at: 'form[xpath]');
		time: (getParameters at: 'time') asNumber;
		yourself