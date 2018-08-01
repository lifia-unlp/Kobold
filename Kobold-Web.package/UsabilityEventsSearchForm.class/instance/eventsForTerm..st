controlling
eventsForTerm: searchString

	^self client events
		select: [:event | event class name asLowercase includesSubstring: searchString]