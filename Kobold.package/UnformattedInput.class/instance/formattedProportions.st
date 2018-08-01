accessing
formattedProportions
	^ self expressions collect: [ :formattedEvents | formattedEvents eventsCount / self eventsCount ]