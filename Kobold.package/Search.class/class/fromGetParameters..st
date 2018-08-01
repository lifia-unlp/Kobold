instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
		searchQuery: (getParameters at: 'searchQuery') asSymbol;
		time: (getParameters at: 'time') asNumber;
		foundResults: (getParameters at: 'foundResults') = 'true';
		resultFollowed: (getParameters at: 'resultFollowed') = 'true';
		yourself