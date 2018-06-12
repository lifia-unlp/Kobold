controlling
eventsForTerm: searchString

	^self client defaultVersion events
		select: [:event | event class name asLowercase includesSubstring: searchString]