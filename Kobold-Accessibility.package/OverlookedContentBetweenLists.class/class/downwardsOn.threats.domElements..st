instance creation
downwardsOn: url threats: scrollings domElements:xpathsList
	^(self events: scrollings)
		url: url;
		downwards: true;
		domElements: xpathsList;
		yourself