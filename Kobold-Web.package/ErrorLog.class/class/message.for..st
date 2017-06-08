instance creation
message: aString for: aDestination
	^ self new
		message: aString;
		destination: aDestination;
		yourself