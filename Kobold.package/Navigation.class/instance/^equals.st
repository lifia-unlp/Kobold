comparing
= otherNavigation
	^ self anchor xpath printString = otherNavigation anchor xpath printString
		and: [ self url = otherNavigation url ]