accessing
averageInputsLength

	^((self events inject: 0
		into: [:totalLength :input | totalLength + input textLength]) / self eventsCount) asFloat floor