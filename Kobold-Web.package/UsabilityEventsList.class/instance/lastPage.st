pagination
lastPage
	^ (self client events size / self eventsPerPage) ceiling