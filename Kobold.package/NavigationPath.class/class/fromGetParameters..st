instance creation
fromGetParameters: getParameters
	| numberOfNavigations newEvent iterator anchor |
	newEvent := super fromGetParameters: getParameters.
	numberOfNavigations := (getParameters at: 'numberOfNodes') asNumber.
	1 to: numberOfNavigations do: [ :n | 
		iterator := n printString.
		anchor := DomElement
			xpath: (getParameters at: 'anchor' , iterator)
			url: (ZnUrl fromString: (getParameters at: 'url' , iterator)).
		newEvent addNavigation: (Navigation from: anchor to: (ZnUrl fromString: (getParameters at: 'targetURL' , iterator))) ].
	^ newEvent