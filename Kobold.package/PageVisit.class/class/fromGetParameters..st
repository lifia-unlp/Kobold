instance creation
fromGetParameters: getParameters
	| numberOfInterruptions newEvent iterator interruptionObject |
	newEvent := super fromGetParameters: getParameters.
	numberOfInterruptions := (getParameters at: 'numOfInterruptions') asNumber.
	newEvent startPageVisit: (getParameters at: 'startPageVisit') asNumber.
	newEvent
		url: (ZnUrl fromString: (getParameters at: 'url'));
		interrupted: numberOfInterruptions > 0.
	1 to: numberOfInterruptions do: [ :n | 
		iterator := n printString.
		interruptionObject := Interruption new.
		interruptionObject duration: (getParameters at: iterator , '[duration]') asNumber.
		interruptionObject startTime: (getParameters at: iterator , '[startTime]') asNumber.
		newEvent addInterruption: interruptionObject ].
	^ newEvent