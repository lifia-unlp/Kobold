instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
		url: (ZnUrl fromString: (getParameters at: 'url'));
		time: (getParameters at: 'time') asNumber;
		initialTop: (getParameters at: 'initialTop') asNumber;
		finalTop: (getParameters at: 'finalTop') asNumber;
		steps: (getParameters at: 'steps') asNumber;
		"xpath_final xpath_inicial para crear los DocElemnt"
		yourself