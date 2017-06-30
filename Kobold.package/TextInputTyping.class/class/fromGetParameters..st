instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
		text: (getParameters at: 'text');
		time: (getParameters at: 'time') asNumber;
		keystrokes: (getParameters at: 'keystrokes') asNumber;
		correction: (getParameters at: 'correction') = 'true';
		yourself