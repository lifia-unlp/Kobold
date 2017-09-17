instance creation
fromGetParameters: getParameters
	^ (super fromGetParameters: getParameters)
		text: (getParameters at: 'text');
		time: (getParameters at: 'time') asNumber;
		keystrokes: (getParameters at: 'keystrokes') asNumber;
		correction: (getParameters at: 'correction') = 'true';
		textWidth: (getParameters at: 'textWidth') asNumber;
		inputLength: (getParameters at: 'fieldWidth') asNumber;
		yourself